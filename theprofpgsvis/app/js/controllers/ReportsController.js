angular.module('MetronicApp').controller('ReportsController', 
    function($rootScope, $scope, $http, $timeout, $window, $http, $state, FUNC) {
        $scope.multipleResultsShow = false;
        $scope.page_name = 'reports';
        $scope.isReport = true;
        $scope.pdfs = [];  
        $scope.photos = [];
        $rootScope.pageSidebarClosed = false;
        $scope.limit = 10;
        $scope.current_page = 1;
        $scope.total;
        $scope.data_temps = {
            include_with_valuation : true,
            include_with_sales : true,
            include_with_rentals : true
        };


        $scope.mdata = {
            current_page:1,
            total : null,
            str : null
        };

        // Load Select options data
        $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_use_options = toOption(ret.data);
            $scope.property_use_options.splice(0, 0, { id : '', label : '[Choose Use]' });
            $scope.data_temps.property_use_selected = $scope.property_use_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_class_options = toOption(ret.data);
            $scope.property_class_options.splice(0, 0, { id : '', label : '[Choose Class]' });
            $scope.data_temps.property_class_selected = $scope.property_class_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_lease_type_options = toOption(ret.data);
            $scope.property_lease_type_options.splice(0, 0, { id : '', label : '[Choose Lease Type]' });
            $scope.data_temps.property_lease_type_selected = $scope.property_lease_type_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_city_options = toOption(ret.data);
            $scope.property_city_options.splice(0, 0, { id : '', label : '[Choose City]' });
            $scope.data_temps.property_city_selected = $scope.property_city_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_suburb_options = toOption(ret.data, 'suburb');
            $scope.property_suburb_options.splice(0, 0, { id : '', label : '[Choose Suburb]' });
            $scope.data_temps.property_suburb_selected = $scope.property_suburb_options[0];
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
        },true);
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
        function toQueryString(obj, prefix) {
            var str = [], k, v;
            for(var p in obj) {
                if (!obj.hasOwnProperty(p)) {continue;} // skip things from the prototype
                if (~p.indexOf('[')) {
                    k = prefix ? prefix + "[" + p.substring(0, p.indexOf('[')) + "]" + p.substring(p.indexOf('[')) : p;
                } else {
                    k = prefix ? prefix + "[" + p + "]" : p;
                }
                v = obj[p];
                str.push(typeof v == "object" ?
                  toQueryString(v, k) :
                  k + "=" + v);
            }
            return str.join("&");
        }
        function createFormFields(obj, prefix, form) {

            let subject = [];
            for(var i in obj) {
                if(typeof obj[i] === 'object') {
                    subject = Object.keys(obj[i]);
                }
                else {
                    subject = [];   
                }
                if(subject.length < 1) {
                    var hiddenField = document.createElement("input");
                    hiddenField.setAttribute("name", prefix + "["+i+"]");
                    hiddenField.setAttribute("value", obj[i] );
                    hiddenField.setAttribute("type", "hidden");
                    form.appendChild(hiddenField);
                }
                else {
                    for (var c in obj[i]) {
                        var hiddenField = document.createElement("input");
                        hiddenField.setAttribute("name", prefix + "["+i+"]["+c+"]");
                        hiddenField.setAttribute("value", obj[i][c] );
                        hiddenField.setAttribute("type", "hidden");
                        form.appendChild(hiddenField);
                    }
                }
            }
            return form;
        }

        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); 
            $scope.resetform();
            
