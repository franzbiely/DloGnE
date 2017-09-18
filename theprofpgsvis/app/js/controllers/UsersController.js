/* Setup blank page controller */
angular.module('MetronicApp').controller('UsersController', function($rootScope, $scope, settings, $http, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax();
        $scope.users = [];
        $scope.user;
    });

    $scope.classModal = function(key = -1) {
        var form = '<form ng-submit="foo()" id="frmUser" name="frmUser" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Class Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.users[key].name+'" class="form-control" name="class" id="class"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="class" id="class"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                        </div>\
                    </form>';
            form = $(form);
        bootbox.confirm({
            title: "Add New Class",
            message: form,
            callback: function(res) {
                if (res){
                    $scope.user = $('#frmUser')[0]['elements'].class.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.users[key].name = $scope.user;
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
        })
    };
    $scope.init();

    // Delete
    $scope.deleteUser = function(index, id) {
        console.log(index, id);

        $http.delete($rootScope.apiURL + 'v1/users/' + id + '?token='+localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.users.splice(index, 1);
            });;
    }

    // Add
    $scope.addUser = function() {
 
        $http.post($rootScope.apiURL + 'v1/users?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.user,
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
            name: $scope.user
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }

    $scope.logout = function() {
        
    }
});
