/* Setup blank page controller */
angular.module('MetronicApp').controller('CityController', function($rootScope, $scope, settings, $http, $rootScope, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();
    });
    $scope.property_cities = [];
    $scope.error;
    $scope.property_city;

    $scope.cityModal = function(key) {
        if (typeof key === 'undefined') key = -1;
        var form = '<form ng-submit="foo()" id="frmCity" name="frmCity" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">City Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">';
        if (key > -1) {
            form += '<input type="text" value="' + $scope.property_cities[key].name + '" class="form-control" name="class" id="class"> </div>';
        } else {
            form += '<input type="text" class="form-control" name="class" id="class"> </div>';
        }
        form += '</div>\
                            </div>\
                        </div>\
                    </form>';
        form = $(form);
        bootbox.confirm({
            title: "City Detail",
            message: form,
            callback: function(res) {
                if (res) {
                    $scope.property_city = $('#frmCity')[0]['elements'].class.value;
                    $scope.$apply();
                    if (key > -1) {
                        // Edit
                        $scope.property_cities[key].name = $scope.property_city;
                        $scope.$apply();
                        $scope.updateCity($scope.property_cities[key].id);
                    } else {
                        // New
                        $scope.addCity();
                    }

                }
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/property_city?token=' + localStorage.getItem('satellizer_token')).success(function(property_cities) {
            $scope.property_cities = property_cities.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
    };
    $scope.init();

    // Delete
    $scope.deleteCity = function(index, id) {
        $http.delete($rootScope.apiURL + 'v1/property_city/' + id + '?token=' + localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.property_cities.splice(index, 1);
            });
    }

    // Add
    $scope.addCity = function() {

        $http.post($rootScope.apiURL + 'v1/property_city?token=' + localStorage.getItem('satellizer_token'), {
            name: $scope.property_city
        }).success(function(response) {
            $scope.property_cities.push(response.data);
            $scope.property_city = '';
        }).error(function() {
            console.log("error");
        });
    };

    // Update
    $scope.updateCity = function(id) {
        $http.put($rootScope.apiURL + 'v1/property_city/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
            name: $scope.property_city
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function() {
            console.log("error");
        });
    }
});