<%@ include file="../Superior.jsp" %>

<body onload='inicio(document.forma.clave)'>

<div style="font-size:15pt">Cambio de clave(PIN)</div>
<br>

<form method="post" action='<c:url value="/verificarUsuario.do"/>'>
  <table class="formulario">
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS</th>
    </tr>
    <tr>
      <td class="etiqueta">Usuario</td>
      <td class="etiqueta">::</td>
      <td><c:out value="${nombres}" /></td>
    </tr>
    <tr>
      <td class="etiqueta" align="right">Clave</td>
      <td class="etiqueta">::</td>
      <td><input type="password" name="clave"></td>
    </tr>
    <tr>
      <td colspan="3" align="center"><input type="submit" name="boton" value="Buscar" class="buscar"></td>
    </tr>
  </table>
</form>

<%@ include file="../Inferior.jsp" %>