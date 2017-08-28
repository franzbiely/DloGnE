angular.module('MetronicApp').controller('SalesController', function($rootScope, $scope, $http, $timeout) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax(); // initialize core components        
    });

    // set sidebar closed and body solid layout mode
    // $rootScope.settings.layout.pageContentWhite = true;
    // $rootScope.settings.layout.pageBodySolid = true;
    // $rootScope.settings.layout.pageSidebarClosed = false;

    $scope.showResult = function() {
    	$scope.resultReady = true;
    }

    $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
});