angular.module('MetronicApp').controller('DashboardController', 
	function($state, $rootScope, $scope, $http, $timeout) {
        
	$scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();

    });
    $scope.can_manage_staffs = false;

    
    // Display
    $scope.init = function() {
        // $http.get($rootScope.apiURL + 'v1/users/'+ '1' +'?token='+localStorage.getItem('satellizer_token')).success(function(property_uses) {
        //     $scope.account = property_uses.data;
        //     console.log($scope.property_uses);
        // }).error(function(error) {
        //     $scope.error = error;
        // })
    };
    $scope.init();
    

    // User Capabilities
    

    $state.go('property.list');
    
});