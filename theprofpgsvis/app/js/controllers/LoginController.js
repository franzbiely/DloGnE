angular.module('MetronicApp').controller('LoginController', 
    function($auth, $state, $rootScope, $scope, $http, $timeout) {
	$scope.$on('$viewContentLoaded', function() {
        App.initAjax();
        $scope.isDisabled = false;
    });

    var vm = this;
    vm.loginError = false;
    vm.loginErrorText;

	// Temporary only ======================
	$scope.username = 'admin';
	$scope.password = 'secret_pass';
	// =====================================

    $scope.login = function() {
        $scope.isDisabled = true;
        var credentials = {
            username: $scope.username,
            password: $scope.password
        }
        $auth.login(credentials).then(function(response) {
            $http.get($rootScope.apiURL + 'authenticate/user?token='+response.data.token).success(function(response) {
                
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
        }, function(e) {
            alert('Incorrect credentials');
            $scope.username = '';
            $scope.password = '';
            $scope.isDisabled = false;
        });
    }
});