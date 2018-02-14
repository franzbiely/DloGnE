angular.module('MetronicApp').controller('RentalDetailsController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http, FUNC, moment) {
        $scope.type="rental";
        $scope.data = [];   
        $scope.dynamicFields = [];
        $scope.temp = [];
        $scope.temp.isSoleTenant = false;
        $scope.showInclusionOther = false;

             

        // Load Data for Edit
        $scope.params = $stateParams; 
        $scope.isDisabled = false;
        $rootScope.pageSidebarClosed = false;
        $('.date-picker').datepicker({
            format: 'dd-mm-yyyy',
            autoclose: true}).on('changeDate', function (ev) {
               $(this).blur();
               $(this).datepicker('hide');
        });
        
        // get analyzed by area
        $http.get($rootScope.apiURL + 'v1/rental_area?token=' + localStorage.getItem('satellizer_token')).success(function(rental_areas) {
            $scope.dynamicFields.areas = rental_areas.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })

        // get analyzed by period
        $http.get($rootScope.apiURL + 'v1/rental_period?token=' + localStorage.getItem('satellizer_token')).success(function(rental_periods) {
            $scope.dynamicFields.periods = rental_periods.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })

        // get analyzed by review method
        $http.get($rootScope.apiURL + 'v1/rental_review_method?token=' + localStorage.getItem('satellizer_token')).success(function(rental_review_methods) {
            $scope.dynamicFields.review_methods = rental_review_methods.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })

        // get analyzed by inclusions
        $http.get($rootScope.apiURL + 'v1/rental_inclusion?token=' + localStorage.getItem('satellizer_token')).success(function(rental_inclusions) {
            $scope.dynamicFields.inclusions = rental_inclusions.data;
            var len = $scope.dynamicFields.inclusions.length,
                mid = len / 2;
            $scope.temp.inclusions_left  = $scope.dynamicFields.inclusions.slice(0, mid);  
            $scope.temp.inclusions_right = $scope.dynamicFields.inclusions.slice(mid, len);
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })

        // get analyzed by maintenance
        $http.get($rootScope.apiURL + 'v1/rental_maintenance?token=' + localStorage.getItem('satellizer_token')).success(function(rental_maintenances) {
            $scope.dynamicFields.maintenances = rental_maintenances.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })

        var isEdit = ($scope.params.rental_id !== "" && typeof $scope.params.rental_id !== 'undefined') ? true : false;
        if(isEdit) {
            $scope.page_title = "Edit Rental";
            var i = setInterval(function() {
                if(typeof $scope.temp.inclusions_left !== 'undefined' && 
                   typeof $scope.dynamicFields.maintenances !== 'undefined') {
                    loadData($scope.params.rental_id);        
                    clearInterval(i);
                    return;    
                }
                
            }, 100);
                
            
        }    
        else {
            $scope.page_title = "New Rental";
            $scope.data.property_id = $state.params.property_id;
        }

        function loadData(id) {
            $http.get($rootScope.apiURL + 'v1/rental/'+ id +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                $scope.data.property_id = response.data.property_id;
                $scope.data.analysed_date = moment(response.data.analysed_date, 'YYYY-MM-DD').format('DD-MM-YYYY');
                $scope.data.analysed_rent = response.data.analysed_rent;
                $scope.data.remarks = response.data.remarks;
                $scope.data.rental_area_id = response.data.rental_area_id;
                $scope.data.rental_period_id = response.data.rental_period_id;
                $scope.data.rental_review_method_id = response.data.rental_review_method_id;
                $scope.isFixedMethod = (response.data.rental_review_method_id == 2) ? true : false;
                $scope.data.rental_review_method = response.data.rental_review_method;
                $scope.data.vacancy_rate = response.data.vacancy_rate;
                $scope.data.option_periods = response.data.option_periods;



                if(response.data.name_of_tenant !== '' ||
                    (response.data.total_lease_period !== 0 &&  response.data.total_lease_period !== '') ||
                    response.data.date_lease_commenced !== '0000-00-00') {
                    $scope.temp.isSoleTenant = true;
                    $scope.data.name_of_tenant = response.data.name_of_tenant;
                    $scope.data.total_lease_period = response.data.total_lease_period;
                    $scope.data.date_lease_commenced = moment(response.data.date_lease_commenced, 'YYYY-MM-DD').format('DD-MM-YYYY');
                }
                
                for (var x = 0; x < response.data.inclusions.length; ++x) {
                    for (var y = 0; y < $scope.temp.inclusions_left.length; ++y) {
                        if( $scope.temp.inclusions_left[y].id == response.data.inclusions[x].id ) {
                            $scope.temp.inclusions_left[y].isChecked = true;
                        }
                    }
                    for (var y = 0; y < $scope.temp.inclusions_right.length; ++y) {
                        if( $scope.temp.inclusions_right[y].id == response.data.inclusions[x].id ) {
                            $scope.temp.inclusions_right[y].isChecked = true;
                            if($scope.temp.inclusions_right[y].id == 13) {
                                $scope.data.inclusion_other = response.data.inclusion_other;
                                $scope.showInclusionOther = $scope.temp.inclusions_right[y].isChecked;
                            }
                        }
                    }
                }

                $scope.data.age_of_building = response.data.age_of_building;

                $scope.data.maintenances = [];
                for (var x = 0; x < response.data.maintenance__ratings.length; ++x) {
                    for (var y = 0; y < $scope.dynamicFields.maintenances.length; ++y) {
                        if( $scope.dynamicFields.maintenances[y].id == response.data.maintenance__ratings[x].id ) {
                            $scope.data.maintenances[ $scope.dynamicFields.maintenances[y].id ] = response.data.maintenance__ratings[x].rate.toString();
                        }
                    }
                }

            }).error(function(error){
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            });
        }

        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            Dropzone.autoDiscover = false;
            
        });
        // Add
        $scope.save = function() {
            $scope.isDisabled = true;
            
            var param = {
                'property_id' : $scope.data.property_id,
                'analysed_rent' : $scope.data.analysed_rent.replace (/,/g, ""),
                'analysed_date' : moment($scope.data.analysed_date, 'DD-MM-YYYY').format('YYYY-MM-DD'),
                'remarks' : $scope.data.remarks,
                'rental_area_id' : $scope.data.rental_area_id,
                'rental_period_id' : $scope.data.rental_period_id,
                'rental_review_method_id' : $scope.data.rental_review_method_id,
                'rental_review_method' : $scope.data.rental_review_method,
                'age_of_building' : $scope.data.age_of_building,
                'inclusions_id_json' : $scope.dynamicFields.inclusions,
                'inclusion_other' : $scope.data.inclusion_other,
                'maintenance_rates' : $scope.data.maintenances,
                'vacancy_rate' : $scope.data.vacancy_rate,
                'option_periods' : $scope.data.option_periods                
            };
            if($scope.temp.isSoleTenant) {
                if($scope.data.name_of_tenant != '') {
                    param.name_of_tenant = $scope.data.name_of_tenant;
                }
                else {
                    param.name_of_tenant = '';
                }
                if($scope.data.date_lease_commenced != 'Invalid date' ) {
                    param.date_lease_commenced = moment($scope.data.date_lease_commenced, 'DD-MM-YYYY').format('YYYY-MM-DD');
                }
                else {
                    param.date_lease_commenced = '';
                }
                console.log($scope.data.total_lease_period);
                if($scope.data.total_lease_period != null ) {
                    param.total_lease_period = $scope.data.total_lease_period;    
                }
                else {
                    param.total_lease_period = '';
                }
            }
            else {
                param.name_of_tenant = '';
                param.date_lease_commenced = '';
                param.total_lease_period = '';
            }

            if($state.current.name === 'rentals.new') {
                // if add
                $http.post($rootScope.apiURL + 'v1/rental?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    $state.go('rentals.list', {property_id : $scope.data.property_id});    

                    alert('Added Successfully');
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }
            else {
                
                // // if edit
                $http.put($rootScope.apiURL + 'v1/rental/' + $scope.params.rental_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    alert('Update Successfully');
                    $state.go('rentals.list', {property_id : $scope.data.property_id});    
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }   
        }

        //select_inclusion
        $scope.select_inclusion = function(data) {
            if(data.title == "Other") {
                $scope.showInclusionOther = data.isChecked;
            }
        }

        //changeRentalMethod
        $scope.changeRentalMethod = function() {
            console.log($scope.data.rental_method);
            $scope.isFixedMethod = ($scope.data.rental_review_method_id == 2) ? true : false;
        }
    }
);