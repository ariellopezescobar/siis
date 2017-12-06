<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando documento</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando documento</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando documento</div>
</c:if>

<div><a class="volver" href='ListarDocumentos.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarDocumento.do"/>' >
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td class="etiqueta"> C&oacute;digo documento </td>
        <td class="etiqueta" >::
        <td><c:out value="${dato.id_documento}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td class="etiqueta"> documento </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.documento}"/></td>
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
  <input type="hidden" name='id_documento' value='<c:out value="${dato.id_documento}"/>'>
  <input type="hidden" name='documento' value='<c:out value="${dato.documento}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



