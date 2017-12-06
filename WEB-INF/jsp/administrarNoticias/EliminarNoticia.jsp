<%@ include file="../Superior.jsp"%>

<div style="font-size:15pt"> Eliminando Noticia</div>

<div><a class="volver" href="verNoticias.do">Volver</a></div>
<br>

<form name="forma" method="POST" action='<c:url value="/eliminarNoticia.do"/>'>
  <table class="formulario">
    <tr>
      <th colspan="3">&iquest;CONFIRMA ELIMINAR LA SIGUIENTE NOTICIA?</th>
    </tr>
    <tr>    
      <td class="etiqueta"> T&iacute;tulo</td>
      <td><c:out value="${datosTablero.noticia}"/></td>
    </tr>   
    <tr>
      <td class="etiqueta"> Detalle </td>
      <td><c:out value="${datosTablero.mensaje}" escapeXml="False"/></td>
    </tr>
  </table>
  <center>
    <input type="submit" name="boton" value='Aceptar' class="aceptar" > &nbsp;
    <input type="button" value='Cancelar' class="cancelar" OnClick='javascript: history.go(-1);'>
  </center>
  <input type=hidden name="id_tablero" value="<c:out value="${datosTablero.id_tablero}"/>" >
</form>

<%@ include file="../Inferior.jsp" %>