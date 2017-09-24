angular.module('MetronicApp').controller('ValuationsController', 
    function($rootScope, $scope, $http, settings, $stateParams) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        $scope.data = [];
        $scope.valuations = [];
        $scope.valuation = [];
        $scope.property_id = $stateParams.property_id;
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
                if(error.error == "token_expired")
                    $rootScope.logout();
            })
        };
        $scope.init();


        // From Reports
        $scope.showResult = function(property_id) {
            $scope.hasActions = false;
            var str;

            if(property_id != null) {
                str = 'id='+ property_id;
            }
            else {
                str = Object.keys($scope.data).map(function(key){ 
                    if(encodeURIComponent($scope.data[key]) !== 'undefined'){
                        return encodeURIComponent(key) + '=' + encodeURIComponent($scope.data[key]); 
                    }
                }).join('&');    
            }
            $http.get($rootScope.apiURL + 'v1/property/param/'+ str +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                console.log(response);
                if(response.length == '0') {
                    alert('No result');
                }
                else if(response.length > 1) {
                    $scope.multi_property_results = response;
                    $scope.multipleResultsReady = true;
                }
                else {
                    for (var i = 0; i < response.length; i++) {
                        $scope.property_id = response[i].id;
                        $scope.data.code = response[i].code;
                        $scope.data.description = response[i].description;
                        $scope.data.property_use_selected = response[i].property__use;
                        $scope.data.property_class_selected = response[i].property__class;
                        $scope.data.property_lease_type_selected = response[i].property__lease__type;
                        $scope.data.property_city_selected = response[i].property__city;
                        $scope.data.property_suburb_selected = response[i].property__suburb;
                        $scope.data.port = response[i].port;
                        $scope.data.sec = response[i].sec;
                        $scope.data.lot = response[i].lot;
                        $scope.data.unit = response[i].unit;
                        $scope.data.land_value = response[i].land_value;
                        $scope.data.land_component = response[i].land_component;
                        $scope.data.improvement_component = response[i].improvement_component;
                        $scope.data.area = response[i].area;
                    }
                    // Get Valuation data
                    $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.valuations = res.data;
                        console.log($scope.valuations);
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })

                    $scope.resultReady = true;
                }

            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
            });
            
        }

        // Modal
        $scope.showModal = function(key = -1) {
            var form = '<form ng-submit="foo()" id="frmValuation" name="frmValuation" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Date</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope.valuations[key].date+'" class="form-control" name="date" id="date"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="date" id="date" placeholder="2017-01-20"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Value</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope.valuations[key].value+'" class="form-control" name="value" id="value"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="value" id="value"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope.valuations[key].remarks+'" class="form-control" name="remarks" id="remarks"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="remarks" id="remarks"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                            </div>\
                        </form>';
                form = $(form);
            bootbox.confirm({
                title: "Add New Valuation",
                message: form,
                callback: function(res) {
                    if (res){
                        $scope.valuation.date = $('#frmValuation')[0]['elements'].date.value;
                        $scope.valuation.value = $('#frmValuation')[0]['elements'].value.value;
                        $scope.valuation.remarks = $('#frmValuation')[0]['elements'].remarks.value;

                        $scope.$apply();
                        if(key > -1) {
                            // Edit
                            $scope.valuations[key].date = $scope.valuation.date;
                            $scope.valuations[key].value = $scope.valuation.value;
                            $scope.valuations[key].remarks = $scope.valuation.remarks;
                            $scope.$apply();
                            $scope.updateValuation($scope.valuations[key].id);
                        }
                        else {
                            // New
                            $scope.addValuation();
                        }

                    }
                }
            });
        }

        // Delete
        $scope.delete = function(index, id) {

            $http.delete($rootScope.apiURL + 'v1/valuation/' + id + '?token='+localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.valuations.splice(index, 1);
                });;
        }

        // Add
        $scope.addValuation = function() {
            $http.post($rootScope.apiURL + 'v1/valuation?token='+localStorage.getItem('satellizer_token'), {
                date : $scope.valuation.date,
                value : $scope.valuation.value,
                remarks : $scope.valuation.remarks,
                property_id : $scope.property_id 
            }).success(function(response) {
                $scope.valuations.push(response.data);
                $scope.valuation = '';

            }).error(function(){
                console.log("error");
            });
        };

        // Update
        $scope.updateValuation = function(id){
          $http.put($rootScope.apiURL + 'v1/valuation/' + id + '?token='+localStorage.getItem('satellizer_token'), {
                date : $scope.valuation.date,
                value : $scope.valuation.value,
                remarks : $scope.valuation.remarks,
          }).success(function(response) {
                console.log("Updated Successfully");
            }).error(function(){
                console.log("error");
            });
        }

    }
);