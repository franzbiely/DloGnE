/* Setup blank page controller */
angular.module('MetronicApp').controller('RentalMaintenanceController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
    });
    $scope.rental_maintenances = [];
    $scope.error;
    $scope.rental_maintenance;

    $scope.modal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmRentalMaintenance" name="frmRentalMaintenance" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Rental Maintenance</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
        if (key > -1) {
            form += '<input type="text" value="' + $scope.rental_maintenances[key].title + '" class="form-control" name="title" id="title"> </div>';
        } else {
            form += '<input type="text" class="form-control" name="title" id="title"> </div>';
        }
        form += '</div>\
                            </div>\
                        </div>\
                    </form>';
        form = $(form);
        bootbox.confirm({
            title: "Rental Maintenance Detail",
            message: form,
            callback: function(res) {
                if (res) {
                    $scope.rental_maintenance = $('#frmRentalMaintenance')[0]['elements'].title.value;
                    $scope.$apply();
                    if (key > -1) {
                        // Edit
                        $scope.rental_maintenances[key].title = $scope.rental_maintenance;
                        $scope.$apply();
                        $scope.update($scope.rental_maintenances[key].id);
                    } else {
                        // New
                        $scope.add();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/rental_maintenance?token=' + localStorage.getItem('satellizer_token')).success(function(rental_maintenances) {
            $scope.rental_maintenances = rental_maintenances.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
    };
    $scope.init();

    // Delete
    $scope.delete = function(index, id) {
        var _confirmed = confirm("Are you sure to delete this data?");
        if(_confirmed) {
            $http.delete($rootScope.apiURL + 'v1/rental_maintenance/' + id + '?token=' + localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.rental_maintenances.splice(index, 1);
                });
        }
    }

    // Add
    $scope.add = function() {

        $http.post($rootScope.apiURL + 'v1/rental_maintenance?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_maintenance
        }).success(function(response) {
            $scope.rental_maintenances.unshift(response.data);
            $scope.rental_maintenance = '';
        }).error(function() {
            console.log("error");
        });
    };

    // Update
    $scope.update = function(id) {
        $http.put($rootScope.apiURL + 'v1/rental_maintenance/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_maintenance
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function() {
            console.log("error");
        });
    }
});