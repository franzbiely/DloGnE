angular.module('MetronicApp').controller('DashboardController', 
	function($state, $rootScope, $scope, $http, $timeout) {
        
	$scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();

    });
    $scope.can_manage_staffs = false;

    
    // Display
    $scope.init = function() {
    };
    $scope.init();

    var user = JSON.parse(localStorage.getItem('user'));
    if((user != null)) {
        $scope.user = user;
        switch($scope.user.role) {
            case 'Data Access' : 
                $state.go('reports'); 
                break;
            case 'Data Entry' : 
                $state.go('property.list');
                break;
            case 'Administrator' : 
                $state.go('audit_trail');
                break;
        }
    }
});