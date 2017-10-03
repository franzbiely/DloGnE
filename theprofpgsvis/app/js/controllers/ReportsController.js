angular.module('MetronicApp').controller('ReportsController', 
    function($rootScope, $scope, $http, $timeout) {
        $scope.multipleResultsShow = false;
        
        function toOption(data, label='name') {
            var options = [ data.length ];
            for(i = 0; i < data.length; i++){
                options[ i ] = {
                    id :  data[i].id,
                    label : data[i][label]
                };
            }
            return options;
        }

        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); 
            $scope.data = [];
            $scope.searchdata = []; 
            $scope.data_temp = [];
            $scope.valuations = [];
            $scope.searchdata.price_min = 1000;
            $scope.searchdata.price_max = 9000;
            $scope.price_options = {
                floor: 1000,
                ceil: 9000,
                step : 100
            };
            // Load Select options data
            $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_use_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_use');  
            })
            $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_class_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_class');  
            })
            $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_lease_type_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_lease_type');  
            })
            $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_city_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_city');  
            })
            $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_suburb_options = toOption(ret.data, 'suburb');
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_suburb');  
            })

            $scope.$watchGroup( ["property_use_options", "property_class_options","property_lease_type_options","property_city_options","property_suburb_options"] , function(n,o){  
                
                if(n==o) return;
                // check if all fields has data.
                for(i = 0; i<n.length; i++) {
                    if(typeof n[i] === "undefined")
                        return;
                }
            },true);
        });

        $scope.showResult = function(property_id) {
            var str;
            $scope.multi_property_results = false;
            $scope.resultReady = false;

            if(typeof $scope.data_temp.property_city_selected !== 'undefined') {
                $scope.searchdata.property_city_id = $scope.data_temp.property_city_selected.id;
            }
            if(typeof $scope.data_temp.property_suburb_selected !== 'undefined') {
                $scope.searchdata.property_suburb_id = $scope.data_temp.property_suburb_selected.id;
            }
            if(typeof $scope.data_temp.property_class_selected !== 'undefined') {
                $scope.searchdata.property_class_id = $scope.data_temp.property_class_selected.id;
            }
            if(typeof $scope.data_temp.property_lease_type_selected !== 'undefined') {
                $scope.searchdata.property_lease_type_id = $scope.data_temp.property_lease_type_selected.id;
            }
            if(property_id != null) {
                $scope.multipleResultsShow = false;
                str = 'id='+ property_id;
            }
            else {
                $scope.multipleResultsShow = true;
                str = Object.keys($scope.searchdata).map(function(key){ 
                    if(encodeURIComponent($scope.searchdata[key]) !== 'undefined' && encodeURIComponent($scope.searchdata[key]) !== ''){
                        return encodeURIComponent(key) + '=' + encodeURIComponent($scope.searchdata[key]); 
                    }
                }).join('&');    
            }
            
            $http.get($rootScope.apiURL + 'v1/property/param/'+ str +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                console.log(response);
                if(response.data.length == '0') {
                    alert('No result');
                }
                else if(response.data.length > 1) {
                    console.log('multiple');
                    $scope.multi_property_results = response.data;
                    $scope.multipleResultsReady = true;
                }
                else {
                    console.log('single');
                    console.log(response.data);
                    $scope.multipleResultsShow = false;
                    for (var i = 0; i < response.data.length; i++) {
                        $scope.property_id = response.data[i].id;
                        $scope.data.code = response.data[i].code;
                        $scope.data.description = response.data[i].description;
                        $scope.data.property_use_selected = response.data[i].property__use;
                        $scope.data.property_class_selected = response.data[i].property__class;
                        $scope.data.property_lease_type_selected = response.data[i].property__lease__type;
                        $scope.data.property_city_selected = response.data[i].property__city;
                        $scope.data.property_suburb_selected = response.data[i].property__suburb;
                        $scope.data.port = response.data[i].port;
                        $scope.data.sec = response.data[i].sec;
                        $scope.data.lot = response.data[i].lot;
                        $scope.data.unit = response.data[i].unit;
                        $scope.data.land_value = response.data[i].land_value;
                        $scope.data.land_component = response.data[i].land_component;
                        $scope.data.improvement_component = response.data[i].improvement_component;
                        $scope.data.area = response.data[i].area;
                    }
                    // Get Valuation data
                    $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.valuations = res.data;
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })


                    // Get Sales data
                    $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.sales = res.data;
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })

                    // show details below
                    $scope.resultReady = true;
                }
                
                

            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
                if(error.error == "token_expired")
                    $rootScope.logout();
            });

            
        }
        $scope.type="reports";


    }
);