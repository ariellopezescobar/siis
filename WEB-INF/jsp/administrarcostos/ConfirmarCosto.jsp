<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Costo</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Costo</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Costo</div>
</c:if>

<div><a class="volver" href='ListarCostos.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCosto.do"/>' >
 <center>
  <table class="formulario">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <tr>
    <td class="etiqueta"> Rubros </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.rubro}"/></td>
    </tr>
    <tr>
      <td class="etiqueta"> Nombre Costo </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.costo}"/></td>
    </tr>   
    <tr>
      <td class="etiqueta"> Costo </td>
      <td class="etiqueta">::
      <td><c:out value="${dato.costo_unit}"/></td>
    </tr>        
     <c:if test="${id_rubro=='6'}">
     <tr>    
        <td class="etiqueta"> Seguro <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><c:out value="${dato.id_estado}"/></td>     
     </tr>    
     <tr>    
        <td class="etiqueta"> Valores Normales <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><c:out value="${dato.normales}"/></td>     
     </tr>
     <tr>    
        <td class="etiqueta"> Valores Defecto <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><c:out value="${dato.defecto}"/></td>     
     </tr>
    <tr>    
        <td class="etiqueta"> Valores Muestra <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><c:out value="${dato.muestra}"/></td>     
     </tr>
     <tr>    
        <td class="etiqueta"> Tipo <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><c:out value="${dato.tipo}"/></td>     
     </tr>
    </c:if>  
  </table>
  </center>
  <center>
    <input type="submit" class="aceptar" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_rubro'       value='<c:out value="${dato.id_rubro}"/>'>
  <input type="hidden" name='id_estado'      value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='rubro'          value='<c:out value="${dato.rubro}"/>'>
  <input type="hidden" name='id_costo'       value='<c:out value="${dato.id_costo}"/>'>
  <input type="hidden" name='costo'          value='<c:out value="${dato.costo}"/>'>
  <input type="hidden" name='costo_unit'     value='<c:out value="${dato.costo_unit}"/>'>
  <input type="hidden" name='normales'       value='<c:out value="${dato.normales}"/>'>
  <input type="hidden" name='defecto'        value='<c:out value="${dato.defecto}"/>'>
  <input type="hidden" name='muestra'        value='<c:out value="${dato.muestra}"/>'>
  <input type="hidden" name='id_laboratorio' value='<c:out value="${dato.id_laboratorio}"/>'>
  <input type="hidden" name='id_prestacion'  value='<c:out value="${dato.id_prestacion}"/>'>
  <input type="hidden" name='id_nivel'       value='<c:out value="${dato.id_nivel}"/>'>
  <input type="hidden" name='emergencias'    value='<c:out value="${dato.emergencias}"/>'>
  <input type="hidden" name='accion'         value='<c:out value="${accion}"/>'>
</form>



