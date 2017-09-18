/***
Metronic AngularJS App Main Script
***/

/* Metronic App */
var MetronicApp = angular.module("MetronicApp", [
    "ui.router", 
    "ui.bootstrap", 
    "oc.lazyLoad",  
    "ngSanitize",
    'satellizer',
    'thatisuday.dropzone'
]);

/* Configure ocLazyLoader(refer: https://github.com/ocombe/ocLazyLoad) */
MetronicApp.config(['$ocLazyLoadProvider', function($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        // global configs go here

    });
}]);

//AngularJS v1.3.x workaround for old style controller declarition in HTML
MetronicApp.config(['$controllerProvider', function($controllerProvider) {
  // this option might be handy for migrating old apps, but please don't use it
  // in new ones!
  $controllerProvider.allowGlobals();
}]);

/********************************************
 END: BREAKING CHANGE in AngularJS v1.3.x:
*********************************************/

/* Setup global settings */
MetronicApp.factory('settings', ['$rootScope', function($rootScope) {
    // supported languages

    var isLive = false;
    
    var settings = {
        layout: {
            pageSidebarClosed: false, // sidebar menu state
            pageContentWhite: true, // set page content layout
            pageBodySolid: false, // solid body color state
            pageAutoScrollOnLoad: 1000 // auto scroll to top on page load
        },
        assetsPath: '../assets',
        globalPath: '../assets/global',
        layoutPath: '../assets/layouts/layout',
    };

    if( isLive ) {
        $rootScope.apiURL = 'https://svisapi.theprofessionals.com.pg/public/api/';
    }
    else {
        $rootScope.apiURL = 'https://theprofessionals.dev/api/';
    }

    $rootScope.settings = settings;


    return settings;
}]);

/* Setup App Main Controller */
MetronicApp.controller('AppController', ['$scope', '$rootScope', function($scope, $rootScope) {
    $scope.$on('$viewContentLoaded', function() {
        //App.initComponents(); // init core components
        //Layout.init(); //  Init entire layout(header, footer, sidebar, etc) on page load if the partials included in server side instead of loading with ng-include directive 
    });
}]);

/***
Layout Partials.
By default the partials are loaded through AngularJS ng-include directive. In case they loaded in server side(e.g: PHP include function) then below partial 
initialization can be disabled and Layout.init() should be called on page load complete as explained above.
***/

/* Setup Layout Part - Header */
MetronicApp.controller('HeaderController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initHeader(); // init header
    });
}]);

/* Setup Layout Part - Sidebar */
MetronicApp.controller('SidebarController', ['$state', '$scope', function($state, $scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initSidebar($state); // init sidebar
    });
}]);

/* Setup Layout Part - Quick Sidebar */
MetronicApp.controller('QuickSidebarController', ['$scope', function($scope) {    
    $scope.$on('$includeContentLoaded', function() {
       setTimeout(function(){
            QuickSidebar.init(); // init quick sidebar        
        }, 2000)
    });
}]);

/* Setup Layout Part - Theme Panel */
MetronicApp.controller('ThemePanelController', ['$scope', function($scope) {    
    $scope.$on('$includeContentLoaded', function() {
        Demo.init(); // init theme panel
    });
}]);

/* Setup Layout Part - Footer */
MetronicApp.controller('FooterController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initFooter(); // init footer
    });
}]);



