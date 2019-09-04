angular.module('MetronicApp').controller('PropertiesController', 
    function($rootScope, $scope, $http, settings, $state, FUNC) {
        $scope.page_name = "properties";
        $scope.current_page = 1;
        $scope.total;
        $scope.limit = 10;
        $scope.archives = [];
        $scope.properties = [];
        $scope.error;
        $scope.property;
        $scope.isDisabled = false;
        $rootScope.pageSidebarClosed = false;
        $scope.filterPropID = null;
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax();
        });
        
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
        
        // Fetch data
        $scope.fetch = function() {

            var url;
            if($state.current.name === "property.archives") {
                url = $rootScope.apiURL + 'v1/property/param/is_archive=1?limit=' + $scope.limit + '&page=' + $scope.current_page + '&token='+localStorage.getItem('satellizer_token');
            } 
            else {
                if($scope.filterPropID != null && $scope.filterPropID != '') {
                    url = $rootScope.apiURL + 'v1/property/search/'+$scope.filterPropID+'?limit=' + $scope.limit + '&page=' + $scope.current_page + '&token='+localStorage.getItem('satellizer_token');    
                }
                else {
                    url = $rootScope.apiURL + 'v1/property?limit=' + $scope.limit + '&page=' + $scope.current_page + '&token='+localStorage.getItem('satellizer_token');    
                }
            }
            $http.get(url).success(function(property) {
                $scope.properties = property.data;
                $scope.current_page = property.current_page;
                $scope.total = property.total;
            }).error(function(error) {
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            })
        }
        $scope.fetch();


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
        $scope.archiveProperty = function(index, id, vals_count, sales_count) {
            // $scope.isDisabled = true;

            if(vals_count > 0 || sales_count > 0) {
                var archive_confirmed = confirm("This property has valuation/sales information. \nIf you continue, the sales and valuation records will be archived as well. \nDo you want to continue?");
                if(archive_confirmed) {
                    var param = {
                        is_archive : 1
                    };
                    $http.put($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'), param)
                        .success(function() {
                            $scope.properties.splice(index, 1);
                            $scope.isDisabled = false;
                        });;        
                }
            }
            else {
                var param = {
                    is_archive : 1
                };
                $http.put($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'), param)
                    .success(function() {
                        $scope.properties.splice(index, 1);
                        $scope.isDisabled = false;
                    });;
            }



            
        }
        // Unarchive
        $scope.unarchiveProperty = function(index, id) {
            $scope.isDisabled = true;
            var param = {
                is_archive : 0
            };
            $http.put($rootScope.apiURL + 'v1/property/' + id + '?token='+localStorage.getItem('satellizer_token'), param)
                .success(function() {
                    $scope.properties.splice(index, 1);
                    $scope.isDisabled = false;
                });;
        }
    }
);
