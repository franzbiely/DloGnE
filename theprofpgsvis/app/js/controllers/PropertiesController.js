angular.module('MetronicApp').controller('PropertiesController', 
    function($rootScope, $scope, $http, settings, $state) {
        $scope.archives = [];
        $scope.properties = [];
        $scope.error;
        $scope.property;
        $scope.isDisabled = false;
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        

        $scope.init = function() {
            var url = $rootScope.apiURL + 'v1/property?token='+localStorage.getItem('satellizer_token');
            if($state.current.name === "property.archives") {
                url = $rootScope.apiURL + 'v1/property/param/is_archive=1?token='+localStorage.getItem('satellizer_token');
            }
            $http.get(url).success(function(property) {
                $scope.properties = property.data;
            }).error(function(error) {
                console.log('Service error : ',error);
                if(error.error == "token_expired")
                    $rootScope.logout();
            })
        }
        $scope.init();

        // Delete
        $scope.deleteProperty = function(index, id) {
            $scope.isDisabled = true;
            $http.delete($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope.properties.splice(index, 1);
                    $scope.isDisabled = false;
                });;
        }

        // Archive
        $scope.archiveProperty = function(index, id) {
            $scope.isDisabled = true;
            var param = {
                is_archive : 1
            };
            $http.patch($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'), param)
                .success(function() {
                    $scope.properties.splice(index, 1);
                    $scope.isDisabled = false;
                });;
        }
        // Unarchive
        $scope.unarchiveProperty = function(index, id) {
            $scope.isDisabled = true;
            var param = {
                is_archive : 0
            };
            $http.patch($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'), param)
                .success(function() {
                    $scope.properties.splice(index, 1);
                    $scope.isDisabled = false;
                });;
        }
    }
);
