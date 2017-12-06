<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando cliente</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando cliente</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando cliente</div>
</c:if>

<div><a class="volver" href='ListarCientes.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCliente.do"/>' >
<center>   
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS CLIENTE</th>
    </tr>
    <tr>
      <td class="etiqueta"> Razon Social </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.razonsocial}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Encargado </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.encargado}"/></td>
    </tr> 
   <tr>
      <td class="etiqueta"> Direccion </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.direccion}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Telefonos </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.fonos}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> NIT </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.nit}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Email </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.email}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Ciudad </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.ciudad}"/></td>
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
  <input type="hidden" name='id_cliente'     value='<c:out value="${dato.id_cliente}"/>'>
  <input type="hidden" name='razonsocial'    value='<c:out value="${dato.razonsocial}"/>'>
  <input type="hidden" name='encargado'      value='<c:out value="${dato.encargado}"/>'>
  <input type="hidden" name='direccion'      value='<c:out value="${dato.direccion}"/>'>
  <input type="hidden" name='fonos'          value='<c:out value="${dato.fonos}"/>'>
  <input type="hidden" name='nit'            value='<c:out value="${dato.nit}"/>'>
  <input type="hidden" name='email'          value='<c:out value="${dato.email}"/>'>
  <input type="hidden" name='ciudad'         value='<c:out value="${dato.ciudad}"/>'>
  <input type="hidden" name='id_estado'      value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion'         value='<c:out value="${accion}"/>'>
</form>



