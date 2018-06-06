angular.module('MetronicApp').controller('SalesDetailsController', 
    function($rootScope, $scope, settings, $templateCache, $scope, $state, $stateParams, $http, FUNC) {
        $scope.type="sales";
        $scope.data = [];   
        $scope.pdfs = [];  
        $scope.photos = [];  
        $scope.data.photo_ids = [];
        $scope.data.pdf_ids = []; 
        
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
        var isEdit = ($scope.params.sales_id !== "" && typeof $scope.params.sales_id !== 'undefined') ? true : false;
        if(isEdit) {
            $scope.page_title = "Edit Sales";
            loadData($scope.params.sales_id);
        }    
        else {
            $scope.page_title = "New Sales";
            $scope.data.property_id = $state.params.property_id;
        }

        function loadData(id) {
            $http.get($rootScope.apiURL + 'v1/sale/'+ id +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                $scope.data.id = response.data.id;
                $scope.data.date = moment(response.data.date, 'YYYY-MM-DD').format('DD-MM-YYYY');
                $scope.data.description = response.data.description;
                $scope.data.est_improvement_value = response.data.est_improvement_value;
                $scope.data.est_land_rate = response.data.est_land_rate;
                $scope.data.est_land_value = response.data.est_land_value;
                $scope.data.price = response.data.price;
                $scope.data.property = response.data.property;
                $scope.data.property_id = response.data.property_id;
                $scope.data.purchaser = response.data.purchaser;
                $scope.data.remarks = response.data.remarks;
                $scope.data.source = response.data.source;
                $scope.data.vendor = response.data.vendor;
            }).error(function(error){
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
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
            Dropzone.autoDiscover = false;
        });
        // Add
        $scope.save = function() {
            $scope.isDisabled = true;
            var param = {
                date : $scope.data.date,
                description : $scope.data.description,
                est_improvement_value : $scope.data.est_improvement_value,
                est_land_rate : $scope.data.est_land_rate,
                est_land_value : $scope.data.est_land_value,
                price : $scope.data.price,
                property : $scope.data.property,
                property_id : $scope.data.property_id,
                purchaser : $scope.data.purchaser,
                remarks : $scope.data.remarks,
                source : $scope.data.source,
                vendor : $scope.data.vendor,
                pdf_ids : $scope.data.pdf_ids
            };

            if($state.current.name === 'sales.new') {
                // if add
                $http.post($rootScope.apiURL + 'v1/sale?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    $state.go('sales.list', {property_id : $scope.data.property_id});    

                    alert('Added Successfully');
                }).error(function(error){
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            }
            else {
                
                // // if edit
                $http.put($rootScope.apiURL + 'v1/sale/' + $scope.params.sales_id + '?token='+localStorage.getItem('satellizer_token'), param).success(function(response) {
                    alert('Update Successfully');
                    $state.go('sales.list', {property_id : $scope.data.property_id});    
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
                source_table : 'sales',
                media_type : 'attached',
                source_id : 0
            },
            maxFilesize : '5',
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
            },
            'addedfile' : function(file) {
                $(file.previewElement).find(".dz-image img").attr("src", "assets/img/pdf.png");
            }
        };
        //========= /dropzone PDF ========

        $scope.removePDF = function(key) {
            delete $scope.data.pdf_ids[key];
            delete $scope.pdfs[key];
            $scope.pdfs.splice(key, 1);
            $scope.data.pdf_ids.splice(key,1);
        }
    }
);