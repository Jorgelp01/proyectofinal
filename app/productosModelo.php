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
    	return self::join('categorias', 'categoria.ID', '=', 'productos.Categoria_ID')
    	->select('productos.ID', 'productos.Nombre', 'productos.CantExistente', 'categoria.Nombre')
    	->where('productos.Categoria_ID', '=', $id_categoria)
    	->get();
    }
}
