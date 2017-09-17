angular.module('MetronicApp').controller('ValuationsController', 
    function($rootScope, $scope, $http, settings) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        $scope.showResult = function() {
            $scope.resultReady = true;
        }
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/valuation').success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })
        };
        $scope.init();

    }
);