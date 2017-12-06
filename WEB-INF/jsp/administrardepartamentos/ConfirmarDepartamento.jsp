<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Departamento</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Departamento</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Departamento</div>
</c:if>

<div><a class="volver" href='ListarDepartamentos.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarDepartamento.do"/>' >
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td class="etiqueta"> C&oacute;digo departamento </td>
        <td class="etiqueta" >::
        <td><c:out value="${dato.id_departamento}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td class="etiqueta"> Departamento </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.departamento}"/></td>
    </tr>        
    <tr>
      <td class="etiqueta"> Pais </td>
      <td class="etiqueta">::
      <td><c:out value="${buscarPais.pais}"/></td>
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
  <input type="hidden" name='id_departamento' value='<c:out value="${dato.id_departamento}"/>'>
  <input type="hidden" name='departamento' value='<c:out value="${dato.departamento}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='id_pais' value='<c:out value="${dato.id_pais}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>


