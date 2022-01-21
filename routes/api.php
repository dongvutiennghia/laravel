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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();

// });

Route::group([
    'namespace' => 'Api'
], function () {

    Route::get('/blog/detail/{id}','BlogController@show');
    Route::post('/blog/login','MemberController@post_login');

    Route::middleware('auth:api')->get('/user', function (Request $request) {
        return $request->user();
    });
});
