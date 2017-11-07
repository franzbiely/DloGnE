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
            $scope.data = [];
            $scope.searchdata = []; 
            $scope.data_temp = [];
            $scope.valuations = [];
            $scope.searchdata.price_min = 0;
            $scope.searchdata.price_max = 1000000;
            $scope.multipleResultsShow = false;
            $scope.multi_property_results = false;
            $scope.resultReady = false;
        }
        $scope.show_sales = function(prop_id) {
            // Get Sales data
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ prop_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
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
            $scope.resetform();
            
        });
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;
        $scope.property_id = $stateParams.property_id;

        $scope.sales = [];
        $scope.sale = [];
        $scope.data = [];
        var singular = 'sale', plural = 'sales';


        // Display List
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.sales = res.data;
            }).error(function(error) {
                if(!FUNC.tryLogout(error)) {
                    console.log(error);  
                }
            })
        };
        $scope.init();
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
                    form +=                     '<input required type="text" value="'+$scope[plural][key].date+'" class="form-control date-picker" name="date" id="date"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control date-picker" name="date" id="date" placeholder=""> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Value <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].value+'" class="form-control format-number" name="value" id="value"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control format-number" name="value" id="value"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Buyer <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input required type="text" value="'+$scope[plural][key].buyer+'" class="form-control" name="buyer" id="buyer"> </div>';
                }
                else {
                    form +=                     '<input required type="text" class="form-control" name="buyer" id="buyer"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
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
                function formatNumber(value) {
                    var n = parseFloat(value.replace(/\,/g,''),10);
                    return n.toLocaleString();
                }
                form.find('.format-number').val( (formatNumber(form.find('.format-number').val()) ) );
            bootbox.confirm({
                title: "Sales Details",
                message: form,
                callback: function(res) {
                    if (res){
                        if(
                            $('#frmSale')[0]['elements'].date.value !== '' &&
                            $('#frmSale')[0]['elements'].value.value !== '' &&
                            $('#frmSale')[0]['elements'].buyer.value !== '' &&
                            $('#frmSale')[0]['elements'].remarks.value !== ''
                            ) {
                            $scope[singular].date = moment($('#frmSale')[0]['elements'].date.value, 'DD-MM-YYYY').format('YYYY-MM-DD');
                            var sing_value = $('#frmSale')[0]['elements'].value.value;
                            $scope[singular].value = sing_value.replace (/,/g, "");
                            $scope[singular].buyer = $('#frmSale')[0]['elements'].buyer.value;
                            $scope[singular].remarks = $('#frmSale')[0]['elements'].remarks.value;
                            $scope.$apply();
                            if(key > -1) {
                                // Edit
                                $scope[plural][key].date = $scope[singular].date;
                                $scope[plural][key].value = $scope[singular].value;
                                $scope[plural][key].buyer = $scope[singular].buyer;
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
                value : $scope[singular].value,
                buyer : $scope[singular].buyer,
                remarks : $scope[singular].remarks,
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
                value : $scope[singular].value,
                remarks : $scope[singular].remarks,
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