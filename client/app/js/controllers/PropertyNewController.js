/* Setup blank page controller */
angular.module('MetronicApp').controller('PropertyNewController', ['$rootScope', '$scope', 'settings', '$timeout', function($rootScope, $scope, settings, $timeout) {
    $scope.$on('$viewContentLoaded', function() {   
        // initialize core components
        App.initAjax();

        // set default layout mode
        $rootScope.settings.layout.pageContentWhite = true;
        $rootScope.settings.layout.pageBodySolid = false;
        $rootScope.settings.layout.pageSidebarClosed = false;
    });
    
    $scope.uploadGallery = function() {
        Dropzone.autoDiscover = false;
    	var form = $('');
    	bootbox.confirm({
    		title : "Upload Gallery Images",
    		message : form,
    		callback : function(res) {
	    		if(res)
	    			$('#frmGalleryUpload').submit();
	    	}
    	});
    }

}]);
