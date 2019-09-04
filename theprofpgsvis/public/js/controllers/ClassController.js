/* Setup blank page controller */
angular.module('MetronicApp').controller('ClassController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();
    });
    $scope.property_classes = [];
    $scope.error;
    $scope.property_class;

    $scope.classModal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmClass" name="frmClass" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Class Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.property_classes[key].name+'" class="form-control" name="class" id="class"> </div>';
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
            title: "Class Detail",
            message: form,
            callback: function(res) {
                if (res){
                    $scope.property_class = $('#frmClass')[0]['elements'].class.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.property_classes[key].name = $scope.property_class;
                        $scope.$apply();
                        $scope.updateClass($scope.property_classes[key].id);
                    }
                    else {
                        // New
                        $scope.addClass();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(property_classes) {
            $scope.property_classes = property_classes.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
    };
    $scope.init();

    // Delete
    $scope.deleteClass = function(index, id) {
        $http.delete($rootScope.apiURL + 'v1/property_class/' + id + '?token='+localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.property_classes.splice(index, 1);
            });;
    }

    // Add
    $scope.addClass = function() {
 
        $http.post($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_class
        }).success(function(response) {
            $scope.property_classes.push(response.data);
            $scope.property_class = '';
        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateClass = function(id){
      $http.put($rootScope.apiURL + 'v1/property_class/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_class
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
