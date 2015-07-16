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
}
