@extends('index')

@section('index')
<h3 align = "center">Componentes disponibles</h3>
<hr/>

@foreach($productos as $producto)
	    <div class="box2">
        <table class="altrowstable" id="alternatecolor" align = "center">
            <tr>
                <td align="left"><strong>Producto: {{$producto->ID}}</strong></td>
            </tr>
            <tr>
                <td>Nombre del producto:</td>
                <td>{{$producto->Nombre}}</td>
            </tr>
            <tr>
                <td>Categoria:</td>
                <td>{{$producto->CategoriaID}}</td>
            </tr>
            <tr>
                <td>Cantidad existente:</td>
                <td>{{$producto->CantExistente}}</td>
            </tr>
        </table>
    </div>
    <hr/>
@endforeach
@stop