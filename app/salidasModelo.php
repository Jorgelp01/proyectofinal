<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class salidasModelo extends Model
{
    protected $table='salida_producto';


    public static function allproductos()
    {
        return self::all();
    }
    public static function getInfoSalida($id_salida)
    {
        return self::select('ID','Producto_ID', 'Nombre_Producto', 'Cantidad','Usuario_ID','Nombre_salida' ,'created_at')
        ->get();

    }

}