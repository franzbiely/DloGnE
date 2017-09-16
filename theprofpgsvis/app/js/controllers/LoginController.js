angular.module('MetronicApp').controller('LoginController', 
    function($auth, $state, $rootScope, $scope, $http, $timeout, $rootScope) {
	
    $scope.$on('$viewContentLoaded', function() {
        App.initAjax();
    });

    var vm = this;
    vm.loginError = false;
    vm.loginErrorText;

	// Temporary only ======================
	$scope.username = 'admin';
	$scope.password = 'secret_pass';
	// =====================================

    $scope.login = function() {
        var credentials = {
            username: $scope.username,
            password: $scope.password
        }
        console.log(credentials);
        $auth.login(credentials).then(function() {

            $http.get($rootScope.apiURL + 'authenticate/user').success(function(response) {
                    var user = JSON.stringify(response.user);
                    localStorage.setItem('user', user);
                    $rootScope.currentUser = response.user;
                    $state.go('dashboard');
                })
                .error(function() {
                    vm.loginError = true;
                    vm.loginErrorText = error.data.error;
                    console.log(vm.loginErrorText);
                })
        });
    }
});