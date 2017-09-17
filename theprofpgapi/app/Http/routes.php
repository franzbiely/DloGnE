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
    Route::resource('authenticate', 'AuthenticateController', ['only' => ['index']]);
    Route::post('authenticate', 'AuthenticateController@authenticate');
    Route::get('authenticate/user', 'AuthenticateController@getAuthenticatedUser');
});

// JWT

Route::group(['middleware' => 'cors', 'prefix' => 'api/v1'], function(){
	Route::resource('property_use', 'PropertyUsesController');
	Route::resource('property_class', 'PropertyClassesController');
	Route::resource('property_lease_type', 'PropertyLeaseTypesController');
	Route::resource('property_city', 'PropertyCitiesController');
	Route::resource('property_suburb', 'PropertySuburbsController');
	Route::resource('property', 'PropertiesController');
	Route::resource('valuation', 'ValuationsController');
	Route::resource('sale', 'SalesController');
	Route::resource('users', 'UsersController');
});

