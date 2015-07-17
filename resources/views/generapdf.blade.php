<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>PDF. Grupo</title>
</head>
<body>
  <table align = "center">
    @foreach($salida as $salida_producto)
  <tr>
    <td style="text-align: center" colspan="4" bgcolor="#00CCFF" >Folio: {{$salida_producto->ID}}</td>
  </tr>
  <tr>
      <td style="text-align: center" colspan="4" >PRODUCTO ID: {{$salida_producto->Producto_ID}}</td>
  </tr>
   <tr>
      <td style="text-align: center" colspan="4" >NOMBRE DEL PRODUCTO: {{$salida_producto->Nombre_Producto}}</td>
  </tr>
  <tr>    
      <td style="text-align: center" colspan="4" >CANTIDAD: {{$salida_producto->Cantidad}}</td>
  </tr>
  <tr>
      <td style="text-align: center" colspan="4">USUARIO ID: {{$salida_producto->Usuario_ID}}</td>
</tr>
<tr>
      <td style="text-align: center" colspan="4">NOMBRE DEL USUARIO: {{$salida_producto->Nombre_salida}}</td>
 </tr>    
      @endforeach
    
  </table>
</body>
</html>

