angular.module('MetronicApp').controller('SalesController', 
    function($rootScope, $scope, $http, $timeout, $stateParams) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); // initialize core components  
            $scope.data = [];
            $scope.sales = [];
        });
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
        $scope.property_id = $stateParams.property_id;

        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })
        };
        $scope.init();

        // From Reports
        $scope.showResult = function() {
            $scope.hasActions = false;

            var str = Object.keys($scope.data).map(function(key){ 
                if(encodeURIComponent($scope.data[key]) !== 'undefined'){
                    return encodeURIComponent(key) + '=' + encodeURIComponent($scope.data[key]); 
                }
            }).join('&');
            $http.get($rootScope.apiURL + 'v1/property/param/'+ str +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                if(response.data.length > 1) {
                    alert('Multiple data view is still under construction.')
                }
                else {
                    // single
                    $scope.property_id = response.data.id;
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
                
                // Get Sales data
                $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                    $scope.sales = res.data;
                    console.log($scope.sales);
                }).error(function(error) {
                    console.log('Service error : ',error);
                })

            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
            });
            $scope.resultReady = true;
        }
    }
);