/* Setup blank page controller */
angular.module('MetronicApp').controller('RentalReviewMethodController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
    });
    $scope.rental_review_methods = [];
    $scope.error;
    $scope.rental_review_method;

    $scope.modal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmRentalReviewMethod" name="frmRentalReviewMethod" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Rental Review Method</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
        if (key > -1) {
            form += '<input type="text" value="' + $scope.rental_review_methods[key].title + '" class="form-control" name="title" id="title"> </div>';
        } else {
            form += '<input type="text" class="form-control" name="title" id="title"> </div>';
        }
        form += '</div>\
                            </div>\
                        </div>\
                    </form>';
        form = $(form);
        bootbox.confirm({
            title: "Rental Review Method Detail",
            message: form,
            callback: function(res) {
                if (res) {
                    $scope.rental_review_method = $('#frmRentalReviewMethod')[0]['elements'].title.value;
                    $scope.$apply();
                    if (key > -1) {
                        // Edit
                        $scope.rental_review_methods[key].title = $scope.rental_review_method;
                        $scope.$apply();
                        $scope.update($scope.rental_review_methods[key].id);
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
        $http.get($rootScope.apiURL + 'v1/rental_review_method?token=' + localStorage.getItem('satellizer_token')).success(function(rental_review_methods) {
            $scope.rental_review_methods = rental_review_methods.data;
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
            $http.delete($rootScope.apiURL + 'v1/rental_review_method/' + id + '?token=' + localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.rental_review_methods.splice(index, 1);
                });
        }
    }

    // Add
    $scope.add = function() {

        $http.post($rootScope.apiURL + 'v1/rental_review_method?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_review_method
        }).success(function(response) {
            $scope.rental_review_methods.unshift(response.data);
            $scope.rental_review_method = '';
        }).error(function() {
            console.log("error");
        });
    };

    // Update
    $scope.update = function(id) {
        $http.put($rootScope.apiURL + 'v1/rental_review_method/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
            title: $scope.rental_review_method
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function() {
            console.log("error");
        });
    }
});