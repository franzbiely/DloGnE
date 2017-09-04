var UIBootbox = function () {

    var handleDemo = function() {

        $('#add_new_city').click(function(){
                bootbox.alert("Hello world!");    
            });
            //end #demo_1
    }

    return {

        //main function to initiate the module
        init: function () {
            handleDemo();
        }
    };

}();

jQuery(document).ready(function() {    
   UIBootbox.init();
});