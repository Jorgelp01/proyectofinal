<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\categoriasModelo;
use App\productosModelo;

class indexController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $categorias=categoriasModelo::allcategorias();
        return view ('index', compact ('categorias'));
    }

    public function categoriaProducto($id)
    {
        $productos=productosModelo::getProductos($id);
        $categorias=categoriasModelo::allcategorias();
        return view('productos', compact ('categorias', 'productos'));
    }

    public function registraProducto(Request $request)
    {
        $producto = new Producto();
        $producto->nombre = $request->input("Nombre");
        $producto->categoria = $request->input("Categoria_ID");
        $producto->cantexistente = $request->input("Cant.Existente");
        $producto->save();
    }

}