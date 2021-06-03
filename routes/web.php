<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Route::get('/', 'HomeController@index')->name('home')->middleware('auth');
Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');

Route::group(['prefix'=>'customer','middleware'=>'auth','as'=>'customer.'], function(){
    Route::get('/list', ['as' => 'list', 'uses' => 'CustomerController@index']);
    Route::get('/lawyer-list', ['as' => 'lawyer-list', 'uses' => 'CustomerController@lawyer_list']);
    Route::get('/add', ['as' => 'add', 'uses' => 'CustomerController@createForm']);
    Route::post('/do-add', ['as' => 'doadd', 'uses' => 'CustomerController@store']);
    Route::get('/editlawyer/{id}', ['as' => 'editlawyer', 'uses' => 'CustomerController@editlawyer']);
    Route::get('/edit/{id}', ['as' => 'edit', 'uses' => 'CustomerController@edit']);
    Route::get('/delete/{id}', ['as' => 'delete', 'uses' => 'CustomerController@delete']);
    Route::post('/update', ['as' => 'update', 'uses' => 'CustomerController@update']);
});

Route::group(['prefix'=>'content','middleware'=>'auth','as'=>'content.'], function(){
    Route::get('/list', ['as' => 'list', 'uses' => 'ContentController@index']);
    Route::get('/add', ['as' => 'add', 'uses' => 'ContentController@add']);
    Route::post('/doadd', ['as' => 'doadd', 'uses' => 'ContentController@doadd']);
    Route::get('/delete/{id}', ['as' => 'delete', 'uses' => 'ContentController@delete']);
    Route::get('/edit/{id}', ['as' => 'edit', 'uses' => 'ContentController@edit']);
    Route::post('/doedit', ['as' => 'doedit', 'uses' => 'ContentController@doedit']);
});

Route::group(['prefix'=>'primary_practice','middleware'=>'auth','as'=>'primary_practice.'], function(){
    Route::get('/list', ['as' => 'list', 'uses' => 'PrimaryPracticeController@index']);
    Route::get('/add', ['as' => 'add', 'uses' => 'PrimaryPracticeController@add']);
    Route::post('/doadd', ['as' => 'doadd', 'uses' => 'PrimaryPracticeController@doadd']);
    Route::get('/delete/{id}', ['as' => 'delete', 'uses' => 'PrimaryPracticeController@delete']);
    Route::get('/edit/{id}', ['as' => 'edit', 'uses' => 'PrimaryPracticeController@edit']);
    Route::post('/doedit', ['as' => 'doedit', 'uses' => 'PrimaryPracticeController@doedit']);
});
