/* Setup general page controller */
angular.module('MetronicApp').controller('AuditTrailController', function($rootScope, $scope, settings, $http) {
    $scope.$on('$viewContentLoaded', function() {   
    	// initialize core components
    	App.initAjax();
    	$scope.audit_trails = [];
    });

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.audit_trails = ret.data;
            console.log($scope.audit_trails);
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();
});
