// Rentals
.state("rentals", {
    url: "/rentals",
    views: {
        'app-body': {
            templateUrl: "views/dashboard.html",
            controller : "RentalsController"
        }
    },
    data: {
        pageTitle: 'Rentals',
        permissions: {
            except: ['anonymous'],
            redirectTo: 'login'
        }
    }
})

// Rentals Find
.state("rentals.find", {
    url: "/find",

    views: {
        'app-body-inner': {
            templateUrl: "views/rentals.html",controller: "RentalsController"
        },
        'rentals-details@rentals.find' : {
            templateUrl : "views/property/property-rentals.html"
        },
        'searchform@rentals.find': {
            templateUrl : "views/searchform.html"
        },
        'multi-properties-result@rentals.find' : {
            templateUrl : "views/multi-properties-result.html"
        }
    },
    resolve: {
        deps: ['$ocLazyLoad', function($ocLazyLoad) {
            return $ocLazyLoad.load({
                name: 'MetronicApp',  
                cache : false,
                insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                files: [
                    './assets/vendor/css/bootstrap-datepicker3.min.css',
                    './assets/vendor/js/bootstrap-datepicker.min.js',
                    'js/controllers/RentalsController.js',
                    'js/controllers/PropertiesController.js'
                ]                    
            });
        }]
    },
    
    data: {
        pageTitle: 'Find Rentals',
        permissions: {
            except: ['anonymous'],
            redirectTo: 'login'
        }
    }
})
.state("rentals.list", {
    url: "/:property_id",
    views: {
        'app-body-inner': {
            templateUrl: "views/property/property-rentals.html",
            controller: "RentalsController"
        }
    },
    data: {
        pageTitle: 'Property Rentals List',
        permissions: {
            except: ['anonymous'],
            redirectTo: 'login'
        }
    },
    resolve: {
        deps: ['$ocLazyLoad', function($ocLazyLoad) {
            return $ocLazyLoad.load({
                name: 'MetronicApp',
                cache : false,
                insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                files: [
                    './assets/vendor/css/bootstrap-datepicker3.min.css',
                    './assets/vendor/js/bootstrap-datepicker.min.js',
                    'js/controllers/RentalsController.js'
                ] 
            });
        }]
    }
})