// Enable when slider is needed =============
// $scope.price_slider = {
//     minValue: 10000,
//     maxValue: 1000000,
//     options : {
//         floor: 0,
//         ceil: 1000000,
//         step : 1000
//     }
// };
// ==================================
            $scope.backToMultiple = function() {

                if($scope.mdata.str.indexOf("&") < 0) {
                    $scope.showResult();    
                }
                else {
                    $scope.resultReady = false;
                    $scope.hideForm = false;
                }
                
            }

        });
        console.log($scope.data_temps);
        $scope.resetform = function() {
            let form_data = FUNC.resetform();
            for( let _data in form_data) {
                $scope[_data] = form_data[_data];
            }
        }
        $scope.showSearch = function() {
            $scope.hideForm = false;
        }
        $scope.hideSearch = function() {
            $scope.hideForm = true;
        }
        $scope.showResult = function(property_id) {

            var str;
            $scope.hideForm = true;
            $scope.multi_property_results = false;
            $scope.resultReady = false;
            $scope.isSearchFormCollapsed = true;
            
            $scope.searchdata.include_sales_zero = true;
            $scope.searchdata.include_valuation_zero = true;
            $scope.searchdata.include_rentals_zero = true;
            $scope.searchdata.property_city_id = 
            $scope.searchdata.property_suburb_id =
            $scope.searchdata.property_class_id =
            $scope.searchdata.property_lease_type_id = '';

            if(typeof $scope.temp.enable_price_range === 'undefined' || $scope.temp.enable_price_range == false) {
                delete $scope.searchdata.price_min;
                delete $scope.searchdata.price_max;
            }
            if(typeof $scope.temp.enable_area_range === 'undefined' || $scope.temp.enable_area_range == false) {
                delete $scope.searchdata.area_min;
                delete $scope.searchdata.area_max;
            }
            if(typeof $scope.temp.enable_price_range_sales === 'undefined' || $scope.temp.enable_price_range_sales == false) {
                delete $scope.searchdata.sales_price_min;
                delete $scope.searchdata.sales_price_max;
            }
            if(typeof $scope.temp.enable_price_range_rentals === 'undefined' || $scope.temp.enable_price_range_rentals == false) {
                delete $scope.searchdata.rentals_price_min;
                delete $scope.searchdata.rentals_price_max;
            }

            if(typeof $scope.searchdata.price_max === "string") {
                $scope.searchdata.price_max = $scope.searchdata.price_max.replace (/,/g, "");
            }    
            if(typeof $scope.searchdata.price_min === "string") {
                $scope.searchdata.price_min = $scope.searchdata.price_min.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.area_max === "string") {
                $scope.searchdata.area_max = $scope.searchdata.area_max.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.area_min === "string") {
                $scope.searchdata.area_min = $scope.searchdata.area_min.replace (/,/g, "");
            }

            if(typeof $scope.data_temps.property_city_selected !== 'undefined' && $scope.data_temps.property_city_selected.id !== '') {
                $scope.searchdata.property_city_id = $scope.data_temps.property_city_selected.id;
            }
            if(typeof $scope.data_temps.property_suburb_selected !== 'undefined' && $scope.data_temps.property_suburb_selected.id !== '') {
                $scope.searchdata.property_suburb_id = $scope.data_temps.property_suburb_selected.id;
            }
            if(typeof $scope.data_temps.property_class_selected !== 'undefined' && $scope.data_temps.property_class_selected.id !== '') {
                $scope.searchdata.property_class_id = $scope.data_temps.property_class_selected.id;
            }
            if(typeof $scope.data_temps.property_lease_type_selected !== 'undefined' && $scope.data_temps.property_lease_type_selected.id !== '') {
                $scope.searchdata.property_lease_type_id = $scope.data_temps.property_lease_type_selected.id;
            }

            $scope.searchdata.include_valuation_zero = !$scope.data_temps.include_with_valuation;
            $scope.searchdata.include_sales_zero = !$scope.data_temps.include_with_sales;
            $scope.searchdata.include_rentals_zero = !$scope.data_temps.include_with_rentals;


            if(property_id != null) {
                $scope.multipleResultsShow = false;
                $scope.mdata.str = 'id='+ property_id;
            }
            else {
                $scope.multipleResultsShow = true;

                $scope.mdata.str = Object.keys($scope.searchdata).map(function(key){
                    if(key == 'price_min' || key == 'price_max') {
                        if(typeof $scope.temp.enable_price_range !== 'undefined') {
                            if($scope.temp.enable_price_range != true) {
                                return;
                            }
                        }
                    }
                    if(key == 'area_min' || key == 'area_max') {
                        if(typeof $scope.temp.enable_area_range !== 'undefined') {
                            if($scope.temp.enable_area_range != true) {
                                return;
                            }
                        }
                    }
                    if(encodeURIComponent($scope.searchdata[key]) !== 'undefined' && encodeURIComponent($scope.searchdata[key]) !== ''){
                        return encodeURIComponent(key) + '=' + encodeURIComponent($scope.searchdata[key]); 
                    }
                }).join('&');    
            }
            
            $scope.mfetch = function() {
                $http.get($rootScope.apiURL + 'v1/property/param/'+ $scope.mdata.str + '?limit=' + $scope.limit + '&page=' + $scope.mdata.current_page + '&token='+localStorage.getItem('satellizer_token')).success(function(response) {
                    if(response.data.length == '0') {
                        alert('No result');
                        $scope.hideForm = false;
                    }
                    else if(response.data.length > 1) {
                        $scope.multi_property_results = response.data;
                        $scope.multipleResultsReady = true;
                        $scope.mdata.current_page = response.current_page;
                        $scope.mdata.total = response.total;
                        const user = JSON.parse(localStorage.getItem('user'));
                        $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                            user_id : user.id,
                            log : 'generated reports for property list with filter (' + str + ')'
                        }).success(function(response) {});
                    }
                    else {
                        $scope.multipleResultsShow = false;

                        for (var i = 0; i < response.data.length; i++) {
                            $scope.property_id = response.data[i].id;
                            $scope.data.id = response.data[i].id;
                            $scope.data.name = response.data[i].name;
                            $scope.data.description = response.data[i].description;

                            $scope.data.use = response.data[i].use;
                            $scope.data.class = response.data[i].class;
                            $scope.data.lease_type = response.data[i].lease_type;
                            $scope.data.city = response.data[i].city;
                            $scope.data.suburb = response.data[i].suburb;

                            $scope.data.port = response.data[i].port;
                            $scope.data.sec = response.data[i].sec;
                            $scope.data.lot = response.data[i].lot;
                            $scope.data.unit = response.data[i].unit;

                            if($scope.data.port == '') {
                                $scope.showPort = false;
                            }
                            else {
                                $scope.showPort = true;   
                            }

                            // NOT SURE IF THE FOLLOWING IS IN USE
                            $scope.data.property_use_selected = response.data[i].property__use;
                            $scope.data.property_class_selected = response.data[i].property__class;
                            $scope.data.property_lease_type_selected = response.data[i].property__lease__type;
                            $scope.data.property_city_selected = response.data[i].property__city;
                            $scope.data.property_suburb_selected = response.data[i].property__suburb;
                            // ======

                            $scope.data.land_component = response.data[i].land_component;
                            $scope.data.improvement_component = response.data[i].improvement_component;
                            $scope.data.area = response.data[i].area;

                            $scope.data.created_by = response.data[i].created_by.name;
                            $scope.data.last_edited_by = response.data[i].last_edited_by.name;
            
                        }

                        // Get property media
                        var param = "source_id=" + $scope.property_id + "&source_table=properties";
                        $http.get($rootScope.apiURL + 'v1/media/param/'+ param +'?token='+localStorage.getItem('satellizer_token'))
                        .success(function(mpres) {
                            var photo_counter = 0, pdf_counter = 0;

                            for(var x=0; x < mpres.data.length; x++) {
                                if(mpres.data[x].media_type.indexOf('image') >= 0) {
                                    // true
                                    $scope.photos[photo_counter] = {
                                        file_path : $rootScope.apiPublicURL + mpres.data[x].file_path,
                                        file_name : mpres.data[x].file_name,
                                        created_at :  mpres.data[x].created_at  
                                    }    
                                    photo_counter++;
                                }
                                else {
                                    $scope.pdfs[pdf_counter] = {
                                        file_path : $rootScope.apiPublicURL + mpres.data[x].file_path,
                                        file_name : mpres.data[x].file_name,
                                        created_at :  mpres.data[x].created_at    
                                    }
                                    pdf_counter++;
                                }
                            }
                        }).error(function(){
                            console.log("error");
                        });

                        // Get Valuation data
                        $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token'))
                        .success(function(res) {
                            $scope.valuations = res.data;
                        }).error(function(error) {
                            console.log('Service error : ',error);
                        })

                        // Get Sales data
                        $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token'))
                        .success(function(res) {
                            $scope.sales = res.data;
                        }).error(function(error) {
                            console.log('Service error : ',error);
                        })

                        // Get Rentals data
                        $http.get($rootScope.apiURL + 'v1/rental/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token'))
                        .success(function(res) {
                            $scope.rentals = res.data;
                        }).error(function(error) {
                            console.log('Service error : ',error);
                        })

                        const user = JSON.parse(localStorage.getItem('user'));
                        $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                            user_id : user.id,
                            log : 'generated report for property #' + $scope.property_id
                        }).success(function(response) {});

                        // show details below
                        $scope.resultReady = true;
                    }

                }).error(function(error) {
                    if(!FUNC.tryLogout(error)) {
                        console.log(error);  
                    }
                });
            };
            $scope.mfetch();

            
        }
        $scope.type="reports";

        $scope.export = function(filetype) {

            var form = document.createElement("form");
            form.setAttribute("method", "post");

            if($scope.multipleResultsShow) {
                var file_path = $rootScope.apiURL + 'v1/properties/export/report/' + filetype + '?token='+localStorage.getItem('satellizer_token');
                form = createFormFields($scope.multi_property_results, "properties", form);
                form = createFormFields($scope.searchdata, "searchquery", form);
                
                str = Object.keys($scope.searchdata).map(function(key){ 
                    if(encodeURIComponent($scope.searchdata[key]) !== 'undefined' && encodeURIComponent($scope.searchdata[key]) !== ''){
                        return encodeURIComponent(key) + '=' + encodeURIComponent($scope.searchdata[key]); 
                    }
                }).join('&');  

                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'Extracted '+ filetype +' reports for property list with filter (' + str + ')'
                }).success(function(response) {});
            }
            else {
                details = Object.keys($scope.data).filter(function(key){ 
                    if(encodeURIComponent($scope.data[key]) !== 'undefined' && encodeURIComponent($scope.data[key]) !== '' && typeof $scope.data[key] !== 'undefined'){
                        return true;
                    }
                }).map(function(key) {
                    var strval = $scope.data[key];
                    strval = ("" + strval).replace('/','|');
                    return encodeURIComponent(key) + '=' + encodeURIComponent(strval); 
                }).join('&');
                var file_path = $rootScope.apiURL + 'v1/property/export/report/' + filetype + '/' + details +'?token='+localStorage.getItem('satellizer_token');
                form = createFormFields($scope.valuations, "valuations", form);
                form = createFormFields($scope.sales, "sales", form);
                form = createFormFields($scope.rentals, "rentals", form);

                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'Extracted '+ filetype +' report for property #' + $scope.property_id
                }).success(function(response) {});
            }
            form.setAttribute("action", file_path);
            form.setAttribute("target", "_blank");
            document.body.appendChild(form);
            form.submit();
            form.outerHTML = '';
            delete form;
        }
        $scope.fullImageModal = function(key) {
            var filename = key.file_path.replace(/^.*[\\\/]/, '');
            bootbox.dialog({
                size: 'large',
                message: '<a class="btn blue btn-outline btn-circle" href="'+key.file_path+'" download="'+filename+'" target="_self"><i class="fa fa-download"></i> Download</a><br /><center style="margin-top:10px;"><img class="fullimage" src="'+key.file_path+'" /></center>'
            });
        }
    }
);





