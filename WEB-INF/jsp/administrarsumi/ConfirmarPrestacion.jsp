<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Pais</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Pais</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Prestacion</div>
</c:if>

<div><a class="volver" href='ListarPrestacionSumi.do'>Volver</a></div>
<br>
<center>
<form name="adicionarusu" method="POST" action='<c:url value="/GrabarPrestacion.do"/>' >
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td class="etiqueta"> C&oacute;digo Prestacion </td>
        <td class="etiqueta" >::
        <td><c:out value="${dato.id_prestacion}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td class="etiqueta"> Prestacion </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.descripcion}"/></td>
    </tr>        
    <tr>
      <td class="etiqueta"> Costo </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.costo}"/></td>
    </tr>        
    <tr>
      <td class="etiqueta"> Paquete </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.paquete}"/></td>
    </tr> 
  </table>
  <center>
    <input type="submit" class="aceptar" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_prestacion' value='<c:out value="${dato.id_prestacion}"/>'>
  <input type="hidden" name='descripcion' value='<c:out value="${dato.descripcion}"/>'>
  <input type="hidden" name='costo' value='<c:out value="${dato.costo}"/>'>
  <input type="hidden" name='paquete' value='<c:out value="${dato.paquete}"/>'>  
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>
</center>


