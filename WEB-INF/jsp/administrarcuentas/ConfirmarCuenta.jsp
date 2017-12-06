<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Cuenta</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Cuenta</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Cuenta</div>
</c:if>

<div><a class="volver" href='ListarCuentas.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCuenta.do"/>' >
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <tr>
        <td class="etiqueta"> Tipo Cuenta </td>
        <td class="etiqueta" >::
        <td><c:out value="${dato.tipo_cuenta}"/></td>
    </tr>  
    <tr>
      <td class="etiqueta"> Cuenta </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.cuenta}"/></td>
    </tr>        
    <tr>
      <td class="etiqueta"> Codigo </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.codigo}"/></td>
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
  <input type="hidden" name='id_cuenta' value='<c:out value="${dato.id_cuenta}"/>'>
  <input type="hidden" name='cuenta' value='<c:out value="${dato.cuenta}"/>'>
  <input type="hidden" name='tipo_cuenta' value='<c:out value="${dato.tipo_cuenta}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='codigo' value='<c:out value="${dato.codigo}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



