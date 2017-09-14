angular.module('MetronicApp')
    .controller('PropertyNewController', 
    function($rootScope, $scope, settings, $templateCache, $scope, FileUploader, $state, $http) {

        

        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            Dropzone.autoDiscover = false;
        });
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
        var uploader = $scope.uploader = new FileUploader({
            url: '../assets/global/plugins/angularjs/plugins/angular-file-upload/upload.php'
        });
        // FILTERS
        uploader.filters.push({
            name: 'customFilter',
            fn: function(item /*{File|FileLikeObject}*/ , options) {
                return this.queue.length < 10;
            }
        });
        $scope.removeNewFile = function(){
            $scope.dzMethods.removeFile($scope.newFile); //We got $scope.newFile from 'addedfile' event callback
        }
        
        // CALLBACKS
        uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/ , filter, options) {
            console.info('onWhenAddingFileFailed', item, filter, options);
        };
        uploader.onAfterAddingFile = function(fileItem) {
            console.info('onAfterAddingFile', fileItem);
        };
        uploader.onAfterAddingAll = function(addedFileItems) {
            console.info('onAfterAddingAll', addedFileItems);
        };
        uploader.onBeforeUploadItem = function(item) {
            console.info('onBeforeUploadItem', item);
        };
        uploader.onProgressItem = function(fileItem, progress) {
            console.info('onProgressItem', fileItem, progress);
        };
        uploader.onProgressAll = function(progress) {
            console.info('onProgressAll', progress);
        };
        uploader.onSuccessItem = function(fileItem, response, status, headers) {
            console.info('onSuccessItem', fileItem, response, status, headers);
        };
        uploader.onErrorItem = function(fileItem, response, status, headers) {
            console.info('onErrorItem', fileItem, response, status, headers);
        };
        uploader.onCancelItem = function(fileItem, response, status, headers) {
            console.info('onCancelItem', fileItem, response, status, headers);
        };
        uploader.onCompleteItem = function(fileItem, response, status, headers) {
            console.info('onCompleteItem', fileItem, response, status, headers);
        };
        uploader.onCompleteAll = function() {
            console.info('onCompleteAll');
        };
        
        // Add
        $scope.addProperty = function() {
            $http.post($rootScope.apiURL + 'v1/property', {
                code : $scope.data.code,
                description : $scope.data.description,
                property_use_id : $scope.data.property_use_id,
                property_class_id : $scope.data.property_class_id,
                property_lease_type_id : $scope.data.property_lease_type_id,
                property_city_id : $scope.data.property_city_id,
                property_suburb_id : $scope.data.property_suburb_id,
                port : $scope.data.port,
                sec : $scope.data.sec,
                lot : $scope.data.lot,
                unit : $scope.data.unit,
                land_value : $scope.data.land_value,
                land_component : $scope.data.land_component,
                improvement_component : $scope.data.improvement_component,
                area : $scope.data.area
            }).success(function(response) {
                $state.go('property.list');
            }).error(function(){
                console.log("error");
            });
        }

    }
);