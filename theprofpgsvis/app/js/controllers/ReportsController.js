angular.module('MetronicApp').controller('ReportsController', 
    function($rootScope, $scope, $http, $timeout) {

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
            $scope.valuations = [];

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
            alert('Reports show result');
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