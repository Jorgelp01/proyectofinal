<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\categoriasModelo;
use App\productosModelo;
use App\usuariosModelo;

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

    public function usuariosNombre()
    {
        $usuarios=usuariosModelo::allusuarios();
        return view ('productocategoria', compact ('usuarios'));
    }

    public function categoriaProducto($id)
    {
        $productos=productosModelo::getProductos($id);
        $categorias=categoriasModelo::allcategorias();
        $usuarios=usuariosModelo::allusuarios();
        return view('productocategoria', compact ('categorias', 'productos', 'usuarios'));
    }

    public function registraProducto(Request $request)
    {
       
        $producto = new productosModelo();
        $producto->nombre = $request->input("nombre");
        $producto->categoriaID = $request->input("CategoriaID");
        $producto->cantexistente = $request->input("CantExistente");
        $producto->save();

        return view('guardar');
    }

    public function categoriaBox()
    {
     $categorias=categoriasModelo::allcategorias();
        return view ('registrar', compact ('categorias'));   
    }

    public function actualiza(Request $request,$id)
    {
        $cantdb = \DB::table('productos')->select('CantExistente')->where('ID', $id)->first();
        $cantinput = $request->input('cantidads');
        $resul=($cantdb->CantExistente - intval($cantinput));
       // dd($resul);
       // dd(intval($cantinput));
       // dd(intval($cantdb));
       // $cantinput = $request->input('cantidads');
       //$resultado = $cantdb - $cantinput;
        
        \DB::table('productos')->where('ID',$id)->update(['CantExistente'=>$resul]);
        return view('guardar');
    }

}
