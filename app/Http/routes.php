<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'indexController@index');
Route::get('/categoria/{id}', 'indexController@categoriaProducto');
Route::get('registrar','indexController@categoriaBox');
Route::Post('/guardar','indexController@registraProducto');

Route::get('/salida', function()
{
    return view('salida');
});