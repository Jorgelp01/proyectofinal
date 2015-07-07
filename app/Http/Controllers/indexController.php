<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class indexController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $productos=productosModelo::allproductos();
        return view ('index', compact ('categoria'));
    }

    public function categoriaProducto($id)
    {
        $categorias=categoriasModelo::getCategorias($id);
        $productos=productosModelo::allproductos();
        return view('productos', compact ('categoria', 'productos');
    }

    public function registraProducto()
    {
        $producto = new Producto();
        $producto->nombre = Request::input("Nombre");
        $producto->categoria = Request::input("Categoria_ID")
        $producto->save();
    }

}
