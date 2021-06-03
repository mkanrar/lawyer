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
Route::group(['prefix'=>'/v1', 'namespace' => 'api\v1'], function(){
    Route::get('/lawyer-primary-practice-list', 'Common@getLawyerPrimaryPracticeList');
    Route::get('/court-list', 'Common@getCourtList');
    Route::get('/featured-lawyer', 'Common@getFeaturedLawyer');
    Route::post('/all-lawyers', 'Common@LawyersList');
    Route::post('/edit-profile', 'Common@editProfile');
    Route::post('/update-profile', 'Common@updateProfile');
    Route::get('/dashboard-content', 'Common@getDashboradContent');
    Route::group(['prefix'=>'/auth'], function(){
        Route::post('/login', 'AuthController@login');
        Route::post('/registration', 'AuthController@Registration');
        Route::post('/forgot-password', 'AuthController@forgot_password');
    });
    Route::post('/lawyer-details', 'Common@lawyer_details');
});
