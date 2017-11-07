/* Setup blank page controller */
angular.module('MetronicApp').controller('UseController', ['$rootScope', '$scope', 'settings', '$http', '$compile', function($rootScope, $scope, settings, $http, $compile, FUNC) {
    $scope.$on('$viewContentLoaded', function() {
        // initialize core components
        App.initAjax();

        // set default layout mode
        // $rootScope.settings.layout.pageContentWhite = true;
        // $rootScope.settings.layout.pageBodySolid = false;
        // $rootScope.settings.layout.pageSidebarClosed = false;
    });
    
    
    $scope.useModal = function(key) {
        if (!key) key = -1;

        var form = '<form ng-submit="foo()" id="frmUse" name="frmUse" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Use Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if(key > -1) {
                form +=                     '<input type="text" value="'+$scope.property_uses[key].name+'" class="form-control" name="use" id="use"> </div>';
            }
            else {
                form +=                     '<input type="text" class="form-control" name="use" id="use"> </div>';    
            }
            form +=             '</div>\
                            </div>\
                        </div>\
                    </form>';
            form = $(form);
        bootbox.confirm({
            title: "Add New Use",
            message: form,
            callback: function(res) {
                if (res){
                    $scope.property_use = $('#frmUse')[0]['elements'].use.value;
                    $scope.$apply();
                    if(key > -1) {
                        // Edit
                        $scope.property_uses[key].name = $scope.property_use;
                        $scope.$apply();
                        $scope.updateUse($scope.property_uses[key].id);
                    }
                    else {
                        // New
                        $scope.addUse();
                    }

                }
            }
        });
    }

    $scope.property_uses = [];
    $scope.error;
    $scope.property_use;

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(property_uses) {
            $scope.property_uses = property_uses.data;
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
    };
    $scope.init();

    // Delete
    $scope.deleteUse = function(index, useId) {
        $http.delete($rootScope.apiURL + 'v1/property_use/' + useId + '?token='+localStorage.getItem('satellizer_token'))
            .success(function() {
                $scope.property_uses.splice(index, 1);
            });;
    }

    // Add
    $scope.addUse = function() {
 
        $http.post($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_use
        }).success(function(response) {
            $scope.property_uses.push(response.data);
            $scope.property_use = '';
        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateUse = function(useId){
      $http.put($rootScope.apiURL + 'v1/property_use/' + useId + '?token='+localStorage.getItem('satellizer_token'), {
            name: $scope.property_use
        }).success(function(response) {
            alert("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }

}]);