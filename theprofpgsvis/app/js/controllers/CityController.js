/* Setup blank page controller */
angular.module('MetronicApp').controller('CityController', function($rootScope, $scope, settings, $http) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();
    });
    $scope.property_cities = [];
    $scope.error;
    $scope.property_city;

    $scope.classModal = function(key = -1) {
        var form = '<form ng-submit="foo()" id="frmCity" name="frmCity" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Class Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.property_cities[key].name+'" class="form-control" name="class" id="class"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="class" id="class"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                        </div>\
                    </form>';
            form = $(form);
        bootbox.confirm({
            title: "Add New Class",
            message: form,
            callback: function(res) {
                if (res){
                    $scope.property_city = $('#frmCity')[0]['elements'].class.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.property_cities[key].name = $scope.property_city;
                        $scope.$apply();
                        $scope.updateCity($scope.property_cities[key].id);
                    }
                    else {
                        // New
                        $scope.addCity();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get('https://svisapi.theprofessionals.com.pg/public/api/v1/property_city').success(function(property_cities) {
            $scope.property_cities = property_cities.data;
            console.log($scope.property_cities);
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();

    // Delete
    $scope.deleteCity = function(index, id) {
        console.log(index, id);

        $http.delete('https://svisapi.theprofessionals.com.pg/public/api/v1/property_city/' + id)
            .success(function() {
                $scope.property_cities.splice(index, 1);
            });;
    }

    // Add
    $scope.addCity = function() {
 
        $http.post('https://svisapi.theprofessionals.com.pg/public/api/v1/property_city', {
            name: $scope.property_city
        }).success(function(response) {

            $scope.property_cities.push(response.data);
            console.log($scope.property_city);
            $scope.property_city = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateCity = function(id){
      $http.put('https://svisapi.theprofessionals.com.pg/public/api/v1/property_city/' + id, {
            name: $scope.property_city
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
