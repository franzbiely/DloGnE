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
    'permission',
    'thatisuday.dropzone',
    'rzModule',
    'angularMoment'
]);

/* Init global settings and run the app */
MetronicApp.run(['$rootScope', 'settings', '$state', '$templateCache', '$templateRequest', '$auth', 'Permission','$http',
    function($rootScope, settings, $state, $templateCache, $templateRequest, $auth, Permission, $http) {
    $rootScope.$state = $state; // state to be accessed from view
    $rootScope.$settings = settings; // state to be accessed from view
    
    $rootScope.pageSidebarClosed = false;

    $rootScope.currentUser = JSON.parse(localStorage.getItem('user'));
    
    // Define anonymous role
    
    Permission.defineRole('anonymous', function (stateParams) {
        if (!$auth.isAuthenticated()) {
            return true; // Is anonymous
        }
        return false;
    })
    .defineRole('isloggedin', function (stateParams) {
        if ($auth.isAuthenticated()) {
            return true; // Is loggedin
        }
        return false;
    });

    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    if(getCookie("username") == "") {
        localStorage.removeItem('user');
        localStorage.removeItem('satellizer_token');
    }

}]);
/* Configure ocLazyLoader(refer: https://github.com/ocombe/ocLazyLoad) */
MetronicApp.config(['$ocLazyLoadProvider', function($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        // global configs go here

    });
}]);

MetronicApp.config(['$interpolateProvider', function($interpolateProvider) {
    $interpolateProvider.startSymbol('{[{').endSymbol('}]}');
}]);

//AngularJS v1.3.x workaround for old style controller declarition in HTML
MetronicApp.config(['$controllerProvider', function($controllerProvider) {
  // this option might be handy for migrating old apps, but please don't use it
  // in new ones!
  $controllerProvider.allowGlobals();
}]);

MetronicApp.animation('.slide-toggle-js', function(){
  return {
    enter: function(element, done) {
      $(element).hide().slideDown(function(){
          done();
        });
    },
    leave: function(element, done) {
      $(element).slideUp(function(){
          done();
        });      
    }
  };  
});
/********************************************
 END: BREAKING CHANGE in AngularJS v1.3.x:
*********************************************/

