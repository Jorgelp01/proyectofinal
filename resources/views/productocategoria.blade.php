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
                <td>Nombre del producto: </td>
                <td>{{$producto->Nombre}}</td>
            </tr>
            <tr>
                <td>Categoria: </td>
                <td>{{$producto->cn}}</td>
            </tr>
            <tr>
                <td>Cantidad existente: </td>
                <td>{{$producto->CantExistente}}</td>
          </tr>
         <tr>
                <td>Usuario: </td>
                <td>
                    <select name='usuarios'>
                    @foreach($usuarios as $usuario)
                    <option value='{{$usuario->ID}}'>{{$usuario->Nombre}}</option>
                    @endforeach
                    </select>
                </td>


           </tr>
     <tr>
        </table>
    </div>
    <hr/>
@endforeach
@stop