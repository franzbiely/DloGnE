/* Setup blank page controller */
angular.module('MetronicApp').controller('LeaseTypeController', ['$rootScope', '$scope', 'settings', function($rootScope, $scope, settings) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();

        // set default layout mode
        // $rootScope.settings.layout.pageContentWhite = true;
        // $rootScope.settings.layout.pageBodySolid = false;
        // $rootScope.settings.layout.pageSidebarClosed = false;
    });
    $scope.leaseTypeModal = function() {
    	var form = $('<form id="frmCity" role="form" class="form-horizontal">\
                        <div class="form-body">\
                            <div class="form-group">\
                                <label class="col-md-4 control-label">Lease Type Name</label>\
                                <div class="col-md-8">\
                                    <div class="input-icon right">\
                                        <i class="fa fa-info-circle tooltips" data-original-title="Email address" data-container="body"></i>\
                                        <input type="text" class="form-control"> </div>\
                                </div>\
                            </div>\
                        </div>\
                    </form>');
    	bootbox.confirm({
    		title : "Add New Lease Type",
    		message : form,
    		callback : function(res) {
	    		if(res)
	    			$('#frmCity').submit();
	    	}
    	});
    }
}]);
