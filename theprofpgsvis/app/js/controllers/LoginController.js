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
	$scope.email = 'adoko@theprofessionals.com.pg';
	$scope.password = '123123';
	// =====================================

    $scope.login = function() {
        $scope.isDisabled = true;
        var credentials = {
            email: $scope.email,
            password: $scope.password
        }
        $auth.login(credentials).then(function(_response) {
            $http.get($rootScope.apiURL + 'authenticate/user?token='+_response.data.token).success(function(response) {
                    
                    var user = JSON.stringify(response.user);
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+_response.data.token, {
                        user_id : response.user.id,
                        log : 'loged in'
                    }).success(function(_response) {
                        localStorage.setItem('user', user);
                        $rootScope.currentUser = response.user;
                        $state.go('dashboard');    
                    }).error(function() {
                        $rootScope.logout();
                        alert('Error on database. Please contact the webmaster.');

                    });

                })
                .error(function() {
                    vm.loginError = true;
                    vm.loginErrorText = error.data.error;
                    console.log(vm.loginErrorText);
                })
        }, function(e) {
            alert('Incorrect credentials');
            $scope.email = '';
            $scope.password = '';
            $scope.isDisabled = false;
        });
    }
});