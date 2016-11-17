<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::group(['prefix' => '/'], function () {

    Route::get('', 'frontend\web\Index@index');
    Route::get('top/{id}', 'frontend\web\Top@detail');
    Route::get('test', function () {
        return view('frontend.web.test');
    });

});

