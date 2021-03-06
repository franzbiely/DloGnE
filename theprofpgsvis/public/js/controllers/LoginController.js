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
	$scope.email = '';
	$scope.password = '';
	// =====================================

    $scope.login = function() {
        $scope.isDisabled = true;
        var credentials = {
            email: $scope.email,
            password: $scope.password,
            isDisabled : 0
        }
        $auth.login(credentials).then(function(_response) {
            $http.get($rootScope.apiURL + 'authenticate/user?token='+_response.data.token).success(function(response) {
                    
                    var user = JSON.stringify(response.user);
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+_response.data.token, {
                        user_id : response.user.id,
                        log : 'logged in'
                    }).success(function(_response) {
                        localStorage.setItem('user', user);

                        $rootScope.currentUser = response.user;
                        var date = new Date();

                        date.setDate(date.getDate() + 1);
                        document.cookie = "username="+response.user.name+"; expires="+date.toGMTString();
                        $state.go('dashboard');    
                    }).error(function() {
                        alert('Error on database. Please contact the webmaster.');
                        $rootScope.logout();
                    });

                })
                .error(function() {
                    vm.loginError = true;
                    vm.loginErrorText = error.data.error;
                    console.log(vm.loginErrorText);
                })
        }, function(e) {
            if(e.status == 500) {
                alert('Error on database. Please contact the webmaster.');
            }
            else {
                alert('Incorrect credentials');   
                $scope.email = '';
                $scope.password = '';
            }
            $scope.isDisabled = false;
        });
    }
});