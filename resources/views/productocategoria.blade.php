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
                <td>Nombre del producto:   </td>
                <td><input name = "nombrep" type = "text" value = "{{$producto->Nombre}}" placeholder = "{{$producto->Nombre}}" class = "dato" disabled></td>
            </tr>
            <tr>
                <td>Categoria:   </td>
                <td><input name = "categoriap" type = "text" value = "{{$producto->cn}}" placeholder = "{{$producto->cn}}" class = "dato" disabled></td>
            </tr>
            <tr>
                <td>Cantidad existente:   </td>
                <td><input name = "cantidadp" type = "text" value = "{{$producto->CantExistente}}" placeholder = "{{$producto->CantExistente}}" class = "dato" disabled></td>
          </tr>
            <tr>
                <td>Cantidad de salida:   </td>
                <td><input name = "cantidads" type = "text"  placeholder = "Cantidad de salida" class = "dato"></td>
          </tr>
         <tr>
               


           </tr>
     <tr>

        </table>
    </div>
    <hr/>
@endforeach
<table>
 <td>Usuario: </td>
                <td>
                    <select name='usuarios' id ="algo" align="center">
                    @foreach($usuarios as $usuario)
                    <option value='{{$usuario->ID}}'>{{$usuario->Nombre}}</option>
                    @endforeach
                    </select>
                </td>
</table> 
  <input type = "submit" value = "Enviar" disabled>               
@stop