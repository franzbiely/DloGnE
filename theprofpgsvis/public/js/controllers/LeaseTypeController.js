/* Setup blank page controller */
angular.module('MetronicApp').controller('LeaseTypeController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();
    });
    $scope.property_lease_types = [];
    $scope.error;
    $scope.property_lease_type;

    $scope.leaseTypeModal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmLeaseType" name="frmLeaseType" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Lease Type</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
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
            title: "Lease Type Detail",
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
        $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(property_lease_types) {
            $scope.property_lease_types = property_lease_types.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
    };
    $scope.init();

    // Delete
    $scope.deleteLeaseType = function(index, id) {
        $http.delete($rootScope.apiURL + 'v1/property_lease_type/' + id + '?token='+localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.property_lease_types.splice(index, 1);
            });;
    }

    // Add
    $scope.addLeaseType = function() {
 
        $http.post($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_lease_type
        }).success(function(response) {
            $scope.property_lease_types.push(response.data);
            $scope.property_lease_type = '';
        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateLeaseType = function(id){
      $http.put($rootScope.apiURL + 'v1/property_lease_type/' + id + '?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_lease_type
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
