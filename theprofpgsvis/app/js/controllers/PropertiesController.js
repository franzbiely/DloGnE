/* Setup blank page controller */
angular.module('MetronicApp').controller('PropertiesController', 
    function($rootScope, $scope, $http, settings) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        $scope.gotoasdf = function() {
            alert('hasdf');
        }
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        $scope.properties = [];

        // Display
        $scope.init = function() {
            console.log($rootScope.apiURL + 'v1/property');
            $http.get($rootScope.apiURL + 'v1/property').success(function(property) {
                $scope.properties = property.data;
                console.log($scope.properties);
            }).error(function(error) {
                $scope.error = error;
            })
        };
        $scope.init();

    }
);
