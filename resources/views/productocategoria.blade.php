@extends('index')

@section('index')
<h3 align = "center">Componentes disponibles</h3>
<hr/>

@foreach($productos as $producto)
<form action ="http://localhost:8000/guardar/{{$producto->ID}}" method = "POST">
        <div class="box2 caja2">
        <table class="altrowstable" id="alternatecolor" align = "center">
            <tr>
                <td><strong>Producto: </strong></td>
                <td align="left"><input name = "productop" type = "text" value = "{{$producto->ID}}" placeholder = "{{$producto->ID}}" class = "dato" disabled></td>
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
                <td><input name = "cantidadp" type = "text" value = "{{$producto->CantExistente}}" placeholder = "{{$producto->CantExistente}}" class = "dato"disabled></td>
          </tr>
            <tr>
                <td>Cantidad de salida:   </td>
                <td><input name = "cantidads" type = "number" placeholder = "Cantidad de salida" class = "dato" required pattern = "[0-9]{1,2}" max = "{{$producto->CantExistente}}" min = "0"></td>
          </tr>
                <td>Usuario:</td>
                 <td>
                    <select name='usuarios' id ="algo" align="center">
                    @foreach($usuarios as $usuario)
                    <option value='{{$usuario->ID}}'>{{$usuario->Nombre}}</option>
                    @endforeach
                    </select>
                </td>
                <tr>
        <td>
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <input type = "submit" value = "Dar salida">
            
        </td>
    </tr>
    <tr>
          
           </tr>
     <tr>

        </table>

    </div>

    <hr/>
</form>
@endforeach
<table align = "center" >
    <tr>
        <td> <h3 align = "center">Reporte de Salidas</h3> </td>
        <td ><a align = "right" href="http://localhost:8000/generapdf/{{$producto->ID}}"><img  src="http://localhost:8000/images/pdficon.gif"></img></a></td>
    </tr>
</table>

@stop