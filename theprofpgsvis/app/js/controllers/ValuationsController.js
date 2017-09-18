angular.module('MetronicApp').controller('ValuationsController', 
    function($rootScope, $scope, $http, settings, $stateParams) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        $scope.property_id = $stateParams.property_id;

        $scope.showResult = function() {
            $scope.resultReady = true;
        }
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })
        };
        $scope.init();

    }
);