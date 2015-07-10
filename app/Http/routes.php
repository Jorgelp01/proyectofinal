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
Route::get('registrar','indexController@categoriaBox');
Route::get('/productocategoria/{id}', 'indexController@categoriaProducto');
Route::Post('/guardar','indexController@registraProducto');
Route::get('/usuarios/{id}', 'indexController@usuariosNombre');

Route::get('/salida', function()
{
    return view('salida');
});