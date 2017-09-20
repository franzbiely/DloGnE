angular.module('MetronicApp').controller('UserProfileController', function($rootScope, $scope, $http, $timeout, $state) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax(); // initialize core components
        Layout.setAngularJsSidebarMenuActiveLink('set', $('#sidebar_menu_link_profile'), $state); // set profile link active in sidebar menu 
        $scope.account = [];
        
    });
    var user = JSON.parse(localStorage.getItem('user'));
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
    $scope.user = user;
}); 
