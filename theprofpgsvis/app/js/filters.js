MetronicApp.filter('pretty_filename', function() {
    return function(input) {
        input = input || '';
        return input.substring(input.indexOf('___') + 3,input.length);
    };
});