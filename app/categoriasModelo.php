<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class categoriasModelo extends Model
{
    protected $table='categoria';

    public static function allcategorias()
    {
    	return self::all();
    }
}
