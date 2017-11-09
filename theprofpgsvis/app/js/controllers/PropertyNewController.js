angular.module('MetronicApp')
    .controller('PropertyNewController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http, FileUploader, $timeout, FUNC) {
        $scope.data = [];  
        $scope.pdfs = [];  
        $scope.photos = [];  
        $scope.data.photo_ids = [];
        $scope.data.pdf_ids = [];
        $scope.data.lot = '';
        $scope.data.sec = '';
        $scope.data.port ='';
        $scope.page_title = '';
        $rootScope.pageSidebarClosed = true;
    
        // Creating Select Options

        $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_use_options = toOption(ret.data);
            $scope.property_use_options.splice(0, 0, { id : '', label : '[Choose Use]' });
            $scope.data.property_use_selected = $scope.property_use_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_class_options = toOption(ret.data);
            $scope.property_class_options.splice(0, 0, { id : '', label : '[Choose Class]' });
            $scope.data.property_class_selected = $scope.property_class_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_lease_type_options = toOption(ret.data);
            $scope.property_lease_type_options.splice(0, 0, { id : '', label : '[Choose Lease Type]' });
            $scope.data.property_lease_type_selected = $scope.property_lease_type_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_city_options = toOption(ret.data);
            $scope.property_city_options.splice(0, 0, { id : '', label : '[Choose City]' });
            $scope.data.property_city_selected = $scope.property_city_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_suburb_options = toOption(ret.data, 'suburb');
            $scope.property_suburb_options.splice(0, 0, { id : '', label : '[Choose Suburb]' });
            $scope.data.property_suburb_selected = $scope.property_suburb_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
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
                $scope.page_title = "Edit Property";
                loadData($scope.params.property_id);
            }    
            else {
                $scope.page_title = "New Property";
            }
        },true);

        // Load Data for Edit
        $scope.params = $stateParams; 
        $scope.property_id = $scope.params.property_id;
        $scope.isReadOnly = $scope.$parent.type === "sales" ? true : false;
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
        $scope.fill_sample_data = function() {
            $scope.data.code = 'CODE123';
            $scope.data.description = 'Lorem Ipsum';
            $scope.data.property_use_selected = $scope.property_use_options[1];
            $scope.data.property_class_selected = $scope.property_class_options[1];
            $scope.data.property_lease_type_selected = $scope.property_lease_type_options[1];
            $scope.data.property_city_selected = $scope.property_city_options[1];
            $scope.data.property_suburb_selected = $scope.property_suburb_options[1];
            $scope.data.port = 1;
            $scope.data.sec = 2;
            $scope.data.lot = '';
            $scope.data.unit = 3;
            $scope.data.land_value = 4;
            $scope.data.land_component = 5;
            $scope.data.improvement_component = 6;
            $scope.data.area = 7;
            $scope.data.owner = "Owner";
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

        $scope.select_change = function(res, model) {
            $scope[model] = res;
        }
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
        $scope.address_option = 'na';
        $scope.property_set_address_option = function(option) {
            switch(option) {
                case 1 : {
                    if($scope.data.sec != '' || $scope.data.lot !='') {
                        $scope.address_option = 'seclot';
                    }
                    else {
                        $scope.address_option = 'na';
                    }
                    break;
                }
                case 2 :
                    if($scope.data.port != '') {
                        $scope.address_option = 'port';
                    }
                    else {
                        $scope.address_option = 'na';
                    }
                    break;
            }
        }

        var isEdit = ($scope.params.property_id !== "" && typeof $scope.params.property_id !== 'undefined') ? true : false;

        function toOption(data, label) {
            if (!label) label = 'name';
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
                $scope.data.owner = response.data.owner;

                if(response.data.port === '' && (response.data.sec !== '' || $scope.data.lot !== '' )) {
                    $scope.address_option = "seclot";
                }
                else if(response.data.port !== '' && (response.data.sec === '' && $scope.data.lot === '')) {
                    $scope.address_option = "port";
                }
            }).error(function(){
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            });

            // Get Valuation data
            $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })

            // Get Sales data
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })

            var param = "source_id=" + id + "&source_table=properties";
            $http.get($rootScope.apiURL + 'v1/media/param/'+ param +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                var photo_counter = 0, pdf_counter = 0;

                for(var x=0; x < response.data.length; x++) {
                    if(response.data[x].media_type.indexOf('image') >= 0) {
                        // true
                        $scope.photos[photo_counter] = {
                            file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                            file_name : response.data[x].file_name,
                            created_at :  response.data[x].created_at
                        }    
                        $scope.data.photo_ids[photo_counter] = response.data[x].id;
                        photo_counter++;
                    }
                    else {
                        $scope.pdfs[pdf_counter] = {
                            file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                            file_name : response.data[x].file_name,
                            created_at :  response.data[x].created_at
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
            Dropzone.autoDiscover = false;
            
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
                owner : $scope.data.owner,
                photo_ids : $scope.data.photo_ids,
                pdf_ids : $scope.data.pdf_ids
            };
            if(isEdit) {
                // if edit
                $http.put($rootScope.apiURL + 'v1/property/' + $scope.params.property_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'modified property #' + $scope.params.property_id
                    }).success(function(response) {
                        alert('Update Successfully');
                        $state.go('property.list');
                    });
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }
            else {
                // if add
                $http.post($rootScope.apiURL + 'v1/property?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'added new property'
                    }).success(function(response) {
                        $state.go('property.list');
                    });
                }).error(function(){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }   
        }


    }
);