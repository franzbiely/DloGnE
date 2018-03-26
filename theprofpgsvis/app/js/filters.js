MetronicApp.filter('pretty_filename', function() {
    return function(input) {
        input = input || '';
        return input.substring(input.indexOf('___') + 3,input.length);
    };
});

MetronicApp.filter('smart_number', function () {
  return function (input) {
  	if(typeof input !== 'undefined')
      return input.toString().replace(/[^\d.-]/g, '').replace(/_/g, ' ').replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  };
});