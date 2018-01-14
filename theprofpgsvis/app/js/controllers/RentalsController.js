angular.module('MetronicApp').controller('RentalsController', 
    function($rootScope, $scope, $http, $timeout, $stateParams, moment, FUNC, $state) {
        $scope.multipleResultsShow = false;
        $scope.page_name = "rentals";
        $rootScope.pageSidebarClosed = false;
        $scope.hasActions = true;
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
        $scope.loadRentalLists = function() {
            $http.get($rootScope.apiURL + 'v1/rental/prop/'+ $state.params.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.rentals = res.data;
                $rootScope.pageSidebarClosed = true;
            }).error(function(error) {
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            })
        };
        if($state.current.name == 'rentals.list') {
            $scope.loadRentalLists();
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
                str = 'id='+ property_id;
                $scope.property_id = property_id;
            }
            else {
                $scope.multipleResultsShow = true;
                if($scope.searchdata.id != null) {
                    $scope.searchdata.include_rentals_zero = true;
                }
                str = Object.keys($scope.searchdata).map(function(key){ 
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
            
            $http.get($rootScope.apiURL + 'v1/property/param/'+ str +'?token='+localStorage.getItem('satellizer_token')).success(function(response) {
                $scope.hideForm = false;
                if(response.data.length == '0') {
                    alert('No result');
                }
                else if(response.data.length > 1) {
                    $scope.hideForm = true;
                    $scope.multi_property_results = response.data;
                    $scope.multipleResultsReady = true;
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
        }

        // Modal
        $scope.showModal = function(key) {
            if (key == null) key = -1;
            var form = '<form id="frmRental" name="frmRental" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Date <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+moment($scope[plural][key].analysed_date, 'YYYY-MM-DD').format('DD-MM-YYYY')+'" class="form-control date-picker" name="analysed_date" id="analysed_date"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control date-picker" name="analysed_date" id="analysed_date" placeholder=""> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Analysed Rent (K)<span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].analysed_rent+'" class="form-control format-number" name="analysed_rent" id="analysed_rent"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="analysed_rent" id="analysed_rent"></div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks<span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].remarks+'" class="form-control" name="remarks" id="remarks"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="remarks" id="remarks"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                            </div>\
                        </form>';
                form = $(form);
                form.find('.date-picker').datepicker({
                    format: 'dd-mm-yyyy',
                    autoclose: true}).on('changeDate', function (ev) {
                       $(this).blur();
                       $(this).datepicker('hide');
                });
                form.find('.format-number').on('keyup', function(evt) {
                    if (evt.which != 110 ){//not a fullstop
                        $(this).val( formatNumber($(this).val()) );
                    }
                })
                if(key > -1) {
                    form.find('.format-number').map(function(x) {
                        this.value = formatNumber( this.value );
                    })
                }
                
                function formatNumber(value) {
                    var n = parseFloat(value.replace(/\,/g,''),10);
                    if(n.toLocaleString() !== 'NaN') {
                        return n.toLocaleString();    
                    }
                    else {
                        return;
                    }
                }
                
            bootbox.confirm({
                title: "Rentals Details",
                message: form,
                callback: function(res) {
                    if (res){
                        if(
                            $('#frmRental')[0]['elements'].analysed_rent.value !== '' &&
                            $('#frmRental')[0]['elements'].analysed_date.value !== '' &&
                            $('#frmRental')[0]['elements'].remarks.value !== ''
                            ) {
                            $scope[singular].analysed_date = moment($('#frmRental')[0]['elements'].analysed_date.value, 'DD-MM-YYYY').format('YYYY-MM-DD');
                            var sing_analysed_rent = $('#frmRental')[0]['elements'].analysed_rent.value;
                            $scope[singular].analysed_rent = sing_analysed_rent.replace (/,/g, "");
                            $scope[singular].remarks = $('#frmRental')[0]['elements'].remarks.value;
                            $scope.$apply();
                            if(key > -1) {
                                // Edit
                                $scope[plural][key].analysed_rent = $scope[singular].analysed_rent;
                                $scope[plural][key].analysed_date = $scope[singular].analysed_date;
                                $scope[plural][key].remarks = $scope[singular].remarks;
                                $scope.$apply();
                                $scope.update($scope[plural][key].id);
                            }
                            else {
                                // New
                                $scope.add();
                            }
                        }
                        else {
                            alert('Please fill up mandatory fields.'); return false;
                        }
                    }
                }
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