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
Route::post('/download_xls', 'HomeController@generateXls');
Route::get('/get-caregivers', 'HomeController@getCareGivers');
Route::get('/get-clients', 'HomeController@getClients');
Route::get('/get-icp', 'HomeController@getIcp');
Route::post('/update-client', 'HomeController@updateClient');
Route::post('/add_icp_notes', 'HomeController@addIcp');
Route::post('/login', 'HomeController@login');
Route::post('/supervisor_login', 'HomeController@supervisorLogin');
Route::post('/client_detail', 'HomeController@clientDetail');
Route::post('/supervisor_tree', 'HomeController@supervisorTree');
Route::get('/languages', 'HomeController@languages');
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
Route::post('/users/login', 'HomeController@commonLogin');
Route::post('/centers', 'HomeController@getCenters');
Route::get('/get-center-caregiver', 'HomeController@getCenterCaregiver');
Route::post('/clients', 'HomeController@clients');
Route::get('/ops', 'HomeController@ops');
Route::get('/opbyid', 'HomeController@opbyid');
Route::post('/op', 'HomeController@opCreate');
Route::put('/op', 'HomeController@opUpdate');
Route::delete('/op', 'HomeController@opDelete');
Route::get('/get-casemanagers', 'HomeController@casemanagers');
Route::post('/update-casemanager', 'HomeController@updateCasemanager');
Route::post('/add-casemanager', 'HomeController@addCasemanager');
Route::post('/add-client', 'HomeController@addClient');
Route::post('/add-caregivers', 'HomeController@addCaregivers');
Route::post('/update-caregivers', 'HomeController@updateCaregivers');
Route::post('/delete-casemanager', 'HomeController@deleteCasemanager');
Route::post('/delete-client', 'HomeController@deleteClient');
Route::post('/delete-caregivers', 'HomeController@deleteCaregivers');

Route::get('/client-list', 'HomeController@clientList');