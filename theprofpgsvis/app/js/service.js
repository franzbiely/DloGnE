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