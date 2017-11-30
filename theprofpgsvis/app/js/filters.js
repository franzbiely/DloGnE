MetronicApp.filter('pretty_filename', function() {
    return function(input) {
        input = input || '';
        return input.substring(input.indexOf('__') + 2,input.length);
    };
});