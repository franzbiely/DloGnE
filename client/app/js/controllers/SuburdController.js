/* Setup blank page controller */
angular.module('MetronicApp').controller('SuburdController', function($rootScope, $scope, settings, $http, $compile) {
    $scope.$on('$viewContentLoaded', function() {   
        App.initAjax();
    });
    $scope.property_suburbs = [];
    $scope.error;
    $scope.property_suburb;

    $scope.suburdModal = function() {
        var form = $('<form id="frmSuburd" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Suburd Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-original-title="Email address" data-container="body"></i>\
                                        <input type="text" class="form-control"> </div>\
                                </div>\
                            </div>\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">City</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-original-title="Email address" data-container="body"></i>\
                                        <select class="form-control">\
                                            <option>city 1</option>\
                                        </select> </div>\
                                </div>\
                            </div>\
                        </div>\
                    </form>');
        bootbox.confirm({
            title : "Add New Suburd",
            message : form,
            callback : function(res) {
                if(res)
                    $('#frmSuburd').submit();
            }
        });
    }

    // Display
    $scope.init = function() {
        $http.get('https://theprofessionals.dev/api/v1/property_suburb').success(function(property_suburbs) {
            $scope.property_suburbs = property_suburbs.data;
            console.log($scope.property_suburbs);
        }).error(function(error) {
            $scope.error = error;
        })
    };
    $scope.init();

    // Delete
    $scope.deleteCity = function(index, id) {
        console.log(index, id);

        $http.delete('https://theprofessionals.dev/api/v1/property_suburb/' + id)
            .success(function() {
                $scope.property_suburbs.splice(index, 1);
            });;
    }

    // Add
    $scope.addCity = function() {
 
        $http.post('https://theprofessionals.dev/api/v1/property_suburb', {
            name: $scope.property_suburb
        }).success(function(response) {

            $scope.property_suburbs.push(response.data);
            console.log($scope.property_suburb);
            $scope.property_suburb = '';

        }).error(function(){
            console.log("error");
        });
    };

    // Update
    $scope.updateCity = function(id){
      $http.put('https://theprofessionals.dev/api/v1/property_suburb/' + id, {
            name: $scope.property_suburb
        }).success(function(response) {
            console.log("Updated Successfully");
        }).error(function(){
            console.log("error");
        });
    }
});
