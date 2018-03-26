MetronicApp.service('PropertyService', function($http, $rootScope) {
    var properties = [];
    
    var addProperty = function(newObj) {
        properties.push(newObj);
    }
    var getProperties = function() {
        return properties;
    }

    return {
        addProperty : addProperty,
        getProperties : getProperties
    }
});

MetronicApp.service('FUNC', function($http, $rootScope, $auth, $state) {
    this.nformat = function(n) {
        return n.replace(/(\d)(?=(\d{3})+(,|$))/g, '$1,');
    };
    this.tryLogout = function(error) {
        if(typeof error !== 'null') {
            if(error.error == 'token_expired' || error.error == 'token_invalid' || error.error == 'token_absent' || error.error == 'token_not_provided' || error.error == 'user_not_found') {
                this.forceLogout();    
                return true;
            }
        }
        return false;
    };
    this.forceLogout = function() {
        $auth.logout().then(function() {
                // Remove the authenticated user from local storage
                localStorage.removeItem('user');
                // Remove the current user info from rootscope
                $rootScope.currentUser = null;
                $state.go('login',{}, {reload: true});
        });
    };
    this.resetform = function() {
        return {
            data : [],
            searchdata : [],
            data_temp : [],
            temp : {
                enable_price_range : false,
                enable_area_range : false
            },
            valuations : [],
            searchdata : {
                price_min : 0,
                price_max : 1000000,
                area_min : 0,
                area_max : 5000,
                sales_price_min : 0,
                sales_price_max : 1000000,
                rentals_price_min : 0,
                rentals_price_max : 1000000
            },
            multipleResultsShow : false,
            multi_property_results : false,
            resultReady : false
        }
    };
    this.smart_number = function(input, withComma) {
        if (typeof withComma === 'undefined') 
            withComma = false;
        else
            withComma = true;
        let ret = input.toString().replace(/[^\d.-]/g, '');
        if(withComma)
            ret = ret.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        return parseFloat(ret);
    }

});