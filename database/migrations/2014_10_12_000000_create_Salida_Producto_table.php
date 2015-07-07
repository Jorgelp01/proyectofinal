<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalida_ProductoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Salida_Producto', function (Blueprint $table) {
            $table->increments('ID');
            $table->integer('Producto_ID')->unsigned();
            $table->foreign('Producto_ID')->references('ID')->on('Productos');
            $table->integer('Cantidad');
            $table->integer('Usuario_ID')->unsigned();
            $table->foreign('Usuario_ID')->references('ID')->on('Usuarios');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('Salida_Producto');
    }
}
