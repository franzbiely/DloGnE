angular.module('MetronicApp').controller('ValuationDetailsController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http, FUNC) {
        $scope.type="valuation";
        $scope.data = [];   
        $scope.pdfs = [];  
        $scope.photos = [];  
        $scope.data.photo_ids = [];
        $scope.data.pdf_ids = []; 
        $scope.hasFile = false;
        // Load Data for Edit
        $scope.params = $stateParams; 
        $scope.isDisabled = false;
        $rootScope.pageSidebarClosed = false;
        $('.date-picker').datepicker({
            format: 'dd-mm-yyyy',
            autoclose: true}).on('changeDate', function (ev) {
               $(this).blur();
               $(this).datepicker('hide');
        });
        var isEdit = ($scope.params.valuation_id !== "" && typeof $scope.params.valuation_id !== 'undefined') ? true : false;
        if(isEdit) {
            $scope.page_title = "Edit Valuation";
            loadData($scope.params.valuation_id);
        }    
        else {
            $scope.page_title = "New Valuation";
            $scope.data.property_id = $state.params.property_id;
        }
    

        function loadData(id) {
            $http.get($rootScope.apiURL + 'v1/valuation/'+ id +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                $scope.data.id = response.data.id;
                $scope.data.date = response.data.date;
                $scope.data.remarks = response.data.remarks;
                $scope.data.property_id = response.data.property_id;
                $scope.data.land_value = response.data.land_value;
                $scope.data.land_component = response.data.land_component;
                $scope.data.insurance_value = response.data.insurance_value;
                $scope.data.improvement_component = response.data.improvement_component;
                $scope.data.area = response.data.area;
            }).error(function(error){
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            });
            var param = "source_id=" + id + "&source_table=valuations";
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
                        if(response.data[x].file_path !== '') {
                            $scope.hasFile = true;
                            $scope.pdfs[pdf_counter] = {
                                file_path : $rootScope.apiPublicURL + response.data[x].file_path,
                                file_name : response.data[x].file_name    
                            }
                            $scope.data.pdf_ids[pdf_counter] = response.data[x].id;
                            pdf_counter++;
                        }
                        
                        
                    }
                }
            }).error(function(error){
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            });
        }

        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            Dropzone.autoDiscover = false;
            
        });
        // Add
        $scope.save = function() {
            $scope.isDisabled = true;
            var param = {
                date : moment($scope.data.date, 'DD-MM-YYYY').format('YYYY-MM-DD'),
                remarks : $scope.data.remarks,
                land_value : $scope.data.land_value,
                land_component : $scope.data.land_component,
                insurance_value : $scope.data.insurance_value,
                improvement_component : $scope.data.improvement_component,
                area : $scope.data.area,
                pdf_ids : $scope.data.pdf_ids,
                property_id : $scope.data.property_id
            };

            if($state.current.name === 'valuations.new') {
                // if add
                $http.post($rootScope.apiURL + 'v1/valuation?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    $state.go('valuations.list', {property_id : $scope.data.property_id});    

                    alert('Added Successfully');
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }
            else {
                
                // // if edit
                $http.put($rootScope.apiURL + 'v1/valuation/' + $scope.params.valuation_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    alert('Update Successfully');
                    $state.go('valuations.list', {property_id : $scope.data.property_id});    
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }   
        }
        //======= dropzone for PDF===========
        $scope.dzOptionsPDF = {
            url : $rootScope.apiURL + 'v1/media' + '?token='+localStorage.getItem('satellizer_token'),
            paramName : 'files',
            params : {
                source_table : 'valuations',
                media_type : 'attached',
                source_id : 0
            },
            maxFilesize : '10',
            maxFiles: 1,
            acceptedFiles : 'application/pdf',
            addRemoveLinks : true
        };
        $scope.dzCallbacksPDF = {
            'addedfile' : function(file){
                $scope.newPDFFile = file;
            },
            'maxfilesexceeded' : function(file) {
                alert("No more files please!");
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
            $scope.hasFile = false;
        }
    }
);