<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Transaccion</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Transaccion</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Transaccion</div>
</c:if>

<div><a class="volver" href='ListarTransacciones.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarTransaccion.do"/>' >
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>

    <tr>
      <td class="etiqueta"> Transaccion </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.transaccion}"/></td>
    </tr>   
    <tr>
        <td class="etiqueta">Fecha de Registro</td>    
        <td class="etiqueta">::</td>
        <td><c:out value="${fec_registro}"/></td>	                 
    </tr>
    <c:if test="${sw == 1}">       
      <c:if test="${dato.id_estado == null}">       
        <tr>
          <td class="etiqueta"> Estado </td>
          <td class="etiqueta">::
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${dato.id_estado == 'A'}">       
        <tr>
          <td class="etiqueta"> Estado </td>
          <td class="etiqueta">::
          <td><c:out value="${dato.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td class="etiqueta"> Estado </td>
        <td class="etiqueta">::
        <td><c:out value="${dato.id_estado}"/></td>
      </tr>        
    </c:if>        
  </table>
  <center>
    <input type="submit" class="aceptar" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_transaccion' value='<c:out value="${dato.id_transaccion}"/>'>
  <input type="hidden" name='transaccion' value='<c:out value="${dato.transaccion}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='dia_r' 	    value='<c:out value="${dia_r}"/>'>
  <input type="hidden" name='mes_r' 	    value='<c:out value="${mes_r}"/>'>
  <input type="hidden" name='anio_r' 	    value='<c:out value="${anio_r}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



