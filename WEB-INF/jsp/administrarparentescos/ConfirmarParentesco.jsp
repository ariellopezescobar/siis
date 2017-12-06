<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando parentesco</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando parentesco</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando parentesco</div>
</c:if>

<div><a class="volver" href='ListarParentescos.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarParentesco.do"/>' >
 <center>   
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td class="etiqueta"> C&oacute;digo parentesco </td>
        <td class="etiqueta" >::
        <td><c:out value="${dato.id_parentesco}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td class="etiqueta"> parentesco </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.parentesco}"/></td>
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
  </center>   
  <center>
    <input type="submit" class="aceptar" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_parentesco' value='<c:out value="${dato.id_parentesco}"/>'>
  <input type="hidden" name='parentesco' value='<c:out value="${dato.parentesco}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



