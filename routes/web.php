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
// Route::get('/about', 'AboutController@post')->name('about');
// Route::get('/contact', 'PagesController@contact')->name('contact');
// Route::get('/services', 'PagesController@services')->name('services');
Route::get('/post', 'PostsController@post')->name('post');


// Route::prefix('services')->group(function(){
// Route::get('/overseas-recruitment', 'PostsController@ovrrec')->name('overseas-recru');
// Route::get('/training-and-orientation', 'PostsController@tno')->name('tarin-ori');
// Route::get('/travel-management', 'PostsController@tramgnt')->name('trav-mgmt');

// });

// Route::prefix('about')->group(function(){
// Route::get('/about-company', 'AboutController@abtcmpy')->name('about-company');
// Route::get('/message-from-chairman','AboutController@msgfrmchm')->name('msg-frm-chairman');
// Route::get('/message-from-managing-director','AboutController@msgfrmmd')->name('msg-frm-md');
// Route::get('/message-from-business-development-director','AboutController@msgfrmbdd')->name('msg-frm-bdd');
// Route::get('/message-from-executive-directors','AboutController@msgfrmexd') ->name('msg-frm-exd');
 Route::get('/about/license-certificate','AboutController@lnc')->name('license-certif');
 Route::get('/about/Vekha-Bahadur-Ghimire','AboutController@msgfrmvbg') ->name('msg-frm-VBG');
 Route::get('/aboutPrakash-Sapkota','AboutController@msgprasap') ->name('msg-frm-prasap');
// });
// Route::get('/', 'HomeController@index')->name('home');

// Auth::routes();
// Route::get('/procedures/required-documents','PostsController@reqdmnt')->name('req-dmnt');
// Route::get('/procedures/recruitment','PostsController@reqtm')->name('req-ment');
// Route::get('/client/qatar','PostsController@qtr')->name('qatar');
// Route::get('/client/UAE','PostsController@UAE')->name('uae');
// Route::get('/client/saudi-arabia','PostsController@saudi')->name('saudi');
// Route::get('/client/malaysia','PostsController@malya')->name('malaysia');


// Route::get('/page/{slug}','DemoController@check');
Route::get('/pages/{url}','DemoController@check1');



Route::get('contact', 'ContactController@contact');
Route::post('contact', ['as'=>'contact.store','uses'=>'ContactController@contactPost']);

// Route::get('/home', 'HomeController@index')->name('home');
