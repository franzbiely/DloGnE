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


    // Dropzone
    Dropzone.autoDiscover = false;
    $scope.dzOptions = {
        url : '/alt_upload_url',
        paramName : 'photo',
        maxFilesize : '10',
        acceptedFiles : 'image/jpeg, images/jpg, image/png',
        addRemoveLinks : true
    };
    $scope.dzCallbacks = {
        'addedfile' : function(file){
            console.log(file);
            $scope.newFile = file;
        },
        'success' : function(file, xhr){
            console.log(file, xhr);
        }
    };
    $scope.dzMethods = {};
    $scope.removeNewFile = function(){
        $scope.dzMethods.removeFile($scope.newFile); //We got $scope.newFile from 'addedfile' event callback
    }
});