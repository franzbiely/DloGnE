/* Setup blank page controller */
angular.module('MetronicApp').controller('PropertiesController', ['$rootScope', '$scope', 'settings', function($rootScope, $scope, settings) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();

        // set default layout mode
        // $rootScope.settings.layout.pageContentWhite = true;
        // $rootScope.settings.layout.pageBodySolid = false;
        // $rootScope.settings.layout.pageSidebarClosed = false;
    });
    $scope.gotoasdf = function() {
        alert('hasdf');
    }
    $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;


}]);
