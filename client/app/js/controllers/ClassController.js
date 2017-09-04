/* Setup blank page controller */
angular.module('MetronicApp').controller('ClassController', function($rootScope, $scope, settings, $http) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();
    });
    $scope.property_classes = [];
    $scope.error;
    $scope.property_class;

    $scope.classModal = function(key = -1) {
        var form = '<form ng-submit="foo()" id="frmClass" name="frmClass" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Class Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
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
            title: "Add New Class",
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
        $http.get('https://theprofessionals.dev/api/v1/property_class').success(function(property_classes) {
            $scope.property_classes = property_classes.data;
            console.log($scope.property_classes);
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();

    // Delete
    $scope.deleteClass = function(index, id) {
        console.log(index, id);

        $http.delete('https://theprofessionals.dev/api/v1/property_class/' + id)
            .success(function() {
                $scope.property_classes.splice(index, 1);
            });;
    }

    // Add
    $scope.addClass = function() {
 
        $http.post('https://theprofessionals.dev/api/v1/property_class', {
            name: $scope.property_class
        }).success(function(response) {

            $scope.property_classes.push(response.data);
            console.log($scope.property_class);
            $scope.property_class = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateClass = function(id){
      $http.put('https://theprofessionals.dev/api/v1/property_class/' + id, {
            name: $scope.property_class
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
