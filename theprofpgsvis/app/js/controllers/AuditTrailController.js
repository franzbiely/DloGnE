/* Setup general page controller */
angular.module('MetronicApp').controller('AuditTrailController', function($rootScope, $scope, settings, $http) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
        $scope.audit_trails = [];
    });

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/audit_trail?token=' + localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.audit_trails = ret.data;
        }).error(function(error) {
            $scope.error = error;
            if (error.error == "token_expired")
                $rootScope.logout();
        })
    };
    $scope.init();

    $scope.clear_logs = function() {
        var action_confirm = confirm("Are you sure you want to empty the audit trail?");
        if(action_confirm) {
            $http.post($rootScope.apiURL + 'v1/audit_trail/empty?token=' + localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.audit_trails = [];
            });
        }
    }
});