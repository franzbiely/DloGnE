angular.module('MetronicApp').controller('SalesController', 
    function($rootScope, $scope, $http, $timeout, $stateParams, moment, FUNC, $state) {
        $scope.multipleResultsShow = false;
        $scope.page_name = "sales";
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
        $scope.loadSaleLists = function() {
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $state.params.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
                $rootScope.pageSidebarClosed = true;
            }).error(function(error) {
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            })
        };
        if($state.current.name == 'sales.list') {
            $scope.loadSaleLists();
        }
        $scope.show_sales = function(prop_id) {
            // Get Sales data
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ prop_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
                $rootScope.pageSidebarClosed = true;
            }).error(function(error) {
                console.log('Service error : ',error);
            })

            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'generated sales report for property #' + prop_id
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

        $scope.sales = [];
        $scope.sale = [];
        $scope.data = [];
        var singular = 'sale', plural = 'sales';

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
            $scope.searchdata.include_sales_zero =
            $scope.searchdata.property_city_id = 
            $scope.searchdata.property_suburb_id =
            $scope.searchdata.property_class_id =
            $scope.searchdata.property_lease_type_id = '';
            
            if(typeof $scope.searchdata.price_max === "string") {
                $scope.searchdata.price_max = $scope.searchdata.price_max.replace (/,/g, "");
            }
            if(typeof $scope.searchdata.price_min === "string") {
                $scope.searchdata.price_min = $scope.searchdata.price_min.replace (/,/g, "");
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
                $scope.searchdata.include_sales_zero = $scope.data_temp.include_zero;
            }
            
            if(property_id != null) {
                str = 'id='+ property_id;
                $scope.property_id = property_id;
            }
            else {
                $scope.multipleResultsShow = true;
                if($scope.searchdata.id != null) {
                    $scope.searchdata.include_sales_zero = true;
                }
                str = Object.keys($scope.searchdata).map(function(key){ 
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
                        log : 'generated sales reports for property list with filter (' + str + ')'
                    }).success(function(response) {});
                }
                else {
                    if(!from_id_link) {
                        $scope.multi_property_results = response.data;
                        $scope.multipleResultsShow = true;
                        $scope.multipleResultsReady = true;
                    }
                    $state.go('sales.list', {property_id : response.data[0].id});
                    /*
                    var property_details = 
                        '<table class="table table-bordered">\
                        <caption>Property Details</caption>';
                    var prop_detail = [
                            'id','city','suburb','lease_type','class','use','description','port','sec','lot','unit','land_value','land_component','improvement_component','area','owner'
                        ];
                    for(var key in prop_detail) {
                        property_details += '<tr>\
                            <td class="col-md-4">'+ dataToReadable(prop_detail[key]) +'</td>\
                            <td>'+ response.data[0][prop_detail[key]] +'</td>\
                        </tr>';
                    }
                        property_details += '</table>';
                    bootbox.alert(property_details);
                    */
                }
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
            });
        }

        // Modal
        $scope.showModal = function(key) {
            if (key == null) key = -1;
            var form = '<form id="frmSale" name="frmSale" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Date <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+moment($scope[plural][key].date, 'YYYY-MM-DD').format('DD-MM-YYYY')+'" class="form-control date-picker" name="date" id="date"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control date-picker" name="date" id="date" placeholder=""> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Source <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].source+'" class="form-control" name="source" id="source"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="source" id="source"></div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Purchaser <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].purchaser+'" class="form-control" name="purchaser" id="purchaser"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="purchaser" id="purchaser"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Price <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].price+'" class="form-control format-number" name="price" id="price"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="price" id="price"></div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Vendor <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].vendor+'" class="form-control" name="vendor" id="vendor"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="vendor" id="vendor"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Est Land Value (K) <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].est_land_value+'" class="form-control format-number" name="est_land_value" id="est_land_value"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="est_land_value" id="est_land_value"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Est Improvement Value (K) <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].est_improvement_value+'" class="form-control format-number" name="est_improvement_value" id="est_improvement_value"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="est_improvement_value" id="est_improvement_value"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Area (sqm)<span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].area+'" class="form-control format-number" name="area" id="area"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="area" id="area"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Est Land Rate (per sqm)<span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].est_land_rate+'" class="form-control format-number" name="est_land_rate" id="est_land_rate"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="est_land_rate" id="est_land_rate"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Description<span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].description+'" class="form-control" name="description" id="description"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="description" id="description"> </div>';    
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
                title: "Sales Details",
                message: form,
                callback: function(res) {
                    if (res){
                        if(
                            $('#frmSale')[0]['elements'].date.value !== '' &&
                            $('#frmSale')[0]['elements'].source.value !== '' &&
                            $('#frmSale')[0]['elements'].price.value !== '' &&
                            $('#frmSale')[0]['elements'].purchaser.value !== '' &&
                            $('#frmSale')[0]['elements'].vendor.value !== '' &&
                            $('#frmSale')[0]['elements'].est_land_value.value !== '' &&
                            $('#frmSale')[0]['elements'].est_improvement_value.value !== '' &&
                            $('#frmSale')[0]['elements'].area.value !== '' &&
                            $('#frmSale')[0]['elements'].est_land_rate.value !== '' &&
                            $('#frmSale')[0]['elements'].description.value !== ''
                            ) {
                            $scope[singular].date = moment($('#frmSale')[0]['elements'].date.value, 'DD-MM-YYYY').format('YYYY-MM-DD');
                            $scope[singular].source = $('#frmSale')[0]['elements'].source.value;
                            var sing_price = $('#frmSale')[0]['elements'].price.value;
                            $scope[singular].price = sing_price.replace (/,/g, "");
                            $scope[singular].purchaser = $('#frmSale')[0]['elements'].purchaser.value;
                            $scope[singular].vendor = $('#frmSale')[0]['elements'].vendor.value;
                            var sing_est_land_value = $('#frmSale')[0]['elements'].est_land_value.value;
                            $scope[singular].est_land_value = sing_est_land_value.replace (/,/g, "");
                            var sing_est_improvement_value = $('#frmSale')[0]['elements'].est_improvement_value.value;
                            $scope[singular].est_improvement_value = sing_est_improvement_value.replace (/,/g, "");
                            var sing_area = $('#frmSale')[0]['elements'].area.value;
                            $scope[singular].area = sing_area.replace (/,/g, "");
                            var sing_est_land_rate = $('#frmSale')[0]['elements'].est_land_rate.value;
                            $scope[singular].est_land_rate = sing_est_land_rate.replace (/,/g, "");
                            $scope[singular].description = $('#frmSale')[0]['elements'].description.value;
                            $scope.$apply();
                            if(key > -1) {
                                // Edit
                                $scope[plural][key].date = $scope[singular].date;
                                $scope[plural][key].source = $scope[singular].source;
                                $scope[plural][key].price = $scope[singular].price;
                                $scope[plural][key].purchaser = $scope[singular].purchaser;
                                $scope[plural][key].vendor = $scope[singular].vendor;
                                $scope[plural][key].est_land_value = $scope[singular].est_land_value;
                                $scope[plural][key].est_improvement_value = $scope[singular].est_improvement_value;
                                $scope[plural][key].area = $scope[singular].area;
                                $scope[plural][key].est_land_rate = $scope[singular].est_land_rate;
                                $scope[plural][key].description = $scope[singular].description;
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
                            log : 'deleted sales #'+id
                        }).success(function(response) {alert('Deleted sales #'+id)});
                        $scope[plural].splice(index, 1);
                    });
            }
        }

        // Add
        $scope.add = function() {
            $http.post($rootScope.apiURL + 'v1/'+singular+'?token='+localStorage.getItem('satellizer_token'), {
                date : $scope[singular].date,
                source : $scope[singular].source,
                price : $scope[singular].price,
                purchaser : $scope[singular].purchaser,
                vendor : $scope[singular].vendor,
                est_land_value : $scope[singular].est_land_value,
                est_improvement_value : $scope[singular].est_improvement_value,
                area : $scope[singular].area,
                est_land_rate : $scope[singular].est_land_rate,
                description : $scope[singular].description,
                property_id : $state.params.property_id 
            }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'added sales for property #' + $scope.property_id
                }).success(function(response) {alert('Added sales successfully!')});
                $scope[plural].push(response.data);
                $scope[singular] = '';

            }).error(function(){
                console.log("error");
            });
        };

        // Update
        $scope.update = function(id){
          $http.put($rootScope.apiURL + 'v1/'+singular+'/' + id + '?token='+localStorage.getItem('satellizer_token'), {
                date : $scope[singular].date,
                source : $scope[singular].source,
                price : $scope[singular].price,
                purchaser : $scope[singular].purchaser,
                vendor : $scope[singular].vendor,
                est_land_value : $scope[singular].est_land_value,
                est_improvement_value : $scope[singular].est_improvement_value,
                area : $scope[singular].area,
                est_land_rate : $scope[singular].est_land_rate,
                description : $scope[singular].description,
          }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'modified sales #'+id+' for Property #' + $scope.property_id
                }).success(function(response) {});
                alert("Updated Successfully");
            }).error(function(){
                console.log("error");
            });
        }
    }
);