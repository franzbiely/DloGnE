angular.module('MetronicApp').controller('ValuationsController',
    function($rootScope, $scope, $http, settings, $stateParams, $uibModal, moment) {

        $scope.multipleResultsShow = false;
        $scope.page_name = "valuations";

        // Load Select options data
        $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_use_options = toOption(ret.data);
            $scope.property_use_options.splice(0, 0, { id : '', label : '[Choose Use]' });
            $scope.data_temp.property_use_selected = $scope.property_use_options[0];
            // console.log($scope.searchdata);
        }).error(function(error) {
            console.log('Error loading '+ $rootScope.apiURL + 'v1/property_use');  
            if(typeof error !== 'null') {
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_class_options = toOption(ret.data);
            $scope.property_class_options.splice(0, 0, { id : '', label : '[Choose Class]' });
            $scope.data_temp.property_class_selected = $scope.property_class_options[0];
        }).error(function(error) {
            console.log('Error loading '+ $rootScope.apiURL + 'v1/property_class');  
            if(typeof error !== 'null') {
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_lease_type_options = toOption(ret.data);
            $scope.property_lease_type_options.splice(0, 0, { id : '', label : '[Choose Lease Type]' });
            $scope.data_temp.property_lease_type_selected = $scope.property_lease_type_options[0];
        }).error(function(error) {
            console.log('Error loading '+ $rootScope.apiURL + 'v1/property_lease_type');  
            if(typeof error !== 'null') {
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_city_options = toOption(ret.data);
            $scope.property_city_options.splice(0, 0, { id : '', label : '[Choose City]' });
            $scope.data_temp.property_city_selected = $scope.property_city_options[0];
        }).error(function(error) {
            console.log('Error loading '+ $rootScope.apiURL + 'v1/property_city');  
            if(typeof error !== 'null') {
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
            }
        })
        $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
            $scope.property_suburb_options = toOption(ret.data, 'suburb');
            $scope.property_suburb_options.splice(0, 0, { id : '', label : '[Choose Suburb]' });
            $scope.data_temp.property_suburb_selected = $scope.property_suburb_options[0];
        }).error(function(error) {
            console.log('Error loading '+ $rootScope.apiURL + 'v1/property_suburb');  
            if(typeof error !== 'null') {
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
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
        function capitalizeString(string) {
            return string.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });
        }
        function replaceUnderScoreToSpace(string) {
            return string.split('_').join(' ');
        }
        function dataToReadable(string) {
            return capitalizeString(replaceUnderScoreToSpace(string));
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
        $scope.$on('$viewContentLoaded', function() {
            App.initAjax();
            $scope.resetform();
        });
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
        $scope.valuation = [];
        $scope.property_id = $stateParams.property_id;
        $scope.hasActions = $scope.$parent.type !== "reports" ? true : false;

        // Display
        $scope.init = function() {
            $http.get($rootScope.apiURL + 'v1/valuation/prop/' + $scope.property_id + '?token=' + localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ', error);
                if(typeof error !== 'null') {
                    if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                        $rootScope.logout();    
                    }
                }
            })
        };
        $scope.init();
        $scope.show_valuation = function(prop_id) {
            // Get Valuation data
            $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ prop_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                $scope.valuations = res.data;
            }).error(function(error) {
                console.log('Service error : ',error);
            })
            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                user_id : user.id,
                log : 'generated valuation report for property #' + prop_id
            }).success(function(response) {});

            $scope.multipleResultsShow = false;
            $scope.resultReady = true;
        }
        // From Reports
        $scope.showResult = function(property_id, from_id_link) {
            if (!from_id_link) from_id_link = false;
            $scope.hasActions = false;
            // $scope.multi_property_results = false;
            $scope.resultReady = false;
            var str;
            
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
            if(property_id != null) {
                str = 'id='+ property_id;
                
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
                if(response.data.length == '0') {
                    alert('No result');
                }
                else if(response.data.length > 1) {
                    $scope.multi_property_results = response.data;
                    $scope.multipleResultsReady = true;
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'generated reports for property list with filter (' + str + ')'
                    }).success(function(response) {});
                }
                else {
                    if(!from_id_link) {
                        $scope.multi_property_results = response.data;
                        $scope.multipleResultsShow = true;
                        $scope.multipleResultsReady = true;
                    }
                    // console.log(response.data);
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
                }
                
            }).error(function(error) {
                console.log('Error loading ' + $rootScope.apiURL + 'v1/property/param/');
                if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided') {
                    $rootScope.logout();    
                }
            });

        }

        // Modal
        $scope.showModal = function(key) {
            if (key == null) key = -1;
            var form = '<form id="frmValuation" name="frmValuation" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Date <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if (key > -1) {
                form += '<input required type="text" value="' + $scope.valuations[key].date + '" class="form-control date-picker" name="date" id="date"> </div>';
            } else {

                form += '<input required type="text" class="form-control date-picker" name="date" id="date" placeholder=""> </div>';
            }
            form += '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Value <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if (key > -1) {
                form += '<input required type="text" value="' + $scope.valuations[key].value + '" class="form-control" name="value" id="value"> </div>';
            } else {
                form += '<input required type="text" class="form-control" name="value" id="value"> </div>';
            }
            form += '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks <span class="required" aria-required="true"> * </span></label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
            if (key > -1) {
                form += '<input required type="text" value="' + $scope.valuations[key].remarks + '" class="form-control" name="remarks" id="remarks"> </div>';
            } else {
                form += '<input required type="text" class="form-control" name="remarks" id="remarks"> </div>';
            }
            form += '</div>\
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
            bootbox.confirm({
                title: "Add New Valuation",
                message: form,
                callback: function(res) {
                    if (res) {
                        if(
                            $('#frmValuation')[0]['elements'].date.value !== '' &&
                            $('#frmValuation')[0]['elements'].value.value !== '' &&
                            $('#frmValuation')[0]['elements'].remarks.value !== ''
                            ) {


                            $scope.valuation.date = moment($('#frmValuation')[0]['elements'].date.value, 'DD-MM-YYYY').format('YYYY-MM-DD');
                            $scope.valuation.value = $('#frmValuation')[0]['elements'].value.value;
                            $scope.valuation.remarks = $('#frmValuation')[0]['elements'].remarks.value;
                            $scope.$apply();
                            if (key > -1) {
                                // Edit
                                $scope.valuations[key].date = $scope.valuation.date;
                                $scope.valuations[key].value = $scope.valuation.value;
                                $scope.valuations[key].remarks = $scope.valuation.remarks;
                                $scope.$apply();
                                $scope.updateValuation($scope.valuations[key].id);
                            } else {
                                // New
                                $scope.addValuation();
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

            $http.delete($rootScope.apiURL + 'v1/valuation/' + id + '?token=' + localStorage.getItem('satellizer_token'))
                .success(function() {
                    const user = JSON.parse(localStorage.getItem('user'));
                    $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                        user_id : user.id,
                        log : 'deleted valuation #'+id
                    }).success(function(response) {alert('Deleted valuation #'+id)});
                    $scope.valuations.splice(index, 1);
                });;
        }

        // Add
        $scope.addValuation = function() {
            $http.post($rootScope.apiURL + 'v1/valuation?token=' + localStorage.getItem('satellizer_token'), {
                date: $scope.valuation.date,
                value: $scope.valuation.value,
                remarks: $scope.valuation.remarks,
                property_id: $scope.property_id
            }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'added valuation for property #' + $scope.property_id
                }).success(function(response) {});
                $scope.valuations.push(response.data);
                $scope.valuation = '';

            }).error(function() {
                console.log("error");
                if (error.error == "token_expired")
                    $rootScope.logout();
            });
        };

        // Update
        $scope.updateValuation = function(id) {
            $http.put($rootScope.apiURL + 'v1/valuation/' + id + '?token=' + localStorage.getItem('satellizer_token'), {
                date: $scope.valuation.date,
                value: $scope.valuation.value,
                remarks: $scope.valuation.remarks,
            }).success(function(response) {
                const user = JSON.parse(localStorage.getItem('user'));
                $http.post($rootScope.apiURL + 'v1/audit_trail?token='+localStorage.getItem('satellizer_token'), {
                    user_id : user.id,
                    log : 'modified valuation #'+id+' for Property #' + $scope.property_id
                }).success(function(response) {});
                alert("Updated Successfully");
            }).error(function() {
                console.log("error");
                if (error.error == "token_expired")
                    $rootScope.logout();
            });
        }

    }
);