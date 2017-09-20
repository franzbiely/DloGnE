angular.module('MetronicApp')
    .controller('PropertyNewController', 
    function($rootScope, $scope, settings, $templateCache, $scope, FileUploader, $state, $stateParams, $http) {

        $scope.data = [];    
        // Load Data for Edit
        $scope.params = $stateParams; 

        function toOption(data, label='name') {
            var options = [ data.length ];
            for(i = 0; i < data.length; i++){
                options[ i ] = {
                    id :  data[i].id,
                    label : data[i][label]
                };
            }
            return options;
        }

        function loadData(id) {
            $http.get($rootScope.apiURL + 'v1/property/'+ id +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                console.log(response.data);
                $scope.data.code = response.data.code;
                $scope.data.description = response.data.description;
                $scope.data.property_use_selected = response.data.property__use;
                $scope.data.property_class_selected = response.data.property__class;
                $scope.data.property_lease_type_selected = response.data.property__lease__type;
                $scope.data.property_city_selected = response.data.property__city;
                $scope.data.property_suburb_selected = response.data.property__suburb;
                $scope.data.port = response.data.port;
                $scope.data.sec = response.data.sec;
                $scope.data.lot = response.data.lot;
                $scope.data.unit = response.data.unit;
                $scope.data.land_value = response.data.land_value;
                $scope.data.land_component = response.data.land_component;
                $scope.data.improvement_component = response.data.improvement_component;
                $scope.data.area = response.data.area;
                console.log($scope.data);
            }).error(function(){
                console.log("error");
            });
        }

        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            Dropzone.autoDiscover = false;
            // Creating Select Options

            $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_use_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_use');  
            })
            $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_class_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_class');  
            })
            $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_lease_type_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_lease_type');  
            })
            $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_city_options = toOption(ret.data);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_city');  
            })
            $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_suburb_options = toOption(ret.data, 'suburb');
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_suburb');  
            })

            $scope.$watchGroup( ["property_use_options", "property_class_options","property_lease_type_options","property_city_options","property_suburb_options"] , function(n,o){  
                
                if(n==o) return;
                // check if all fields has data.
                for(i = 0; i<n.length; i++) {
                    if(typeof n[i] === "undefined")
                        return;
                }
                // check if edit mode
                if($scope.params.id !== "") {
                    loadData($scope.params.id);
                }    
            },true);
            
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
        
        $scope.select_change = function(res, model) {
            $scope[model] = res;
        }
        

        // Add
        $scope.addProperty = function() {
            var param = {
                code : $scope.data.code,
                description : $scope.data.description,
                property_use_id : $scope.data.property_use_selected.id,
                property_class_id : $scope.data.property_class_selected.id,
                property_lease_type_id : $scope.data.property_lease_type_selected.id,
                property_city_id : $scope.data.property_city_selected.id,
                property_suburb_id : $scope.data.property_suburb_selected.id,
                port : $scope.data.port,
                sec : $scope.data.sec,
                lot : $scope.data.lot,
                unit : $scope.data.unit,
                land_value : $scope.data.land_value,
                land_component : $scope.data.land_component,
                improvement_component : $scope.data.improvement_component,
                area : $scope.data.area
            };
            console.log('from angular', param);
            $http.post($rootScope.apiURL + 'v1/property?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                // $state.go('property.list');
            }).error(function(){
                console.log("error");
            });
        }



    }
);