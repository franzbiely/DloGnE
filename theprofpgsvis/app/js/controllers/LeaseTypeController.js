/* Setup blank page controller */
angular.module('MetronicApp').controller('LeaseTypeController', function($rootScope, $scope, settings, $http, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();
    });
    $scope.property_lease_types = [];
    $scope.error;
    $scope.property_lease_type;

    $scope.classModal = function(key = -1) {
        var form = '<form ng-submit="foo()" id="frmLeaseType" name="frmLeaseType" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Class Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.property_lease_types[key].name+'" class="form-control" name="class" id="class"> </div>';
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
                    $scope.property_lease_type = $('#frmLeaseType')[0]['elements'].class.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.property_lease_types[key].name = $scope.property_lease_type;
                        $scope.$apply();
                        $scope.updateLeaseType($scope.property_lease_types[key].id);
                    }
                    else {
                        // New
                        $scope.addLeaseType();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/property_lease_type').success(function(property_lease_types) {
            $scope.property_lease_types = property_lease_types.data;
            console.log($scope.property_lease_types);
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();

    // Delete
    $scope.deleteLeaseType = function(index, id) {
        console.log(index, id);

        $http.delete($rootScope.apiURL + 'v1/property_lease_type/' + id)
            .success(function() {
                $scope.property_lease_types.splice(index, 1);
            });;
    }

    // Add
    $scope.addLeaseType = function() {
 
        $http.post($rootScope.apiURL + 'v1/property_lease_type', {
            name: $scope.property_lease_type
        }).success(function(response) {

            $scope.property_lease_types.push(response.data);
            console.log($scope.property_lease_type);
            $scope.property_lease_type = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateLeaseType = function(id){
      $http.put($rootScope.apiURL + 'v1/property_lease_type/' + id, {
            name: $scope.property_lease_type
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
