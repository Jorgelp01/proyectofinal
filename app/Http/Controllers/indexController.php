<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\categoriasModelo;
use App\productosModelo;
use App\usuariosModelo;
use App\salidasModelo;

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
        
        \DB::table('productos')->where('ID',$id)->update(['CantExistente'=>$resul]);
        
        $productoid= \DB::table('productos')->select('ID')->where('ID', $id)->first();
        $cantinput = $request->input('cantidads');
        $nombreus=$request->input('usuarios');
        $nombreus2=\DB::table('usuarios')->select('Nombre')->where('ID', $nombreus)->first();
        $nombrpr=\DB::table('productos')->select('Nombre')->where('ID', $id)->first();
        $salida = new salidasModelo();
        $salida->Producto_ID = $productoid->ID;
        $salida->Nombre_Producto = $nombrpr->Nombre;
        $salida->Cantidad = intval($cantinput);
        $salida->Usuario_ID = intval( $nombreus);
        $salida->Nombre_salida=$nombreus2->Nombre;
        $salida->save();

      /*  $salida=salidasModelo::getInfoSalida($id);
        dd($salida);
        $vista = view('generapdf', compact($salida));
        $dompdf = \App::make('dompdf.wrapper');
        $dompdf->loadHTML($vista);
        return $dompdf->stream();*/


        return Redirect()->back();

    //    return view('generapdf');

   


    }

    public function generaPdf($id)
    {
        $salida=salidasModelo::getInfoSalida($id);
        
         $vista = view('generapdf', compact('salida'));
        $dompdf = \App::make('dompdf.wrapper');
        $dompdf->loadHTML($vista);
        return $dompdf->stream();




    }

}
