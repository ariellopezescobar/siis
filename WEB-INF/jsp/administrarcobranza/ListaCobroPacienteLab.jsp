<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
             
<div style="font-size:15pt"> Cobros del Paciente con Laboratorios e Imagenologia</div>
<form name=formaRegO method=post action='<c:url value="/CobrarLab.do"/>'>
         <div class="volver"><a href="javascript:document.formaRegO.submit();">Terminar</a></div>
          <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name="id_pedidolab"    value='<c:out value="${id_pedidolab}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
          <input type="hidden" name='accion'          value='Retornar'>
</form>
 
<table class="formulario">
  <tr>
      <th colspan="3">COBROS DEL PACIENTE CON LABORATORIOS E IMAGENOLOGIA</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%"> 
          <tr>    
            <td class="etiqueta">Nombres Completo</td>    
            <td class="etiqueta">::</td>
            <td><c:out value = "${nombres}"/></td>
          </tr> 
          <tr>    
            <td class="etiqueta">Monto a Cancelar</td>    
            <td class="etiqueta">::</td>	      
            <td style="font-size:12pt"><c:out value = "${datos.precio_total}"/></td>
          </tr>
       </table>
          
 <table class="tabla">
    <tr>
        <th> No </th>
        <th> Detalle </th>
        <th> Indicacion </th>
        <th> Precio </th>
        <th> Eliminar </th>
     </tr> 
      <c:forEach var="estado" items="${listarcobros}" varStatus="contador">
         <!-- 1********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- 2********** Fin  efecto ************ -->
           <td><c:out value="${contador.count}"/></td>
           <td><c:out value="${estado.costo}"/></td>  
           <td><c:out value="${estado.indicacion}"/></td>  
           <td><c:out value="${estado.entrada}"/></td>   
         <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarLab.do"/>'>
           <td>  
             <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
              <input type="hidden" name="id_cuaderno"     value='<c:out value="${lista.id_cuaderno}"/>'>
              <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>'>
              <input type="hidden" name="id_costo"        value='<c:out value="${estado.id_costo}"/>'>
              <input type="hidden" name="id_rubro"        value='<c:out value="${estado.id_rubro}"/>'>
              <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
              <input type="hidden" name="id_detalle"      value='<c:out value="${estado.id_detalle}"/>'>
              <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
              <input type="hidden" name='id_costo'        value='<c:out value="${lista.primera}"/>'>  
              <input type="hidden" name='cantidad'        value='<c:out value="${lista.cm}"/>'> 
              <input type="hidden" name='id_rubro'        value='<c:out value="${lista.suma1}"/>'> 
              <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
              <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
              <input type="hidden" name="accion"          value='eliminar' >
           </td>
         </form>
       </c:forEach>
 </table>       
 </td>
    <td width="50%" valign="top">
    
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> ID </th>
    <th> IDlab </th>
    <th> Fecha<br>Pedido </th>
    <th> LABORATORIO </th>
    <th> Indicacion </th>
    <th> Costo </th>
    <th> Cobrar </th> 
    </tr>  
   <c:forEach var="lista" items="${listalabcob}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center" style="font-size:8px"><c:out value="${lista.id_cuaderno}"/></td>
       <td align="center" style="font-size:8px"><c:out value="${lista.id_costo}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yy HH:mm'/></td>
       <td align="center"><c:out value="${lista.laboratorio}"/></td>
       <td align="center"><c:out value="${lista.tipoconsulta}"/></td>
       
     <form name=formaEc<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarLab.do"/>'>
       <td><input type="text" name="cantidad" value="<fmt:formatNumber value="${lista.cm}" groupingUsed="false" maxFractionDigits="0"/>" size=5 maxlength=5 onblur='validar(cantidad,"9")'/></td>
       <td><div class="agregar"><a href="javascript:document.formaEc<c:out value="${contador.count}"/>.submit();"> Cobrar</a></div>
         <input type="hidden" name="id_cuaderno"     value='<c:out value="${lista.id_cuaderno}"/>'>
         <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_pedidol"      value='<c:out value="${lista.id_pedido}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="id_costo"        value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_costo'        value='<c:out value="${lista.primera}"/>'>  
         <input type="hidden" name='id_rubro'        value='<c:out value="${lista.suma1}"/>'> 
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
         <input type="hidden" name="accion"          value ='Cobrar'>
         <input type="hidden" name="sw1"             value='1'>
       </td> 
     </form>
  </c:forEach>
 </table>
    </td>
  </tr>
</table>