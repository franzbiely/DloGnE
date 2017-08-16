angular.module('MetronicApp').controller('LoginController', function($auth, $state, $rootScope, $scope, $http, $timeout) {
	
    

    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        // App.initAjax();
    });
    var vm = this;
    vm.loginError = false;
    vm.loginErrorText;

	// Temporary only ======================
	$scope.username = 'Berge.Kennith';
	$scope.password = 'secret_pass';
	// =====================================
    $scope.login = function() {
        var credentials = {
            email: vm.email,
            password: vm.password
        }
        $state.go('dashboard');
        // $auth.login(credentials).then(function() {
        //     $http.get('http://localhost:8000/api/authenticate/user').success(function(response) {
        //             var user = JSON.stringify(response.user);
        //             localStorage.setItem('user', user);
        //             $rootScope.currentUser = response.user;
        //             $state.go('dashboard');
        //         })
        //         .error(function() {
        //             vm.loginError = true;
        //             vm.loginErrorText = error.data.error;
        //             console.log(vm.loginErrorText);
        //         })
        // });
    }
});