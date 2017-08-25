angular.module('MetronicApp').controller('PropertyNewController', [
    '$rootScope', '$scope', 'settings', '$templateCache', '$scope', 'FileUploader',
    function($rootScope, $scope, settings, $templateCache, $scope, FileUploader) {
        $scope.$on('$viewContentLoaded', function() {
            // initialize core components
            App.initAjax();

            // set default layout mode
            // $rootScope.settings.layout.pageContentWhite = true;
            // $rootScope.settings.layout.pageBodySolid = false;
            // $rootScope.settings.layout.pageSidebarClosed = false;
        });

        $scope.uploadGallery = function() {
            var template = $templateCache.get('property-upload-gallery.html');
            bootbox.confirm({
                title: "Upload Gallery Images",
                message: template,
                className: 'large',
                callback: function(res) {
                    if (res)
                        $('#frmGalleryUpload').submit();
                }
            });

        }
        $scope.foo = "Test";

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
        console.info('uploader', $scope.uploader);

    }
]);