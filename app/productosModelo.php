<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class productosModelo extends Model
{
    protected $table='categoria';

    public static function allproductos()
    {
        return self::all();
    }
}
