<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


/*JSON*/
Route::get('/get-icp', 'HomeController@getIcp');

Route::post('/login', 'HomeController@login');
Route::post('/pin-login', 'HomeController@loginPin');
Route::post('/create-pin', 'HomeController@generatePin');
Route::post('/update-pin', 'HomeController@updatePin');
Route::post('/add-selfie', 'HomeController@uploadSelfie');
Route::post('/add-client-status', 'HomeController@clientStatus');
Route::post('/add-dining-status', 'HomeController@diningStatus');
Route::post('/add-kitchen-status', 'HomeController@kitchenStatus');
Route::post('/add-house-keeping-status', 'HomeController@houseKeepingStatus');
Route::post('/add-medical-screening-status', 'HomeController@medicalScreening');

Route::post('/get-medicines', 'HomeController@getMedicinesList');
Route::post('/get-diet-chart', 'HomeController@getDietChart');

Route::post('/get-all-clients', 'HomeController@allClients');
Route::post('/client-status', 'HomeController@individualClients');
