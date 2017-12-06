<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<div><a class="btn btn-warning" href='ListarMedicamentos.do'>Volver</a></div>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarMedicamento.do"/>' >
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="2" bgcolor="#F2F2F2">
     <center>
        <c:if test="${accion == 'Modificar'}">
          <div style="font-size:15pt"> Modificando Medicamento</div>
        </c:if>
        <c:if test="${accion == 'Adicionar'}">
          <div style="font-size:15pt"> Agregando Medicamento</div>
        </c:if>
        <c:if test="${accion == 'Eliminar'}">
          <div style="font-size:15pt"> Eliminando Medicamento</div>
        </c:if>
      </center></th>
    </tr> 
    <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo Medicamento - Sumi </td>
        <td><c:out value="${dato.id_medicamento}"/> - <c:out value="${dato.codsumi}"/></td>
      </tr>
   <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Medicamento </td>
      <td><c:out value="${dato.medicamento}"/></td>
    </tr>        
    <!--<tr>
      <td align="right" bgcolor="#F2F2F2"> Ubicacion </td>
      <td><c:out value="${dato.ubicacion}"/></td>
    </tr>-->  
        <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2"> Forma Farmaceutica - Concentracion</td>
        <td><c:out value="${dato.forma_far}"/> - <c:out value="${dato.concentra}"/></td>
     </tr>       
    <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2"> Costo Unitario</td>
        <td><c:out value="${dato.costo_unit}"/></td>
     </tr>        
    <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Precio de Venta </td>
      <td><c:out value="${dato.precio_venta}"/></td>
    </tr>        
    <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Stock </td>
      <td><c:out value="${dato.stock}"/></td>
    </tr>        
     <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Stock Venta </td>
      <td><c:out value="${dato.stockv}"/></td>
    </tr>     
    <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Stock Sumi</td>
      <td><c:out value="${dato.stocks}"/></td>
    </tr>    
   <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Stock Programa </td>
      <td><c:out value="${dato.stockp}"/></td>
    </tr>     
    <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Fecha de Vencimiento</td>    
        <td><c:out value="${fecha_ven}"/></td>	                 
      </tr>    
    <tr style="font-size:10pt">
      <td align="right" bgcolor="#F2F2F2"> Numero de lote </td>
      <td><c:out value="${dato.nro_lote}"/></td>
    </tr>   
   <c:if test="${accion == 'Modificar'}">
        <tr style="font-size:10pt">
          <td align="right" bgcolor="#F2F2F2">Activo </td>
          <td><c:out value="${dato.codigo}"/></td>
        </tr>
      </c:if>
  </table>
  <center>
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_medicamento'  value='<c:out value="${dato.id_medicamento}"/>'>
   <input type="hidden" name='codsumi'        value='<c:out value="${dato.codsumi}"/>'>
  <input type="hidden" name='medicamento'     value='<c:out value="${dato.medicamento}"/>'>
  <input type="hidden" name='forma_far'       value='<c:out value="${dato.forma_far}"/>'>  
  <input type="hidden" name='concentra'       value='<c:out value="${dato.concentra}"/>'>
  <input type="hidden" name='ubicacion'       value='<c:out value="${dato.ubicacion}"/>'>
  <input type="hidden" name='precio_venta'    value='<c:out value="${dato.precio_venta}"/>'>
  <input type="hidden" name='costo_unit'      value='<c:out value="${dato.costo_unit}"/>'>
  <input type="hidden" name='stockv'          value='<c:out value="${dato.stockv}"/>'>
  <input type="hidden" name='stocks'          value='<c:out value="${dato.stocks}"/>'>
  <input type="hidden" name='stockp'          value='<c:out value="${dato.stockp}"/>'>
  <input type="hidden" name='stock'           value='<c:out value="${dato.stock}"/>'>
  <input type="hidden" name='codigo'          value='<c:out value="${dato.codigo}"/>'>
  <input type="hidden" name='max_emerg'       value='<c:out value="${dato.max_emerg}"/>'>
  <input type="hidden" name='max_exter'       value='<c:out value="${dato.max_exter}"/>'>
  <input type="hidden" name='max_inter'       value='<c:out value="${dato.max_inter}"/>'>
  <input type="hidden" name='min_emerg'       value='<c:out value="${dato.min_emerg}"/>'>
  <input type="hidden" name='min_exter'       value='<c:out value="${dato.min_exter}"/>'>
  <input type="hidden" name='min_inter'       value='<c:out value="${dato.min_inter}"/>'>
  <input type="hidden" name='restringido'     value='<c:out value="${dato.restringido}"/>'>
  <input type="hidden" name='tipo'            value='<c:out value="${dato.tipo}"/>'>
  <input type="hidden" name='b1'              value='<c:out value="${dato.b1}"/>'>
  <input type="hidden" name='dia' 	      value='<c:out value="${dia}"/>'>
  <input type="hidden" name='mes' 	      value='<c:out value="${mes}"/>'>
  <input type="hidden" name='anio' 	      value='<c:out value="${anio}"/>'>
  <input type="hidden" name='nro_lote'        value='<c:out value="${dato.nro_lote}"/>'>  
  <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</form>