/* Setup global settings */
MetronicApp.factory('settings', ['$rootScope', function($rootScope) {
    // supported languages

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
    if( app_config.env == 'stage' ) {
        $rootScope.apiURL = 'https://svisapi.theprofessionals.com.pg/public/api/';
        $rootScope.apiPublicURL = 'https://svisapi.theprofessionals.com.pg/public/';
    }
    else if( app_config.env == 'testsite') {
        $rootScope.apiURL = 'https://testsvisapi.theprofessionals.com.pg/public/api/';
        $rootScope.apiPublicURL = 'https://testsvisapi.theprofessionals.com.pg/public/';
    }
    else {
        $rootScope.apiURL = 'https://theprofessionals.local/api/';
        $rootScope.apiPublicURL = 'https://theprofessionals.local/';
    }

    $rootScope.settings = settings;


    return settings;
}]);
MetronicApp.factory('authProvider', function() {
    var user;
    return {
        setUser : function(aUser){
            user = aUser;
        },
        isLoggedIn : function(){
            return(user)? user : false;
        }
    };
});
/* Setup App Main Controller */
MetronicApp.controller('AppController', function($auth, $state, $scope, $rootScope, $http) {
    const token = localStorage.getItem('satellizer_token');
    
    $rootScope.logout = function() {
        $auth.logout().then(function() {
            const user = JSON.parse(localStorage.getItem('user'));
            $http.post($rootScope.apiURL + 'v1/audit_trail?token='+token, {
                user_id : user.id,
                log : 'logged out'
            }).success(function(response) {
                // Remove the authenticated user from local storage
                localStorage.removeItem('user');

                // Remove the current user info from rootscope
                $rootScope.currentUser = null;
                $state.go('login',{}, {reload: true});
            })
        });
    }


    $scope.$on('$viewContentLoaded', function() {
        // $templateCache.removeAll();
        //App.initComponents(); // init core components
        //Layout.init(); //  Init entire layout(header, footer, sidebar, etc) on page load if the partials included in server side instead of loading with ng-include directive 

        // when logged in
        var user = JSON.parse(localStorage.getItem('user'));
        if((user != null)) {
            $scope.user = user;
            $scope.role = [];

            switch($scope.user.role) {
                case 'Data Access' : 
                    $scope.role.can_access_reports = true;
                    $scope.role.can_access_property_list = true;
                    break;
                case 'Data Entry' : 
                    $scope.role.can_access_property_list = true;
                    break;
                case 'Administrator' : 
                    $scope.role.can_manage_staffs = true;
                    $scope.role.can_access_audit_trail = true;
                    $scope.role.can_manage_tables = true;
                    break;
            }
        }
    });
});



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
// MetronicApp.controller('QuickSidebarController', ['$scope', function($scope) {    
//     $scope.$on('$includeContentLoaded', function() {
//        setTimeout(function(){
//             QuickSidebar.init(); // init quick sidebar        
//         }, 2000)
//     });
// }]);

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

    if(app_config.env == 'stage') {
        $authProvider.loginUrl = 'https://svisapi.theprofessionals.com.pg/public/api/authenticate';    
    }
    else if( app_config.env == 'testsite') {
        $authProvider.loginUrl = 'https://testsvisapi.theprofessionals.com.pg/public/api/authenticate';    
    }
    else {
        $authProvider.loginUrl = 'https://theprofessionals.local/api/authenticate';
    }
    

    $urlRouterProvider.otherwise("/login");  
    

    $stateProvider

        // Rentals
        .state("rentals", {
            url: "/rentals",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"
                },
                'app-body-inner@rentals': {
                    templateUrl: "views/rentals.html", controller : "RentalsController"
                },
                'valuation-details@rentals' : {
                    templateUrl : "views/property/property-rentals.html"
                },
                'searchform@rentals': {
                    templateUrl : "views/searchform.html"
                },
                'multi-properties-result@rentals' : {
                    templateUrl : "views/multi-properties-result.html"
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
        .state("rentals.area", {
            url: "/area",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-area.html",
                    controller: "RentalAreaController"
                },
                'extract-buttons@rentals.area' : {
                    templateUrl: "views/extract-buttons.html",controller: "RentalAreaController"
                }
            },
            data: {
                pageTitle: 'Rental Area List',
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
                            'js/controllers/RentalAreaController.js'
                        ] 
                    });
                }]
            }
        })
        .state("rentals.period", {
            url: "/period",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-period.html",
                    controller: "RentalPeriodController"
                },
                'extract-buttons@rentals.period' : {
                    templateUrl: "views/extract-buttons.html",controller: "RentalPeriodController"
                }
            },
            data: {
                pageTitle: 'Rental Period List',
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
                            'js/controllers/RentalPeriodController.js'
                        ] 
                    });
                }]
            }
        })
        .state("rentals.inclusion", {
            url: "/inclusion",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-inclusion.html",
                    controller: "RentalInclusionController"
                },
                'extract-buttons@rentals.inclusion' : {
                    templateUrl: "views/extract-buttons.html",controller: "RentalPeriodController"
                }
            },
            data: {
                pageTitle: 'Rental Period List',
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
                            'js/controllers/RentalInclusionController.js'
                        ] 
                    });
                }]
            }
        })
        .state("rentals.maintenance", {
            url: "/maintenance",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-maintenance.html",
                    controller: "RentalMaintenanceController"
                },
                'extract-buttons@rentals.maintenance' : {
                    templateUrl: "views/extract-buttons.html",controller: "RentalMaintenanceController"
                }
            },
            data: {
                pageTitle: 'Rental Maintenance List',
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
                            'js/controllers/RentalMaintenanceController.js'
                        ] 
                    });
                }]
            }
        })
        .state("rentals.reviewmethod", {
            url: "/reviewmethod",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-reviewmethod.html",
                    controller: "RentalReviewMethodController"
                },
                'extract-buttons@rentals.reviewmethod' : {
                    templateUrl: "views/extract-buttons.html",controller: "RentalReviewMethodController"
                }
            },
            data: {
                pageTitle: 'Rental ReviewMethod List',
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
                            'js/controllers/RentalReviewMethodController.js'
                        ] 
                    });
                }]
            }
        })
        .state("rentals.details", {
            url: "/details/:rental_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-details.html",
                    controller: "RentalDetailsController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/RentalDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Rental Details',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })
        .state("rentals.new", {
            url: "/new/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/rentals/rental-details.html",
                    controller: "RentalDetailsController"
                },
                'property-detail@rental.details': {
                    templateUrl : "views/property/property-details.html",
                    controller: "PropertyNewController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/PropertyNewController.js',
                            'js/controllers/RentalDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'New Rental',
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
        

        // Sales
        .state("sales", {
            url: "/sales",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"
                },
                'app-body-inner@sales': {
                    templateUrl: "views/sales.html", controller : "SalesController"
                },
                'sales-details@sales' : {
                    templateUrl : "views/property/property-sales.html"
                },
                'searchform@sales': {
                    templateUrl : "views/searchform.html"
                },
                'multi-properties-result@sales' : {
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
                            'js/controllers/SalesController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Sales',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })

        // Sales Find
        .state("sales.find", {
            url: "/find",

            views: {
                'app-body-inner': {
                    templateUrl: "views/sales.html",controller: "SalesController"
                },
                'sales-details@sales.find' : {
                    templateUrl : "views/property/property-sales.html"
                },
                'searchform@sales.find': {
                    templateUrl : "views/searchform.html"
                },
                'multi-properties-result@sales.find' : {
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
                            'js/controllers/SalesController.js',
                            'js/controllers/PropertiesController.js'
                        ]                    
                    });
                }]
            },
            
            data: {
                pageTitle: 'Find Sales',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })
        .state("sales.list", {
            url: "/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-sales.html",
                    controller: "SalesController"
                }
            },
            data: {
                pageTitle: 'Property Sales List',
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
                            'js/controllers/SalesController.js'
                        ] 
                    });
                }]
            }
        })
        .state("sales.details", {
            url: "/details/:sales_id/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/sales/sales-details.html",
                    controller: "SalesDetailsController"
                },
                'property-detail@sales.details': {
                    templateUrl : "views/property/property-details.html",
                    controller: "PropertyNewController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/PropertyNewController.js',
                            'js/controllers/SalesDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Sales Details',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })
        .state("sales.new", {
            url: "/new/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/sales/sales-details.html",
                    controller: "SalesDetailsController"
                },
                'property-detail@sales.details': {
                    templateUrl : "views/property/property-details.html",
                    controller: "PropertyNewController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/PropertyNewController.js',
                            'js/controllers/ValuationDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'New Valuation',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })

        // Property
        .state("property", {
            url: "/property",
            controller: "PropertiesController",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"
                }
            },
            data: {
                pageTitle: 'Property',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })

        

        .state("property.sales", {
            url: "/sales/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-sales.html",
                    controller: "SalesController"
                }
            },
            data: {
                pageTitle: 'Property Sales List',
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
                    templateUrl: "views/property/property-new.html",controller: "PropertyNewController"
                },
                'property-detail@property.new': {
                    templateUrl : "views/property/property-details.html"
                },
                'extract-buttons@property.new' : {
                    templateUrl: "views/extract-buttons.html"
                }
            },
            data: {
                pageTitle: 'Create New Property',
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
        .state("property.edit", {
            url: "/edit-property/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-new.html",controller: "PropertyNewController"
                },
                'property-detail@property.edit': {
                    templateUrl : "views/property/property-details.html"
                },
                'valuation-details@property.edit' : {
                    templateUrl : "views/property/property-valuations.html"
                },
                'sales-details@property.edit' : {
                    templateUrl : "views/property/property-sales.html"
                },
                'rental-details@property.edit' : {
                    templateUrl : "views/property/property-rentals.html"
                }
            },
            data: {
                pageTitle: 'Edit Property',
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
                    templateUrl: "views/property/property.html",controller: "PropertiesController"
                },
                'extract-buttons@property.list' : {
                    templateUrl: "views/extract-buttons.html",controller: "PropertiesController"
                }
            },
            data: {
                pageTitle: 'Property List',
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
                            'js/controllers/PropertiesController.js'
                        ] 
                    });
                }]
            }
        })
        .state("property.archives", {
            url: "/archives",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/archives.html",
                    controller: "PropertiesController"
                }
            },
            data: {
                pageTitle: 'Property Archive List',
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
                    templateUrl: "views/property/city.html",controller: "CityController"
                },
                'extract-buttons@property.city' : {
                    templateUrl: "views/extract-buttons.html",controller: "CityController"
                }
            },
            data: {
                pageTitle: 'City List',
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
                    templateUrl: "views/property/suburb.html",controller: "SuburbController"
                },
                'extract-buttons@property.suburb' : {
                    templateUrl: "views/extract-buttons.html",controller: "SuburbController"
                }
            },
            data: {
                pageTitle: 'Suburb List',
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
                    templateUrl: "views/property/lease-type.html",controller: "LeaseTypeController"
                },
                'extract-buttons@property.leaseType' : {
                    templateUrl: "views/extract-buttons.html",controller: "LeaseTypeController"
                }
            },
            data: {
                pageTitle: 'Lease Type List',
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
                    templateUrl: "views/property/class.html",controller: "ClassController"
                },
                'extract-buttons@property.class' : {
                    templateUrl: "views/extract-buttons.html",controller: "ClassController"
                }
            },
            data: {
                pageTitle: 'Class List',
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
                    templateUrl: "views/property/use.html",controller: "UseController" 
                },
                'extract-buttons@property.use' : {
                    templateUrl: "views/extract-buttons.html",controller: "UseController" 
                }
            },
            data: {
                pageTitle: 'Use List',
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
                            'js/controllers/UseController.js'
                        ] 
                    });
                }]
            }
        })

        // Valuation
        .state("valuations", {
            url: "/valuations",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html"
                },
                'app-body-inner@valuations': {
                    templateUrl: "views/valuations.html", controller : "ValuationsController"
                },
                'valuation-details@valuations' : {
                    templateUrl : "views/property/property-valuations.html"
                },
                'searchform@valuations': {
                    templateUrl : "views/searchform.html"
                },
                'multi-properties-result@valuations' : {
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
                            'js/controllers/ValuationsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Find Valuations',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })
        .state("valuations.list", {
            url: "/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-valuations.html",controller : "ValuationsController"         
                }
            },
            data: {
                pageTitle: 'Property Valuation List',
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
                            'js/controllers/ValuationsController.js'
                        ] 
                    });
                }]
            }
        })
        .state("property.valuations", {
            url: "/valuations/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/property/property-valuations.html",
                    controller: "ValuationsController"
                }
            },
            data: {
                pageTitle: 'Property Valuation List',
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
                            'js/controllers/ValuationsController.js'
                        ] 
                    });
                }]
            }
        })
        .state("valuations.details", {
            url: "/details/:valuation_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/valuation/valuation-details.html",
                    controller: "ValuationDetailsController"
                },
                'property-detail@valuation.details': {
                    templateUrl : "views/property/property-details.html",
                    controller: "PropertyNewController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/PropertyNewController.js',
                            'js/controllers/ValuationDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Valuation Details',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })
        .state("valuations.new", {
            url: "/new/:property_id",
            views: {
                'app-body-inner': {
                    templateUrl: "views/valuation/valuation-details.html",
                    controller: "ValuationDetailsController"
                },
                'property-detail@valuation.details': {
                    templateUrl : "views/property/property-details.html",
                    controller: "PropertyNewController"
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
                            './assets/vendor/js/angular-file-upload.min.js',
                            './assets/vendor/css/bootstrap-fileinput.css',
                            './assets/vendor/js/bootstrap-fileinput.js',
                            './assets/vendor/js/jquery.inputmask.bundle.min.js',
                            'js/controllers/PropertyNewController.js',
                            'js/controllers/ValuationDetailsController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'New Valuation',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })

         // Reports
        .state("reports", {
            url: "/find-reports/",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html",controller: "ReportsController"
                },
                'app-body-inner@reports': {
                    templateUrl: "views/reports.html"
                },
                'property-details@reports' : {
                    templateUrl : "views/property/property-details-report.html"
                },
                'valuation-details@reports' : {
                    templateUrl : "views/property/property-valuations.html"
                },
                'sales-details@reports' : {
                    templateUrl : "views/property/property-sales.html"
                },
                'rentals-details@reports' : {
                    templateUrl : "views/property/property-rentals.html"
                },
                'searchform@reports': {
                    templateUrl : "views/searchform.html"
                },
                'multi-properties-result@reports' : {
                    templateUrl : "views/multi-properties-result.html"
                },
                'extract-buttons@reports' : {
                    templateUrl: "views/extract-buttons.html"
                }
            },
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        cache : false,
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/ReportsController.js',
                            'js/controllers/PropertiesController.js',
                            'js/controllers/ValuationsController.js',
                            'js/controllers/SalesDetailsController.js',
                            'js/controllers/SalesController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Find Reports',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })


        // Users Management
        .state("users", {
            url: "/users",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html",controller: "UsersController"
                },
                'app-body-inner@users': {
                    templateUrl: "views/users.html",controller: "UsersController"
                }
            },
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',  
                        cache : false,
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/UsersController.js'
                        ]                    
                    });
                }]
            },
            data: {
                pageTitle: 'Audit Trail',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
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
            data: {
                pageTitle: 'Admin Dashboard Template',
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
                    templateUrl: "views/dashboard.html",controller: "UserProfileController"
                }
            },
            data: {
                pageTitle: 'User Profile',
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
                    templateUrl: "views/profile/account.html",controller: "UserProfileController"
                }
            },
            data: {
                pageTitle: 'User Account',
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
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/UserProfileController.js'
                        ]                    
                    });
                }]
            }
        })

        // Audit Trail
        .state("audit_trail", {
            url: "/audit-trail",
            views: {
                'app-body': {
                    templateUrl: "views/dashboard.html",controller: "AuditTrailController"
                },
                'app-body-inner@audit_trail': {
                    templateUrl: "views/audit_trail.html",controller: "AuditTrailController"
                }
            },
            data: {
                pageTitle: 'Audit Trail',
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
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            'js/controllers/AuditTrailController.js'
                        ]                    
                    });
                }]
            }
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
                    templateUrl: "views/login.html",controller: "LoginController"        
                }
            },
            
            data: {
                pageTitle: 'Login Page',
                permissions: {
                    except: ['isloggedin'],
                    redirectTo: 'dashboard'
                }
            },
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'MetronicApp',
                        cache : false,
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
                    templateUrl: "views/dashboard.html",controller: "GeneralPageController"
                },
                'app-body-inner@fileupload': {
                    templateUrl: "views/file_upload.html",controller: "GeneralPageController"
                }
            },
            data: {
                pageTitle: 'AngularJS File Upload',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            },
            resolve: {
                deps: ['$ocLazyLoad', function($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'angularFileUpload',
                        cache : false,
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
            data: {
                pageTitle: 'User Profile',
                permissions: {
                    except: ['anonymous'],
                    redirectTo: 'login'
                }
            }
        })

}]);
