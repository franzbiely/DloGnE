angular.module('MetronicApp').controller('RentalsController', 
    function($rootScope, $scope, $http, $timeout, $stateParams, moment, FUNC, $state) {
        $scope.multipleResultsShow = false;
        $scope.page_name = "rentals";
        $rootScope.pageSidebarClosed = false;
        $scope.hasActions = true;
        $scope.limit = 10;
        $scope.current_page = 1;
        $scope.total;
        $scope.mdata = {
            current_page:null,
            total : null,
            str : null
        };
        // Load Select options data
        $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_use_options = toOption(ret.data);
            $scope.property_use_options.splice(0, 0, { id : '', label : '[Choose Use]' });
            $scope.data_temp.property_use_selected = $scope.property_use_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_class_options = toOption(ret.data);
            $scope.property_class_options.splice(0, 0, { id : '', label : '[Choose Class]' });
            $scope.data_temp.property_class_selected = $scope.property_class_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_lease_type_options = toOption(ret.data);
            $scope.property_lease_type_options.splice(0, 0, { id : '', label : '[Choose Lease Type]' });
            $scope.data_temp.property_lease_type_selected = $scope.property_lease_type_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_city_options = toOption(ret.data);
            $scope.property_city_options.splice(0, 0, { id : '', label : '[Choose City]' });
            $scope.data_temp.property_city_selected = $scope.property_city_options[0];
        }).error(function(error) {
            if(!FUNC.tryLogout(error)) {
                console.log(error);  
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_suburb_options = toOption(ret.data, 'suburb');
            $scope.property_suburb_options.splice(0, 0, { id : '', label : '[Choose Suburb]' });
            $scope.data_temp.property_suburb_selected = $scope.property_suburb_options[0];
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
        function capitalizeString(string) {
            return string.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });
        }
        function replaceUnderScoreToSpace(string) {
            return string.split('_').join(' ');
        }
        function dataToReadable(string) {
            return capitalizeString(replaceUnderScoreToSpace(string));
        }
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
            for(var i in obj) {
                if(Object.keys(obj[i]).length < 1) {
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
        $scope.backToMultiple = function() {
            $scope.multipleResultsShow = true;
            $scope.resultReady = false;
        }
        $scope.resetform = function() {
            let form_data = FUNC.resetform();
            for( let _data in form_data) {
                $scope[_data] = form_data[_data];
            }
        }
        $scope.resetform();
        // Display List
        $scope.fetch = function() {
            $http.get($rootScope.apiURL + 'v1/rental/prop/'+ $state.params.property_id + '?limit=' + $scope.limit + '&page=' + $scope.current_page + '&token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.rentals = res.data;
                $scope.current_page = res.current_page;
                $scope.total = res.total;
                $rootScope.pageSidebarClosed = true;
            }).error(function(error) {
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            })
        };
        if($state.current.name == 'rentals.list') {
            $scope.fetch();
        }
        $scope.show_rentals = function(prop_id) {
            // Get Rentals data
            $http.get($rootScope.apiURL + 'v1/rental/prop/'+ prop_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.rentals = res.data;
                $rootScope.pageSidebarClosed = true;
            }).error(function(error) {
                console.log('Service error : ',error);
            })

            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'generated rentals report for property #' + prop_id
            }).success(function(response) {});

            // show details below
            $scope.resultReady = true;
            $scope.multipleResultsShow = false;
        }

        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); // initialize core components  
        });
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
        $scope.property_id = $stateParams.property_id;

        $scope.rentals = [];
        $scope.rental = [];
        $scope.data = [];
        var singular = 'rental', plural = 'rentals';

        $scope.showSearch = function(showMultiResult) {
            if(!showMultiResult) showMultiResult = false;
            $scope.hideForm = false;
            if(showMultiResult == 'yes') {
                $scope.multipleResultsReady = true;
            }
            else {
                $scope.multipleResultsReady = false;      
            }
        }
        $scope.hideSearch = function() {
            $scope.hideForm = true;
        }
        // From Reports
        $scope.showResult = function(property_id, from_id_link) {
            $scope.hideForm = true;
            if (!from_id_link) from_id_link = false;
            $scope.resultReady = false;
            var str;

            $scope.searchdata.include_valuation_zero = true;
            $scope.searchdata.include_sales_zero = true;
            $scope.searchdata.include_rentals_zero =
            $scope.searchdata.property_city_id = 
            $scope.searchdata.property_suburb_id =
            $scope.searchdata.property_class_id =
            $scope.searchdata.property_lease_type_id = '';

            delete $scope.searchdata.price_min;
            delete $scope.searchdata.price_max;
            delete $scope.searchdata.area_min;
            delete $scope.searchdata.area_max;
            delete $scope.searchdata.sales_price_min;
            delete $scope.searchdata.sales_price_max;
            
            if(typeof $scope.temp.enable_price_range_rentals === 'undefined' || $scope.temp.enable_price_range_rentals == false) {
                delete $scope.searchdata.rentals_price_min;
                delete $scope.searchdata.rentals_price_max;
            }

            if(typeof $scope.searchdata.rentals_price_max === "string") {
                $scope.searchdata.rentals_price_max = $scope.searchdata.rentals_price_max.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.rentals_price_min === "string") {
                $scope.searchdata.rentals_price_min = $scope.searchdata.rentals_price_min.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.area_max === "string") {
                $scope.searchdata.area_max = $scope.searchdata.area_max.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.area_min === "string") {
                $scope.searchdata.area_min = $scope.searchdata.area_min.replace (/,/g, "");
            }
            
            if(typeof $scope.data_temp.property_city_selected !== 'undefined' && $scope.data_temp.property_city_selected.id !== '') {
                $scope.searchdata.property_city_id = $scope.data_temp.property_city_selected.id;
            }
            if(typeof $scope.data_temp.property_suburb_selected !== 'undefined' && $scope.data_temp.property_suburb_selected.id !== '') {
                $scope.searchdata.property_suburb_id = $scope.data_temp.property_suburb_selected.id;
            }
            if(typeof $scope.data_temp.property_class_selected !== 'undefined' && $scope.data_temp.property_class_selected.id !== '') {
                $scope.searchdata.property_class_id = $scope.data_temp.property_class_selected.id;
            }
            if(typeof $scope.data_temp.property_lease_type_selected !== 'undefined' && $scope.data_temp.property_lease_type_selected.id !== '') {
                $scope.searchdata.property_lease_type_id = $scope.data_temp.property_lease_type_selected.id;
            }
            if(typeof $scope.data_temp.include_zero !== 'undefined' && $scope.data_temp.include_zero.id !== '') {
                $scope.searchdata.include_rentals_zero = $scope.data_temp.include_zero;
            }
            
            if(property_id != null) {
                $scope.mdata.str = 'id='+ property_id;
                $scope.property_id = property_id;
            }
            else {
                $scope.multipleResultsShow = true;
                if($scope.searchdata.id != null) {
                    $scope.searchdata.include_rentals_zero = true;
                }
                $scope.mdata.str = Object.keys($scope.searchdata).map(function(key){ 
                    if(key == 'rentals_price_min' || key == 'rentals_price_max') {
                        if(typeof $scope.temp.enable_price_range_rentals !== 'undefined') {
                            if($scope.temp.enable_price_range_rentals != true) {
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
            
            $scope.mfetch = function(){
                $http.get($rootScope.apiURL + 'v1/property/param/'+ $scope.mdata.str + '?limit=' + $scope.limit + '&page=' + $scope.mdata.current_page + '&token='+localStorage.getItem('satellizer_token')).success(function(response) {
                    $scope.hideForm = false;
                    if(response.data.length == '0') {
                        alert('No result');
                    }
                    else if(response.data.length > 1) {
                        $scope.hideForm = true;
                        $scope.multi_property_results = response.data;
                        $scope.multipleResultsReady = true;
                        $scope.mdata.total = response.total;
                        $scope.mdata.current_page = response.current_page;
                        const user = JSON.parse(localStorage.getItem('user'));
                        $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                            user_id : user.id,
                            log : 'generated rentals reports for property list with filter (' + str + ')'
                        }).success(function(response) {});
                    }
                    else {
                        if(!from_id_link) {
                            $scope.multi_property_results = response.data;
                            $scope.multipleResultsShow = true;
                            $scope.multipleResultsReady = true;
                        }
                        $state.go('rentals.list', {property_id : response.data[0].id});
                    }
                }).error(function(error) {
                    console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
                });
            }; $scope.mfetch();
        }

        // Modal
        $scope.showModal = function(key) {
            if (key == null) key = -1;
            var inclusions = $scope[plural][key].inclusions.map( function( el ){ 
                return el.title; 
            }).join(", ").replace(/,\s*$/, "");
            if($scope[plural][key].inclusion_other !== '') {
                inclusions += ',('+$scope[plural][key].inclusion_other+')';
            }
            var mratings = $scope[plural][key].maintenance_ratings.map( function( el ){ 
                return "<li>"+el.title + ' = ' + el.rate + "</li>"; 
            }).join("");
            var form = '<form id="frmRental" name="frmRental" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Property # : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].property_id + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Date : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + moment($scope[plural][key].analysed_date, "YYYY-MM-DD").format("DD-MM-YYYY") + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Rent (K) : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + FUNC.nformat($scope[plural][key].analysed_rent) + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].remarks + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <hr />\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Rent Area : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].rental_area + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Rent Period : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].rental_period + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Rent Review Method : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].rental_review_method + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Vacancy Rate : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].vacancy_rate + ' <span>%</span></span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <hr />\
                                <strong>If Sole Tenant Qualify</strong>\
                                <hr />\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Total Lease Period (years) : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].total_lease_period + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Total options to extend : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].option_periods + ' <span>(years)</span></span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Date Lease commenced : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].date_lease_commenced + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Name of Tenant : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <span class="form-control border border-white">' + $scope[plural][key].name_of_tenant + '</span>\
                                        </div>\
                                    </div>\
                                </div>\
                                <hr />\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Inclusions : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <div class="form-control border border-white">' + inclusions + '</div>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Estimated age of Building (years) : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <div class="form-control border border-white">' + $scope[plural][key].age_of_building + '</div>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Maintenance Rating : </label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <div class="form-control border border-white">' + mratings + '</div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </form>';
                form = $(form);
            bootbox.alert({
                title: "Rentals Details",
                message: form
            });
        }

        // Delete
        $scope.delete = function(index, id) {
            var _confirmed = confirm("Are you sure to delete this data?");
            if(_confirmed) {
                $http.delete($rootScope.apiURL + 'v1/'+singular+'/' + id + '?token='+localStorage.getItem('satellizer_token'))
                    .success(function() {
                        const user = JSON.parse(localStorage.getItem('user'));
                        $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                            user_id : user.id,
                            log : 'deleted rentals #'+id
                        }).success(function(response) {alert('Deleted rentals #'+id)});
                        $scope[plural].splice(index, 1);
                    });
            }
        }

        // Add
        $scope.add = function() {
            $http.post($rootScope.apiURL + 'v1/'+singular+'?token='+localStorage.getItem('satellizer_token'), {
                analysed_rent : $scope[singular].analysed_rent,
                analysed_date : $scope[singular].analysed_date,
                remarks : $scope[singular].remarks,
                property_id : $state.params.property_id
            }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'added rentals for property #' + $scope.property_id
                }).success(function(response) {alert('Added rentals successfully!')});
                $scope[plural].unshift(response.data);
                $scope[singular] = [];
            }).error(function(){
                console.log("error");
            });
        };

        // Update
        $scope.update = function(id){
          $http.put($rootScope.apiURL + 'v1/'+singular+'/' + id + '?token='+localStorage.getItem('satellizer_token'), {
                analysed_rent : $scope[singular].analysed_rent,
                analysed_date : $scope[singular].analysed_date,
                remarks : $scope[singular].remarks
          }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'modified rentals #'+id+' for Property #' + $scope.property_id
                }).success(function(response) {});
                alert("Updated Successfully");
            }).error(function(){
                console.log("error");
            });
        }
    }
);