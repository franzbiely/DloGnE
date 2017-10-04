angular.module('MetronicApp').controller('SalesController', 
    function($rootScope, $scope, $http, $timeout, $stateParams) {
        $scope.$on('$viewContentLoaded', function() {   
            App.initAjax(); // initialize core components  
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
                console.log('Service error : ',error);
                if(error.error == "token_expired")
                    $rootScope.logout();
            })
        };
        $scope.init();

        // From Reports
        $scope.showResult = function(property_id) {
            $scope.hasActions = false;
            var str;

            if(property_id != null) {
                str = 'id='+ property_id;
            }
            else {
                str = Object.keys($scope.data).map(function(key){ 
                    if(encodeURIComponent($scope.data[key]) !== 'undefined'){
                        return encodeURIComponent(key) + '=' + encodeURIComponent($scope.data[key]); 
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
                    for (var i = 0; i < response.data.length; i++) {
                        $scope.property_id = response.data[i].id;
                        $scope.data.code = response.data[i].code;
                        $scope.data.description = response.data[i].description;
                        $scope.data.property_use_selected = response.data[i].property__use;
                        $scope.data.property_class_selected = response.data[i].property__class;
                        $scope.data.property_lease_type_selected = response.data[i].property__lease__type;
                        $scope.data.property_city_selected = response.data[i].property__city;
                        $scope.data.property_suburb_selected = response.data[i].property__suburb;
                        $scope.data.port = response.data[i].port;
                        $scope.data.sec = response.data[i].sec;
                        $scope.data.lot = response.data[i].lot;
                        $scope.data.unit = response.data[i].unit;
                        $scope.data.land_value = response.data[i].land_value;
                        $scope.data.land_component = response.data[i].land_component;
                        $scope.data.improvement_component = response.data[i].improvement_component;
                        $scope.data.area = response.data[i].area;
                    }
                    // Get Sales data
                    $http.get($rootScope.apiURL + 'v1/sale/prop/'+ $scope.property_id + '?token='+localStorage.getItem('satellizer_token')).success(function(res) {
                        $scope.sales = res.data;
                    }).error(function(error) {
                        console.log('Service error : ',error);
                    })

                    $scope.resultReady = true;
                }

            }).error(function(error) {
                console.log('Error loading '+ $rootScope.apiURL + 'v1/property/param/');  
            });
        }

        // Modal
        $scope.showModal = function(key = -1) {
            var form = '<form ng-submit="foo()" id="frmSale" name="frmSale" role="form" class="form-horizontal">\
                            <div class="form-body">\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Date</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope[plural][key].date+'" class="form-control" name="date" id="date"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="date" id="date" placeholder="2017-01-20"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Value</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope[plural][key].value+'" class="form-control" name="value" id="value"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="value" id="value"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Buyer</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope[plural][key].buyer+'" class="form-control" name="buyer" id="buyer"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="buyer" id="buyer"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                                <div class="form-group">\
                                    <label class="col-md-4 control-label">Remarks</label>\
                                    <div class="col-md-8">\
                                        <div class="input-icon right">\
                                            <i class="fa fa-info-circle tooltips" data-container="body"></i>';
                if(key > -1) {
                    form +=                     '<input type="text" value="'+$scope[plural][key].remarks+'" class="form-control" name="remarks" id="remarks"> </div>';
                }
                else {
                    form +=                     '<input type="text" class="form-control" name="remarks" id="remarks"> </div>';    
                }
                form +=             '</div>\
                                </div>\
                            </div>\
                        </form>';
                form = $(form);
            bootbox.confirm({
                title: "Add New Sale",
                message: form,
                callback: function(res) {
                    if (res){
                        $scope[singular].date = $('#frmSale')[0]['elements'].date.value;
                        $scope[singular].value = $('#frmSale')[0]['elements'].value.value;
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
                }
            });
        }

        // Delete
        $scope.delete = function(index, id) {

            $http.delete($rootScope.apiURL + 'v1/'+singular+'/' + id + '?token='+localStorage.getItem('satellizer_token'))
                .success(function() {
                    $scope[plural].splice(index, 1);
                });;
        }

        // Add
        $scope.add = function() {
            $http.post($rootScope.apiURL + 'v1/'+singular+'?token='+localStorage.getItem('satellizer_token'), {
                date : $scope[singular].date,
                value : $scope[singular].value,
                buyer : $scope[singular].buyer,
                remarks : $scope[singular].remarks,
                property_id : $scope.property_id 
            }).success(function(response) {
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
                alert("Updated Successfully");
            }).error(function(){
                console.log("error");
            });
        }
    }
);