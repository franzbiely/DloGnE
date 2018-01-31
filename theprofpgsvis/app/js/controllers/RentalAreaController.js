/* Setup blank page controller */
angular.module('MetronicApp').controller('RentalAreaController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
    });
    $scope.rental_areas = [];
    $scope.error;
    $scope.rental_area;

    $scope.modal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmRentalArea" name="frmRentalArea" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Rental Area</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
        if (key > -1) {
            form += '<input type="text" value="' + $scope.rental_areas[key].title + '" class="form-control" name="title" id="title"> </div>';
        } else {
            form += '<input type="text" class="form-control" name="title" id="title"> </div>';
        }
        form += '</div>\
                            </div>\
                        </div>\
                    </form>';
        form = $(form);
        bootbox.confirm({
            title: "Rental Area Detail",
            message: form,
            callback: function(res) {
                if (res) {
                    $scope.rental_area = $('#frmRentalArea')[0]['elements'].title.value;
                    $scope.$apply();
                    if (key > -1) {
                        // Edit
                        $scope.rental_areas[key].title = $scope.rental_area;
                        $scope.$apply();
                        $scope.update($scope.rental_areas[key].id);
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
        $http.get($rootScope.apiURL + 'v1/rental_area?token=' + localStorage.getItem('satellizer_token')).success(function(rental_areas) {
            $scope.rental_areas = rental_areas.data;
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
            $http.delete($rootScope.apiURL + 'v1/rental_area/' + id + '?token=' + localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.rental_areas.splice(index, 1);
                });
        }
    }

    // Add
    $scope.add = function() {

        $http.post($rootScope.apiURL + 'v1/rental_area?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_area
        }).success(function(response) {
            $scope.rental_areas.unshift(response.data);
            $scope.rental_area = '';
        }).error(function() {
            console.log("error");
        });
    };

    // Update
    $scope.update = function(id) {
        $http.put($rootScope.apiURL + 'v1/rental_area/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_area
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function() {
            console.log("error");
        });
    }
});