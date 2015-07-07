<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Productos', function (Blueprint $table) {
            $table->increments('ID');
            $table->string('Nombre', 20);
            $table->integer('Categoria_ID')->unsigned();
            $table->foreign('Categoria_ID')->references('ID')->on('Categoria');
            $table->integer('Cant.Existente');
            
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
        Schema::drop('Productos');
    }
}
