/* Setup blank page controller */
angular.module('MetronicApp').controller('UsersController', function($rootScope, $scope, settings, $http, $compile, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax();
        $scope.users = [];
        $scope.user;
    });
    $scope.user_role_selected;
    $scope.user_role_options = [
        { id : 'valuer', label : 'Valuer' },
        { id : 'data-entry', label : 'Data Entry'}
    ];

    $scope.showModal = function(key = -1) {
        if(key > -1) {
            for(i = 0; i < $scope.user_role_options.length; i++){
                if($scope.user_role_options[i].id == $scope.users[key].role) 
                    $scope.user_role_selected = $scope.user_role_options[i];
            }
            
        }

        var form = '<form id="frmUser" role="form" class="form-horizontal" ng-controller="UsersController">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Username</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                            
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.users[key].username+'" class="form-control" name="username" id="username"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="username" id="username"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Password</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                            
            if(key > -1) {
                form +=                     '<input type="password" value="'+$scope.users[key].password+'" class="form-control" name="password" id="password"> </div>';
            }
            else {
                form +=                     '<input type="password" class="form-control" name="password" id="password"> </div>';    
            }
            form +=             '</div>\
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
                                <label class="col-md-4 control-label">Email</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="email" value="'+$scope.users[key].email+'" class="form-control" name="email" id="email"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="email" id="email"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Role</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>\
                                        <select id="role" name="role" ng-model="user_role_selected" ng-options="item as item.label for item in user_role_options track by item.id" class="form-control"></select>\
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
                    $scope.user.name = $('#frmUser')[0]['elements'].name.value;
                    $scope.user.email = $('#frmUser')[0]['elements'].email.value;
                    $scope.user.role = $('#frmUser')[0]['elements'].role.options[ $('#frmUser')[0]['elements'].role.selectedIndex ].value;
                    $scope.$apply();
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
            console.log($scope.users);
        }).error(function(error) {
            $scope.error = error;
            if(error.error == "token_expired")
                $rootScope.logout();
        })
    };
    $scope.init();

    // Delete
    $scope.delete = function(index, id) {
        console.log(index, id);

        $http.delete($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.users.splice(index, 1);
            });;
    }

    // Add
    $scope.addUser = function() {
 
        $http.post($rootScope.apiURL + 'v1/users?token='+localStorage.getItem('satellizer_token'), {
            username: $scope.user.username,
            name: $scope.user.name,
            email: $scope.user.email,
            role: $scope.user.role
        }).success(function(response) {

            $scope.users.push(response.data);
            console.log($scope.user);
            $scope.user = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateUser = function(id){
      $http.put($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            username: $scope.user.username,
            name: $scope.user.name,
            email: $scope.user.email,
            role: $scope.user.role
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }

    $scope.setDisable = function(id){
        $http.patch($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            isDisabled : 1
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
        return 1;
    }
    $scope.setEnable = function(id){
        $http.patch($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            isDisabled : 0
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
        return 0;
    }
});
