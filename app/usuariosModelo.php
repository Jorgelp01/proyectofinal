<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class usuariosModelo extends Model
{
    protected $table='usuarios';

    public static function allusuarios()
    {
    	return self::all();
    }
}
