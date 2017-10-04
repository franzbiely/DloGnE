angular.module('MetronicApp').controller('SalesDetailsController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http) {
        $scope.type="sales";
        $scope.data = [];   
        $scope.pdfs = [];  
        $scope.photos = [];  
        $scope.data.photo_ids = [];
        $scope.data.pdf_ids = []; 
        // Load Data for Edit
        $scope.params = $stateParams; 

        $scope.isDisabled = false;

        function loadData(id) {
            $http.get($rootScope.apiURL + 'v1/sale/'+ id +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                $scope.data.id = response.id;
                $scope.data.date = response.data.date;
                $scope.data.buyer = response.data.buyer;
                $scope.data.value = response.data.value;
                $scope.data.remarks = response.data.remarks;
            }).error(function(error){
                console.log("error");
                if(error.error == "token_expired")
                    $rootScope.logout();
            });
            var param = "source_id=" + id + "&source_table=sales";
            $http.get($rootScope.apiURL + 'v1/media/param/'+ param +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                var photo_counter = 0, pdf_counter = 0;

                for(var x=0; x < response.data.length; x++) {
                    if(response.data[x].media_type.indexOf('image') >= 0) {
                        // true
                        $scope.photos[photo_counter] = {
                            file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                            file_name : response.data[x].file_name    
                        }    
                        $scope.data.photo_ids[photo_counter] = response.data[x].id;
                        photo_counter++;
                    }
                    else {
                        $scope.pdfs[pdf_counter] = {
                            file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                            file_name : response.data[x].file_name    
                        }
                        $scope.data.pdf_ids[pdf_counter] = response.data[x].id;
                        pdf_counter++;
                    }
                }
            }).error(function(){
                console.log("error");
            });
        }

        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            // Dropzone.autoDiscover = false;
            loadData($scope.params.sales_id);
        });

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
        // var uploader = $scope.uploader = new FileUploader({
        //     url: '../assets/global/plugins/angularjs/plugins/angular-file-upload/upload.php'
        // });
        // // FILTERS
        // uploader.filters.push({
        //     name: 'customFilter',
        //     fn: function(item /*{File|FileLikeObject}*/ , options) {
        //         return this.queue.length < 10;
        //     }
        // });
        // $scope.removeNewFile = function(){
        //     $scope.dzMethods.removeFile($scope.newFile); //We got $scope.newFile from 'addedfile' event callback
        // }
        
        // // CALLBACKS
        // uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/ , filter, options) {
        //     console.info('onWhenAddingFileFailed', item, filter, options);
        // };
        // uploader.onAfterAddingFile = function(fileItem) {
        //     console.info('onAfterAddingFile', fileItem);
        // };
        // uploader.onAfterAddingAll = function(addedFileItems) {
        //     console.info('onAfterAddingAll', addedFileItems);
        // };
        // uploader.onBeforeUploadItem = function(item) {
        //     console.info('onBeforeUploadItem', item);
        // };
        // uploader.onProgressItem = function(fileItem, progress) {
        //     console.info('onProgressItem', fileItem, progress);
        // };
        // uploader.onProgressAll = function(progress) {
        //     console.info('onProgressAll', progress);
        // };
        // uploader.onSuccessItem = function(fileItem, response, status, headers) {
        //     console.info('onSuccessItem', fileItem, response, status, headers);
        // };
        // uploader.onErrorItem = function(fileItem, response, status, headers) {
        //     console.info('onErrorItem', fileItem, response, status, headers);
        // };
        // uploader.onCancelItem = function(fileItem, response, status, headers) {
        //     console.info('onCancelItem', fileItem, response, status, headers);
        // };
        // uploader.onCompleteItem = function(fileItem, response, status, headers) {
        //     console.info('onCompleteItem', fileItem, response, status, headers);
        // };
        // uploader.onCompleteAll = function() {
        //     console.info('onCompleteAll');
        // };
        
        // $scope.select_change = function(res, model) {
        //     $scope[model] = res;
        // }
        
        // console.log($scope.params);
        // Add
        $scope.save = function() {

            $scope.isDisabled = true;
            var param = {
                date : $scope.data.date,
                buyer : $scope.data.buyer,
                value : $scope.data.value,
                remarks : $scope.data.remarks,
                photo_ids : $scope.data.photo_ids,
                pdf_ids : $scope.data.pdf_ids
            };

            if($scope.params.sales_id !== "") {
                // if edit
                $http.put($rootScope.apiURL + 'v1/sale/' + $scope.params.sales_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    alert('Update Successfully');
                    $state.go('property.sales', {property_id : $scope.params.property_id});    
                }).error(function(){
                    console.log("error");
                });
            }
            else {
                // if add
                $http.post($rootScope.apiURL + 'v1/sale?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    $state.go('property.sales', {property_id : $scope.params.property_id});    
                }).error(function(){
                    console.log("error");
                });
            }   
        }

        //======= dropzone for photos===========
        $scope.dzOptions = {
            url : $rootScope.apiURL + 'v1/media' + '?token='+localStorage.getItem('satellizer_token'),
            paramName : 'photo',
            params : {
                source_table : 'properties',
                media_type : 'image',
                source_id : 0
            },
            maxFilesize : '10',
            acceptedFiles : 'image/jpeg, images/jpg, image/png',
            addRemoveLinks : true
        };
        $scope.dzCallbacks = {
            'addedfile' : function(file){
                $scope.newFile = file;
            },
            'success' : function(file, xhr){
                $scope.data.photo_ids.push(xhr.data.id);
            }
        };
        //========= /dropzone ========
        //======= dropzone for PDF===========
        $scope.dzOptionsPDF = {
            url : $rootScope.apiURL + 'v1/media' + '?token='+localStorage.getItem('satellizer_token'),
            paramName : 'files',
            params : {
                source_table : 'properties',
                media_type : 'attached',
                source_id : 0
            },
            maxFilesize : '10',
            acceptedFiles : 'application/pdf',
            addRemoveLinks : true
        };
        $scope.dzCallbacksPDF = {
            'addedfile' : function(file){
                $scope.newPDFFile = file;
            },
            'success' : function(file, xhr){
                $scope.data.pdf_ids.push(xhr.data.id);
            }
        };
        //========= /dropzone PDF ========
        $scope.removePhoto = function(key) {
            delete $scope.data.photo_ids[key];
            delete $scope.photos[key];
            $scope.photos.splice(key, 1);
            $scope.data.photo_ids.splice(key,1);
        }
        $scope.removePDF = function(key) {
            delete $scope.data.pdf_ids[key];
            delete $scope.pdfs[key];
            $scope.pdfs.splice(key, 1);
            $scope.data.pdf_ids.splice(key,1);
        }
    }
);