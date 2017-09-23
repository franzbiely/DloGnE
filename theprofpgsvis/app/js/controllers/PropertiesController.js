angular.module('MetronicApp').controller('PropertiesController', 
    function($rootScope, $scope, $http, settings) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
            $scope.properties = [];
            $scope.error;
            $scope.property;
            $scope.isDisabled = false;
        });
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/property?token='+localStorage.getItem('satellizer_token')).success(function(property) {
                $scope.properties = property.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })
        };
        $scope.init();

        // Delete
        $scope.deleteProperty = function(index, id) {
            $scope.isDisabled = true;
            $http.delete($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.properties.splice(index, 1);
                    $scope.isDisabled = false;
                });;
        }

    }
);
