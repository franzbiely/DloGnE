angular.module('MetronicApp')
    .controller('PropertyNewController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http, FileUploader, $timeout) {
        $scope.data = [];  
        $scope.photos = [];  
        $scope.data.photo_ids = [];

        $scope.data.attached_ids = [];
        // Load Data for Edit
        $scope.params = $stateParams; 
        $scope.isReadOnly = $scope.$parent.type === "sales" ? true : false;

        //======= dropzone ===========
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
                console.log(file);
                $scope.newFile = file;
            },
            'success' : function(file, xhr){
                $scope.data.photo_ids.push(xhr.data.id);
            }
        };
        
        //========= /dropzone ========

        $scope.select_change = function(res, model) {
            $scope[model] = res;
        }
        $scope.removePhoto = function(key) {
            delete $scope.data.photo_ids[key];
            delete $scope.photos[key];
            $scope.photos.splice(key, 1);
            $scope.data.photo_ids.splice(key,1);
            console.log($scope.photos);
            console.log($scope.data.photo_ids);
        }

        var isEdit = ($scope.params.property_id !== "" && typeof $scope.params.property_id !== 'undefined') ? true : false;

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
            var param = "source_id=" + id + "&source_table=properties&media_type=image";
            $http.get($rootScope.apiURL + 'v1/media/param/'+ param +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                for(var x=0; x < response.data.length; x++) {
                    $scope.photos[x] = {
                        file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                        file_name : response.data[x].file_name    
                    }    
                    $scope.data.photo_ids[x] = response.data[x].id;
                }
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
                if(isEdit) {
                    loadData($scope.params.property_id);
                }    
            },true);
            
        });

        
        

        // Add
        $scope.saveProperty = function() {
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
                area : $scope.data.area,
                photo_ids : $scope.data.photo_ids
            };
            if(isEdit) {
                // if edit
                $http.put($rootScope.apiURL + 'v1/property/' + $scope.params.property_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    alert('Update Successfully');
                    $state.go('property.list');    
                }).error(function(error){
                    console.log("error");
                    if(error.error == "token_expired")
                        $rootScope.logout();
                });
            }
            else {
                // if add
                $http.post($rootScope.apiURL + 'v1/property?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    $state.go('property.list');    
                }).error(function(){
                    console.log("error");
                    if(error.error == "token_expired")
                        $rootScope.logout();
                });
            }   
        }


    }
);