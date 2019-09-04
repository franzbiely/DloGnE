/* Setup blank page controller */
angular.module('MetronicApp').controller('RentalInclusionController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
    });
    $scope.rental_inclusions = [];
    $scope.error;
    $scope.rental_inclusion;

    $scope.modal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmRentalInclusion" name="frmRentalInclusion" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Rental Inclusion</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
        if (key > -1) {
            form += '<input type="text" value="' + $scope.rental_inclusions[key].title + '" class="form-control" name="title" id="title"> </div>';
        } else {
            form += '<input type="text" class="form-control" name="title" id="title"> </div>';
        }
        form += '</div>\
                            </div>\
                        </div>\
                    </form>';
        form = $(form);
        bootbox.confirm({
            title: "Rental Inclusion Detail",
            message: form,
            callback: function(res) {
                if (res) {
                    $scope.rental_inclusion = $('#frmRentalInclusion')[0]['elements'].title.value;
                    $scope.$apply();
                    if (key > -1) {
                        // Edit
                        $scope.rental_inclusions[key].title = $scope.rental_inclusion;
                        $scope.$apply();
                        $scope.update($scope.rental_inclusions[key].id);
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
        $http.get($rootScope.apiURL + 'v1/rental_inclusion?token=' + localStorage.getItem('satellizer_token')).success(function(rental_inclusions) {
            $scope.rental_inclusions = rental_inclusions.data;
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
            $http.delete($rootScope.apiURL + 'v1/rental_inclusion/' + id + '?token=' + localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.rental_inclusions.splice(index, 1);
                });
        }
    }

    // Add
    $scope.add = function() {

        $http.post($rootScope.apiURL + 'v1/rental_inclusion?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_inclusion
        }).success(function(response) {
            $scope.rental_inclusions.unshift(response.data);
            $scope.rental_inclusion = '';
        }).error(function() {
            console.log("error");
        });
    };

    // Update
    $scope.update = function(id) {
        $http.put($rootScope.apiURL + 'v1/rental_inclusion/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_inclusion
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function() {
            console.log("error");
        });
    }
});