angular.module('MetronicApp').controller('UserProfileController', function($rootScope, $scope, $http, $timeout, $state, $auth) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax(); // initialize core components
        Layout.setAngularJsSidebarMenuActiveLink('set', $('#sidebar_menu_link_profile'), $state); // set profile link active in sidebar menu 
        $scope.account = [];
    });
    $scope.frmChangePassword = function() {
    	// check if new password match
    	if($scope.new_password != $scope.confirm_new_password) {
    		alert('Password mismatch');
    	}
    	else if($scope.new_password.length < 6) {
    		alert('Password must be more than 6 characters.');
    	}
    	else {
    		var current_user = JSON.parse(localStorage.getItem('user'));

			var credentials = {
	            email: current_user.email,
	            password: $scope.current_password
	        }
	        $auth.login(credentials).then(function(response) {
	        	$http.put($rootScope.apiURL + 'v1/users/' + current_user.id + '?token='+localStorage.getItem('satellizer_token'), {
		            password: $scope.new_password
		        }).success(function(response) {
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'changed password'
                    }).success(function(response) { 
                        alert('Password changed succesfully! You will be needed to login again.');
                        $rootScope.logout();
                        $state.go('login');
                    });
		        }).error(function(){
		            console.log("error on updating password.");
		        });
	        }, function(e) {
	            alert('Incorrect credentials');
	        });
    	}
    	// return false;
    }
}); 
