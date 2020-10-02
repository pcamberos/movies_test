<?php

use App\Http\Controllers\ScreeningsController;
use Illuminate\Http\Request;

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

Route::apiResource("screenings", "ScreeningsController");
Route::apiResource("categories", "CategoryController");

Route::get('topscreenings', "ScreeningsController@top_screenings");

Route::post('datemovie', "ScreeningsController@movie_by_date");

Route::get('comedyaction', "ScreeningsController@comedy_action");

Route::post('comedyactiondate', "ScreeningsController@comedy_action_date");

// Route::post('/re-loggin', 'PagesController@signup_password');
// Route::get('/', 'PagesController@signup');
// Route::get('/forget-password', 'PagesController@forget_password');