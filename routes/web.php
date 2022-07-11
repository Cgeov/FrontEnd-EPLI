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

Route::get('/', function () {
    return view('index');
});
Route::get('index', function () {
    return view('index');
});

Route::get('social', function () {
    return view('about');
});
Route::get('publicaciones', function () {
    return view('service');
});
Route::get('galeria', function () {
    return view('project');
});
Route::get('feature', function () {
    return view('feature');
});
Route::get('quote', function () {
    return view('quote');
});
Route::get('team', function () {
    return view('team');
});
Route::get('testimonial', function () {
    return view('testimonial');
});
Route::get('articulos', function () {
    return view('404');
});
Route::get('email', function () {
    return view('email');
});

//Todas las Publicaciones
Route::get('publicaciones', 'App\Http\Controllers\ServiceController@list');

//Todas los Articulos
Route::get('articulos', 'App\Http\Controllers\ServiceController@listArticulos');

//Publicaciones individuales
Route::get('/showservicedetail/{id}', 'App\Http\Controllers\ServiceController@showbyid') -> name('service.showbyid');

//Galería 
Route::get('galeria', 'App\Http\Controllers\GalleryController@index');

//pal email
Route::get('/email', [App\Http\Controllers\EmailController::class, 'create']);
Route::post('/email', [App\Http\Controllers\EmailController::class, 'sendEmail'])->name('send.email');