angular.module('MetronicApp').controller('SalesController', function($rootScope, $scope, $http, $timeout, $stateParams) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax(); // initialize core components  
    });
    $scope.showResult = function() {
    	$scope.resultReady = true;
    }
    $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
    $scope.property_id = $stateParams.property_id;

    // Dropzone
    // Dropzone.autoDiscover = false;
    // $scope.dzOptions = {
    //     url : '/alt_upload_url',
    //     paramName : 'photo',
    //     maxFilesize : '10',
    //     acceptedFiles : 'image/jpeg, images/jpg, image/png',
    //     addRemoveLinks : true
    // };
    // $scope.dzCallbacks = {
    //     'addedfile' : function(file){
    //         console.log(file);
    //         $scope.newFile = file;
    //     },
    //     'success' : function(file, xhr){
    //         console.log(file, xhr);
    //     }
    // };
    // $scope.dzMethods = {};
    // $scope.removeNewFile = function(){
    //     $scope.dzMethods.removeFile($scope.newFile); //We got $scope.newFile from 'addedfile' event callback
    // }

    // Display
    $scope.init = function() {
        $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
            $scope.sales = res.data;
        }).error(function(error) {
            console.log('Service error : ',error);
        })
    };
    $scope.init();
});