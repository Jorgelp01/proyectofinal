<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class productosModelo extends Model
{
    protected $table='productos';

    public static function allproductos()
    {
        return self::all();
    }

    public static function getProductos($id_categoria)
    {
    	return self::join('categoria', 'categoria.ID', '=', 'productos.CategoriaID')
    	->select('productos.ID', 'productos.Nombre', 'productos.CantExistente', 'categoria.Nombre')
    	->where('productos.CategoriaID', '=', $id_categoria)
    	->get();
    }
}
