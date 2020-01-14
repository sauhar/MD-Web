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
Route::get('/about', 'AboutController@post')->name('about');
Route::get('/contact', 'PagesController@contact')->name('contact');
Route::get('/post', 'PostsController@post')->name('post');
Route::get('/pages/about-company', 'PostsController@abtcmpy')->name('about-company');

Route::prefix('services')->group(function(){
Route::get('/area-of-expert', 'PostsController@areaofexp')->name('area-of-expert');
Route::get('/core-services', 'PostsController@coreser')->name('core-services');
Route::get('/other-services', 'PostsController@otserv')->name('other-services');

});

Route::prefix('about')->group(function(){
Route::get('/message-from-chairman','AboutController@msgfrmchm')->name('msg-frm-chairman');
Route::get('/message-from-managing-director','AboutController@msgfrmmd')->name('msg-frm-md');
Route::get('/message-from-business-development-director','AboutController@msgfrmbdd')->name('msg-frm-bdd');
});
// Route::get('/', 'HomeController@index')->name('home');

Auth::routes();
Route::get('/procedures/required-documents','PostsController@reqdmnt')->name('req-dmnt');
Route::get('/procedures/recruitment','PostsController@reqtm')->name('req-ment');
Route::get('/client/qatar','PostsController@qtr')->name('qatar');
Route::get('/client/UAE','PostsController@UAE')->name('uae');
Route::get('/client/saudi-arabia','PostsController@saudi')->name('saudi');
Route::get('/client/malaysia','PostsController@malya')->name('malaysia');

Route::get('contact', 'ContactController@contact');
Route::post('contact', ['as'=>'contact.store','uses'=>'ContactController@contactPost']);

// Route::get('/home', 'HomeController@index')->name('home');
