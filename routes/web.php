<?php

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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});



Route::get('/', 'HomeController@wlcome')->name('welcome');
Auth::routes();

Route::get('/post', 'PostsController@post')->name('post');







// Route::get('/page/{slug}','DemoController@check');
Route::get('/pages/{url}','DemoController@check1');



// Route::get('contact', 'ContactController@contact');
Route::post('contact', ['as'=>'contact.store','uses'=>'ContactController@contactPost']);

// Route::get('/home', 'HomeController@index')->name('home');
