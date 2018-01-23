<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', function () {
    return view('welcome');
});

// JWT

Route::group(['middleware' => 'cors', 'prefix' => 'api'], function()
{
	Route::get('check-session', 'AuthenticateController@checkSession');
    Route::resource('authenticate', 'AuthenticateController', ['only' => ['index']]);
    Route::post('authenticate', 'AuthenticateController@authenticate');
    Route::get('authenticate/user', 'AuthenticateController@getAuthenticatedUser');
    Route::get('auth/refresh-token', ['middleware' => 'jwt.refresh', function() {}]);
    Route::get('pass_generator/{string}', function(Request $request, $params) {
    	print_r(bcrypt($params)); exit();
    });
});

// JWT

Route::group(['middleware' => 'cors', 'prefix' => 'api/v1'], function(){

	// Route::get('download/{filename}', function($filename) {
	//     $filePath = storage_path().'/exports/'.$filename;


	//     if ( ! File::exists($filePath) ) {
	//         return Response::make("File does not exist.", 404);
	//     }

	//     $fileContents = File::get($filePath);
	//     $mimeType = 'application/vnd.ms-excel';
	//     return Response::make($fileContents, 200, array('Content-Type' => $mimeType));
	// });




	Route::resource('property_use', 'PropertyUsesController');
	Route::resource('property_class', 'PropertyClassesController');
	Route::resource('property_lease_type', 'PropertyLeaseTypesController');
	Route::resource('property_city', 'PropertyCitiesController');
	Route::resource('property_suburb', 'PropertySuburbsController');
	
	Route::get('property/param/{params}', 'PropertiesController@getByParam');
	
	// Single
	Route::post('property/export/report/csv/{property}', 'PropertiesController@export_report_csv');
	Route::post('property/export/report/excel/{property}', 'PropertiesController@export_report_excel');
	Route::post('property/export/report/pdf/{property}', 'PropertiesController@export_report_pdf');
	Route::post('property/export/report/pdf-snapshot/{property}', 'PropertiesController@export_report_snapshot_pdf');
	
	// Multiple
	Route::post('properties/export/report/csv', 'PropertiesController@export_report_csv_list');
	Route::post('properties/export/report/excel', 'PropertiesController@export_report_excel_list');

	Route::resource('property', 'PropertiesController');

	Route::get('media/param/{params}', 'MediaController@getByParam');
	Route::resource('media', 'MediaController');

	Route::get('valuation/prop/{property_id}', 'ValuationsController@getByProperty');
	Route::resource('valuation', 'ValuationsController');
	
	Route::get('sale/prop/{property_id}', 'SalesController@getByProperty');
	Route::resource('sale', 'SalesController');
	Route::get('users/logout/{token}', 'UsersController@invalidateToken' );
	Route::resource('users', 'UsersController');

	Route::post('audit_trail/empty', 'AuditTrailsController@emptylogs');
	Route::resource('audit_trail', 'AuditTrailsController');

	Route::get('rental/prop/{property_id}', 'RentalsController@getByProperty');
	Route::resource('rental', 'RentalsController');

	Route::resource('rental_analyzed_by_area', 'RentalsAnalyzedByAreaController');
});

