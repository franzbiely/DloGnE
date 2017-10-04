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
    
    $state.go('profile.account');
    
});