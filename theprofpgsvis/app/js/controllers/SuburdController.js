/* Setup blank page controller */
angular.module('MetronicApp').controller('SuburdController', function($rootScope, $scope, settings, $http, $compile) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax();
    });
    

    $scope.property_suburbs = [];
    $scope.property_cities = [];
    $scope.error;
    $scope.property_suburb;
    $scope.property_suburb_city_selected;

    $scope.suburbModal = function(key = -1) {
        
        
        
            // For <option> purposes data for city
            $scope.property_city_options = [ $scope.property_cities.length ];
            for(i = 0; i < $scope.property_cities.length; i++){
                $scope.property_city_options[ i ] = {
                    id :  $scope.property_cities[i].id,
                    label : $scope.property_cities[i].name
                };
                if(key > -1) {
                    if($scope.property_suburbs[key].city_id == $scope.property_cities[i].id) {
                        $scope.property_suburb_city_selected = $scope.property_city_options[ i ];
                    }
                }
            }
        var templateString = '<form id="frmSuburb" role="form" class="form-horizontal" ng-controller="SuburdController">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Suburb Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                templateString +=       '<input type="text" value="'+$scope.property_suburbs[key].suburb+'" class="form-control" name="suburb"> </div>';
            }
            else {
                templateString +=        '<input type="text" class="form-control" name="suburb"> </div>';    
            }
            templateString +=       '</div>\
                                </div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">City</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            // if(key > -1) {
                templateString +=                 '<select name="city" ng-model="property_suburb_city_selected" ng-options="item as item.label for item in property_city_options track by item.id" class="form-control">\
                                                    </select>';
            // }
            // else {
            //     templateString +=                 '<select name="city" class="form-control">\
            //                                 <option ng-repeat="(key, value) in property_cities" value="{{ value.id }}">\
            //                                     {{ value.name  }}\
            //                                 </option>\
            //                             </select>';    
            // }
            templateString +=                 '</div>\
                                </div>\
                            </div>\
                        </div>\
                    </form>';
        var form = $compile(templateString)($scope);
        bootbox.confirm({
            title : "Add New Suburb",
            message : form,
            callback : function(res) {
                if (res){
                    $scope.property_suburb = $('#frmSuburb')[0]['elements'].suburb.value;
                    $scope.property_suburb_city = $('#frmSuburb')[0]['elements'].city.options[ $('#frmSuburb')[0]['elements'].city.selectedIndex ].text;
                    $scope.property_suburb_city_id = $('#frmSuburb')[0]['elements'].city.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.property_suburbs[key].suburb = $scope.property_suburb;
                        $scope.property_suburbs[key].city = $scope.property_suburb_city;

                        $scope.$apply();
                        $scope.updateSuburb($scope.property_suburbs[key].id);
                    }
                    else {
                        // New
                        $scope.addSuburb();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get('https://svisapi.theprofessionals.com.pg/public/api/v1/property_suburb').success(function(property_suburbs) {
            $scope.property_suburbs = property_suburbs.data;
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();

    // Get All City
    $scope.get_cities = function() {
        $http.get('https://svisapi.theprofessionals.com.pg/public/api/v1/property_city').success(function(property_cities) {
            $scope.property_cities = property_cities.data;
        }).error(function(error) {
            $scope.error = error;
        })
    };  
    $scope.get_cities();

    // Delete
    $scope.deleteSuburb = function(index, id) {
        console.log('https://svisapi.theprofessionals.com.pg/public/api/v1/property_suburb/' + id);
        $http.delete('https://svisapi.theprofessionals.com.pg/public/api/v1/property_suburb/' + id)
            .success(function() {
                console.log('deleted');
                $scope.property_suburbs.splice(index, 1);
            });;
    }

    // Add
    $scope.addSuburb = function() {
        $http.post('https://svisapi.theprofessionals.com.pg/public/api/v1/property_suburb', {
            name: $scope.property_suburb,
            city_id : $scope.property_suburb_city_id
        }).success(function(response) {
            var x = {
                suburb : $scope.property_suburb,
                city: $('#frmSuburb')[0]['elements'].city.options[ $('#frmSuburb')[0]['elements'].city.selectedIndex ].text
            }
            $scope.property_suburbs.unshift(x);
            $scope.property_suburb = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateSuburb = function(id){
      $http.put('https://svisapi.theprofessionals.com.pg/public/api/v1/property_suburb/' + id, {
            name: $scope.property_suburb,
            city_id : $scope.property_suburb_city_id
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
