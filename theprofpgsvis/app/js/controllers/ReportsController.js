angular.module('MetronicApp').controller('ReportsController', 
    function($rootScope, $scope, $http, $timeout, $window, $http) {
        $scope.multipleResultsShow = false;
        $scope.isReport = true;
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

        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); 
            $scope.resetform();
            $scope.price_slider = {
                minValue: 10000,
                maxValue: 1000000,
                options : {
                    floor: 0,
                    ceil: 1000000,
                    step : 1000
                }
            };
            // Load Select options data
            $http.get($rootScope.apiURL + 'v1/property_use?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_use_options = toOption(ret.data);
                $scope.property_use_options.splice(0, 0, { id : '', label : '[Choose Use]' });
                $scope.data_temp.property_use_selected = $scope.property_use_options[0];
                // console.log($scope.searchdata);
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_use');  
            })
            $http.get($rootScope.apiURL + 'v1/property_class?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_class_options = toOption(ret.data);
                $scope.property_class_options.splice(0, 0, { id : '', label : '[Choose Class]' });
                $scope.data_temp.property_class_selected = $scope.property_class_options[0];
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_class');  
            })
            $http.get($rootScope.apiURL + 'v1/property_lease_type?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_lease_type_options = toOption(ret.data);
                $scope.property_lease_type_options.splice(0, 0, { id : '', label : '[Choose Lease Type]' });
                $scope.data_temp.property_lease_type_selected = $scope.property_lease_type_options[0];
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_lease_type');  
            })
            $http.get($rootScope.apiURL + 'v1/property_city?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_city_options = toOption(ret.data);
                $scope.property_city_options.splice(0, 0, { id : '', label : '[Choose City]' });
                $scope.data_temp.property_city_selected = $scope.property_city_options[0];
            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property_city');  
            })
            $http.get($rootScope.apiURL + 'v1/property_suburb?token='+localStorage.getItem('satellizer_token')).success(function(ret) {
                $scope.property_suburb_options = toOption(ret.data, 'suburb');
                $scope.property_suburb_options.splice(0, 0, { id : '', label : '[Choose Suburb]' });
                $scope.data_temp.property_suburb_selected = $scope.property_suburb_options[0];
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
            },true);
        });
        
        $scope.resetform = function() {
            $scope.data = [];
            $scope.searchdata = []; 
            $scope.data_temp = [];
            $scope.valuations = [];
            $scope.searchdata.price_min = 10000;
            $scope.searchdata.price_max = 1000000;
            $scope.multipleResultsShow = false;
            $scope.multi_property_results = false;
            $scope.resultReady = false;
        }
        $scope.showResult = function(property_id) {
            var str;
            $scope.multi_property_results = false;
            $scope.resultReady = false;

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
            // console.log($scope.searchdata);
            if(property_id != null) {
                $scope.multipleResultsShow = false;
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
                }
                else {
                    $scope.multipleResultsShow = false;
                    for (var i = 0; i < response.data.length; i++) {
                        $scope.property_id = response.data[i].id;
                        $scope.data.id = response.data[i].id;
                        $scope.data.code = response.data[i].code;
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

                        
                        $scope.data.land_value = response.data[i].land_value;
                        $scope.data.land_component = response.data[i].land_component;
                        $scope.data.improvement_component = response.data[i].improvement_component;
                        $scope.data.area = response.data[i].area;
                    }
                    // Get Valuation data
                    $http.get($rootScope.apiURL + 'v1/valuation/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.valuations = res.data;
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })


                    // Get Sales data
                    $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.sales = res.data;
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })

                    // show details below
                    $scope.resultReady = true;
                }
                
                

            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
                if(error.error == "token_expired")
                    $rootScope.logout();
            });

            
        }
        $scope.type="reports";

        $scope.export = function(filetype) {

            if($scope.multipleResultsShow) {
                var details = toQueryString($scope.multi_property_results, 'properties');
                var query = toQueryString($scope.searchdata, 'searchquery');
                var file_path = $rootScope.apiURL + 'v1/property/export/report/list/' + filetype + '/' + '?token='+localStorage.getItem('satellizer_token') + '&' + details + '&' + query;                
            }
            else {
                details = Object.keys($scope.data).filter(function(key){ 
                    if(encodeURIComponent($scope.data[key]) !== 'undefined' && encodeURIComponent($scope.data[key]) !== '' && typeof $scope.data[key] !== 'undefined'){
                        return true;
                    }
                }).map(function(key) {
                    return encodeURIComponent(key) + '=' + encodeURIComponent($scope.data[key]); 
                }).join('&');
                var valuations = toQueryString($scope.valuations, 'valuations');
                var sales = toQueryString($scope.sales, 'sales');
                var file_path = $rootScope.apiURL + 'v1/property/export/report/' + filetype + '/' + details +'?token='+localStorage.getItem('satellizer_token') + '&' + valuations + '&' + sales;
            }
            console.log(file_path);
            var a = document.createElement('A');
            a.href = file_path;
            a.download = file_path.substr(file_path.lastIndexOf('/') + 1);
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }


    }
);