/* Setup Rounting For All Pages */
MetronicApp.config(['$stateProvider', '$urlRouterProvider', '$authProvider', function($stateProvider, $urlRouterProvider, $authProvider) {

    $authProvider.loginUrl = 'https://theprofessionals.dev/api/authenticate';

    $urlRouterProvider.otherwise("/login");  
    

    $stateProvider

        // Sales
        .state("sales", {
            url: "/sales",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                }
            },
            data: {pageTitle: 'Sales'}
        })

        // Sales Find
        .state("sales.find", {
            url: "/find",
            views: {
                'app-body-inner': {
                    templateUrl: "views/sales.html"
                },
                'find-result@sales.find': {
                    templateUrl: "views/property/property-sales.html",
                },
                'searchform@sales.find': {
                    templateUrl : "views/searchform.html"
                }
            },
            controller: "SalesController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/SalesController.js',
                            'js/controllers/PropertiesController.js'
                        ]                    
                    });
                }]
            },
            
            data: {pageTitle: 'Find Sales'}
        })

        .state("sales.details", {
            url: "/details",
            views: {
                'app-body-inner': {
                    templateUrl: "views/sales/sales-details.html",
                },
                'property-detail@sales.details': {
                    templateUrl : "views/property/property-details.html"
                }
            },
            controller: "SalesController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/css/bootstrap-fileinput.js',
                            './assets/vendor/css/jquery.inputmask.bundle.min.js',

                            'js/controllers/SalesController.js'
                        ]                    
                    });
                }]
            },
            data: {pageTitle: 'Sales Details'}
        })

        // Property
        .state("property", {
            url: "/property",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                }
            },
            data: {pageTitle: 'Property'}
        })

        .state("property.valuations", {
            url: "/valuations/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-valuations.html",
                }
            },
            controller: "ValuationsController",
            data: {pageTitle: 'Property Valuation List'},
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/ValuationsController.js'
                        ] 
                    });
                }]
            }
        })

        .state("property.sales", {
            url: "/sales/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-sales.html",
                }
            },
            controller: "SalesController",
            data: {pageTitle: 'Property Sales List'},
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/SalesController.js'
                        ] 
                    });
                }]
            }
        })

        .state("property.new", {
            url: "/new-property",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-new.html",
                },
                'property-detail@property.new': {
                    templateUrl : "views/property/property-details.html"
                }
            },
            controller: "PropertyNewController",
            data: {pageTitle: 'Create New Property'},
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            './assets/vendor/css/bootstrap-datepicker3.min.css',
                            './assets/vendor/js/bootstrap-datepicker.min.js',
                            './assets/vendor/css/bootstrap-wysihtml5.css',
                            './assets/vendor/js/wysihtml5-0.3.0.js',
                            './assets/vendor/js/bootstrap-wysihtml5.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/css/bootstrap-switch.min.css',
                            './assets/vendor/css/bootstrap-markdown.min.css',
                            './assets/vendor/css/typeahead.css',
                            './assets/vendor/js/spinner.min.js',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            './assets/vendor/js/angular-file-upload.min.js',
                            'js/controllers/PropertyNewController.js'
                        ] 
                    });
                }]
            }
        })
        .state("property.list", {
            url: "/properties",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property.html",
                }
            },
            controller: "PropertiesController",
            data: {pageTitle: 'Property List'},
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/PropertiesController.js'
                        ] 
                    });
                }]
            }
        })

        // Property > City
        .state("property.city", {
            url: "/city",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/city.html",
                }
            },
            data: {pageTitle: 'City List'},
            controller: "CityController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/CityController.js'
                        ] 
                    });
                }]
            }
        })

        // Property > Suburb
        .state("property.suburb", {
            url: "/suburb",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/suburb.html",
                }
            },
            data: {pageTitle: 'Suburb List'},
            controller: "SuburbController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/SuburbController.js'
                        ] 
                    });
                }]
            }
        })

        // Property > Lease Type
        .state("property.leaseType", {
            url: "/lease-type",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/lease-type.html",
                }
            },
            data: {pageTitle: 'Lease Type List'},
            controller: "LeaseTypeController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/LeaseTypeController.js'
                        ] 
                    });
                }]
            }
        })

        // Property > Class
        .state("property.class", {
            url: "/class",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/class.html",
                }
            },
            data: {pageTitle: 'Class List'},
            controller: "ClassController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/ClassController.js'
                        ] 
                    });
                }]
            }
        })

        // Property > Use
        .state("property.use", {
            url: "/use",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/use.html",
                }
            },
            data: {pageTitle: 'Use List'},
            controller: "UseController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/UseController.js'
                        ] 
                    });
                }]
            }
        })

        // Valuation
        .state("valuations", {
            url: "/find-valuation",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                },
                'app-body-inner@valuations': {
                    templateUrl: "views/valuations.html",
                },
                'find-result@valuations': {
                    templateUrl: "views/property/property-valuations.html",
                },
                'searchform@valuations': {
                    templateUrl : "views/searchform.html"
                }
            },
            controller: "ValuationsController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/ValuationsController.js',
                            'js/controllers/PropertiesController.js'
                        ]                    
                    });
                }]
            },
            data: {pageTitle: 'Find Valuations'}
        })

         // Reports
        .state("reports", {
            url: "/find-reports",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                },
                'app-body-inner@reports': {
                    templateUrl: "views/reports.html",
                },
                'property-details@reports' : {
                    templateUrl : "views/property/property-details.html"
                },
                'valuation-details@reports' : {
                    templateUrl : "views/property/property-valuations.html"
                },
                'sales-details@reports' : {
                    templateUrl : "views/property/property-sales.html"
                },
                'searchform@reports': {
                    templateUrl : "views/searchform.html"
                }
            },
            controller: "ReportsController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/ReportsController.js',
                            'js/controllers/PropertiesController.js',
                            'js/controllers/ValuationsController.js'
                        ]                    
                    });
                }]
            },
            data: {pageTitle: 'Find Reports'}
        })


        // Users Management
        .state("users", {
            url: "/users",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                },
                'app-body-inner@users': {
                    templateUrl: "views/users.html",
                }
            },
            controller: "UsersController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/UsersController.js'
                        ]                    
                    });
                }]
            },
            data: {pageTitle: 'Audit Trail'}
        })

        // Dashboard
        .state('dashboard', {
            url: "/dashboard",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html",            
                    controller: "DashboardController"
                }
            },
            data: {pageTitle: 'Admin Dashboard Template'},
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            './assets/vendor/css/morris.css',                            
                            './assets/vendor/js/morris.min.js',
                            './assets/vendor/js/raphael-min.js',                            
                            './assets/vendor/js/jquery.sparkline.min.js',

                            './assets/vendor/js/dashboard.min.js',
                            'js/controllers/DashboardController.js',
                        ] 
                    });
                }]
            }
        })

        // User Profile
        .state("profile", {
            url: "/profile",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                }
            },
            // 
            data: {pageTitle: 'User Profile'},
            controller: "UserProfileController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/css/profile.css',
                            
                            './assets/vendor/js/jquery.sparkline.min.js',
                            './assets/vendor/js/bootstrap-fileinput.js',

                            './assets/vendor/js/profile.min.js',

                            'js/controllers/UserProfileController.js'
                        ]                    
                    });
                }]
            }
        })

        // User Profile Account
        .state("profile.account", {
            url: "/account",
            views: {
                'app-body-inner': {
                    templateUrl: "views/profile/account.html",
                }
            },
            
            data: {pageTitle: 'User Account'}
        })

        // Audit Trail
        .state("audit_trail", {
            url: "/audit-trail",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                },
                'app-body-inner@audit_trail': {
                    templateUrl: "views/audit_trail.html",
                }
            },
            
            data: {pageTitle: 'Audit Trail'}
        })

                // deps: ['$ocLazyLoad', function($ocLazyLoad) {
                //     return $ocLazyLoad.load({
                //         name: 'MetronicApp',
                //         insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                //         files: [
                //             'js/controllers/PropertiesController.js'
                //         ] 
                //     });
                // }]



        // Login
        .state('login', {
            url: "/login",
            views: {
                'app-body': {
                    templateUrl: "views/login.html",            
                }
            },
            
            data: {pageTitle: 'Login Page'},
            controller: "LoginController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            'js/controllers/LoginController.js',
                        ] 
                    });
                }]
            }
        })

        // AngularJS plugins
        .state('fileupload', {
            url: "/file_upload.html",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"          
                },
                'app-body-inner@fileupload': {
                    templateUrl: "views/file_upload.html",
                }
            },

            data: {pageTitle: 'AngularJS File Upload'},
            controller: "GeneralPageController",
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'angularFileUpload',
                        files: [
                            './assets/vendor/js/angular-file-upload.min.js',
                        ] 
                    }, {
                        name: 'MetronicApp',
                        files: [
                            'js/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })


        

        // User Profile Dashboard
        .state("profile.dashboard", {
            url: "/dashboard",
            templateUrl: "views/profile/dashboard.html",
            data: {pageTitle: 'User Profile'}
        })

}]);

/* Init global settings and run the app */
MetronicApp.run(["$rootScope", "settings", "$state", '$templateCache', '$templateRequest', function($rootScope, settings, $state, $templateCache, $templateRequest) {
    $templateRequest('./views/property/property-upload-gallery.html').then(function (response) {
        $templateCache.put('property-upload-gallery.html', response);
    });
    $rootScope.$state = $state; // state to be accessed from view
    $rootScope.$settings = settings; // state to be accessed from view
}]);