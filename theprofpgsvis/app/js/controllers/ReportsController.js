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

        $scope.showResult = function() {
            var str = Object.keys($scope.data).map(function(key){ 
                if(encodeURIComponent($scope.data[key]) !== 'undefined'){
                    return encodeURIComponent(key) + '=' + encodeURIComponent($scope.data[key]); 
                }
            }).join('&');
            $http.get($rootScope.apiURL + 'v1/property/param/'+ str +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                console.log(response.data);
                if(response.data.length > 1) {
                    // multiple
                }
                else {
                    // single
                    $scope.data.code = response.data.code;
                    $scope.data.description = response.data.description;
                    $scope.data.property_use_selected = response.data.property__use;
                    $scope.data.property_class_selected = response.data.property__class;
                    $scope.data.property_lease_type_selected = response.data.property__lease__type;
                    $scope.data.property_city_selected = response.data.property__city;
                    $scope.data.property_suburb_selected = response.data.property__suburb;
                    $scope.data.port = response.data.port;
                    $scope.data.sec = response.data.sec;
                    $scope.data.lot = response.data.lot;
                    $scope.data.unit = response.data.unit;
                    $scope.data.land_value = response.data.land_value;
                    $scope.data.land_component = response.data.land_component;
                    $scope.data.improvement_component = response.data.improvement_component;
                    $scope.data.area = response.data.area;
                }
                
                console.log($scope.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
            });

            // show details below
        	$scope.resultReady = true;
        }
        $scope.type="reports";


    }
);