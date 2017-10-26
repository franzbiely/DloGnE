/* Setup blank page controller */
angular.module('MetronicApp').controller('UsersController', function($rootScope, $scope, settings, $http, $compile, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax();
        $scope.users = [];
        $scope.user;
    });
    
    $scope.user_role_selected;
    $scope.user_role_options = [
        { id : 'Administrator', label : 'Administrator Level' },
        { id : 'Data Access', label : 'Data Access Level' },
        { id : 'Data Entry', label : 'Data Entry Level'}
    ];
    $scope.foo = function() {
        alert('foo');
    }
    $scope.showModal = function(key = -1) {
        delete $scope.user_role_selected;
        if(key > -1) {
            for(i = 0; i < $scope.user_role_options.length; i++){
                if($scope.user_role_options[i].id == $scope.users[key].role) 
                    $scope.user_role_selected = $scope.user_role_options[i];
            }
            
        }
        var form = '<form id="frmUser" role="form" class="form-horizontal" ng-controller="UsersController">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Username <span class="required" aria-required="true"> * </span></label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                            
            if(key > -1) {
                form +=                     '<input type="text" disabled value="'+$scope.users[key].username+'" class="form-control" name="username" id="username"> </div>';
            }
            else {
                form +=                     '<input type="text" required class="form-control" name="username" id="username"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Password <span class="required" aria-required="true"> * </span></label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>\
                                        <a ng-hide="replace_password" ng-click="replace_password = true">Replace password</a>\
                                        <input ng-show="replace_password" required type="password" class="form-control" name="password" id="password"> </div>\
                                        <a ng-show="replace_password" ng-click="replace_password = false">Don\'t replace password</a>\
                                    </div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Full Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.users[key].name+'" class="form-control" name="name" id="name"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="name" id="name"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Email <span class="required" aria-required="true"> * </span></label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input required type="email" value="'+$scope.users[key].email+'" class="form-control" name="email" id="email"> </div>';
            }
            else {
                form +=                     '<input required type="text" class="form-control" name="email" id="email"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Role <span class="required" aria-required="true"> * </span></label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>\
                                        <select required id="role"';
                                        if(typeof $scope.users[key] !== 'undefined' && $scope.users[key].id == '1') {
                                            form += " disabled='disabled' ";
                                        }
            form +=                     'name="role" ng-model="user_role_selected" ng-options="item as item.label for item in user_role_options track by item.id" class="form-control"></select>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>\
                    </form>';
            form = $compile(form)($scope);
        bootbox.confirm({
            title: "Add New Class",
            scope : $scope,
            message: form,
            callback: function(res) {
                if (res){
                    $scope.user.username = $('#frmUser')[0]['elements'].username.value;
                    $scope.user.password = $('#frmUser')[0]['elements'].password.value;
                    $scope.user.name = $('#frmUser')[0]['elements'].name.value;
                    $scope.user.email = $('#frmUser')[0]['elements'].email.value;
                    $scope.user.role = $('#frmUser')[0]['elements'].role.options[ $('#frmUser')[0]['elements'].role.selectedIndex ].value;
                    $scope.$apply();

                    if(!$scope.user.username || !$scope.user.email || !$scope.user.role) {
                        alert('Please fill mandatory fields.');
                        return false;
                    }
                    else if($scope.user.password != '' && $scope.user.password.length < 6 ) {
                        alert('Password must not less than 6 characters.');
                        return false;
                    }

                    if(key > -1) {
                        // Edit
                        $scope.users[key].username = $scope.user.username;
                        $scope.users[key].name = $scope.user.name;
                        $scope.users[key].email = $scope.user.email;
                        $scope.users[key].role = $scope.user.role;
                        $scope.$apply();
                        $scope.updateUser($scope.users[key].id);
                    }
                    else {
                        // New
                        $scope.addUser();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/users?token='+localStorage.getItem('satellizer_token')).success(function(users) {
            $scope.users = users.data;
            console.log(users.data);
        }).error(function(error) {
            $scope.error = error;
            if(error.error == "token_expired")
                $rootScope.logout();
        })
    };
    $scope.init();

    // Delete
    $scope.delete = function(index, id) {
        var action_confirm = confirm("Are you sure you want to remove this data?");
        if(action_confirm) {
            $http
                .delete($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'))
                .success(function() {
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'removed staff #'+ id
                    }).success(function(response) { 
                        $scope.users.splice(index, 1);
                    });
                    
                });
        }
    }

    // Add
    $scope.addUser = function() {
 
        $http.post($rootScope.apiURL + 'v1/users?token='+localStorage.getItem('satellizer_token'), {
            username: $scope.user.username,
            name: $scope.user.name,
            email: $scope.user.email,
            role: $scope.user.role,
            isDisabled : 0
        }).success(function(response) {
           

            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'added new user '+ $scope.user.username +'(staff)'
            }).success(function(response) { 
                 $scope.users.unshift(response.data);
                $scope.user = '';
                alert('New user registered');
            });

        }).error(function(){
            alert('Error occured. Please make sure that the email address is not already in used.');
            return false;
        });
    };

    // Update
    $scope.updateUser = function(id){
        var param = {
            username: $scope.user.username,
            name: $scope.user.name,
            email: $scope.user.email,
            role: $scope.user.role
        };
        if($scope.user.password != '') {
            param.password = $scope.user.password
        }
        
      $http.put($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'modified '+ $scope.user.email +'(staff) details'
            }).success(function(response) { 
                if($scope.user.password == '') {
                    alert("No password has changed. Updated Successfully");
                }
                else {
                    alert("Updated Successfully");
                }
            });
        }).error(function(){
            console.log("error");
        });
    }

    $scope.setDisable = function(id){
        $http.put($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            isDisabled : 1
        }).success(function(response) {
            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'disabled staff # '+ id
            }).success(function(response) { 
                alert('Updated Successfully');
            });
        }).error(function(){
            console.log("error");
        });
        return 1;
    }
    $scope.setEnable = function(id){
        $http.put($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            isDisabled : 0
        }).success(function(response) {
            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'enabled staff # '+ id
            }).success(function(response) { 
                alert('Updated Successfully');
            });
        }).error(function(){
            console.log("error");
        });
        return 0;
    }
});
