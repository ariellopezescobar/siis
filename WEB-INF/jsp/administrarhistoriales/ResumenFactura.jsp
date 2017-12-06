<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Imprimir Factura Paciente</div>

<table class="formulario" width="100%">
  <tr>
   <td width="50%" valign="top"> 
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3" style="font-size:25pt">IMPRIMIR FACTURA PACIENTE</th>
      </tr>
      <tr>    
        <td class="etiqueta">Nº HCL</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${hcl}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Nombres Cliente</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres"  value='<c:out value="${nombres}"/>' size="40" maxlength="40" readonly></td>
      </tr>   
      <tr>
        <td class="etiqueta">CI/Cliente<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="ciu"  value='<c:out value="${ciu}"/>' size="12" maxlength="12" readonly></td>
      </tr>
      <tr>
        <td class="etiqueta">TOTAL A PAGAR<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td style="color:blue; font-size:14pt"><b><fmt:formatNumber value="${totalsfc+totalsff-totaldeudapag}" maxFractionDigits="2"/></b></td>	                 
      </tr>
    </table>
<table class="formulario" width="100%" border="1"> 
    <tr> 
   
       <td> 
      <c:if test="${Factura == 2}"> 
         <c:if test="${estadfact != 'impresa'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="adicionar" value='Impresora/Inyeccion'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="ciu"             value='<c:out value="${ciu}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="totalT"          value='<c:out value="${total2+totalfar}"/>' >
             <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
       </td> 
       <td> 
       <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="adicionar" value='Impresora/Matricial'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="totalT"          value='<c:out value="${total2+totalfar}"/>' >
             <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
       </td> 
      </c:if> 
      
      <c:if test="${estadfact == 'impresa'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="adicionar" value='Imprimir Copia'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="totalT"          value='<c:out value="${total2+totalfar}"/>' >
             <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
      </c:if> 
      
     </c:if> 
     </td>  
   </tr>   
</table>     
    
   </td> 
   <td width="50%" valign="top"> 
  <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' >
  <table class="formulario" width="100%" border="1">  
      <tr>
        <th colspan="4"><font size=2>TOTAL DEL PACIENTE </font></th>
      </tr>
        <tr>
          <th> No </th>
          <th> DETALLE RUBRO </th>    
          <th> Costo </th>
       </tr>
       <tr>
          <td>1</td> 
          <td>FARMACIA</td>
          <td align="right"><fmt:formatNumber value="${totalfar}" maxFractionDigits="2"/></td> 
       </tr>
       <c:forEach var="lpedido" items="${listaCobrosOtros}" varStatus="contador">
          <tr><td><c:out value="${contador.count+1}"/></td> 
          <td><c:out value="${lpedido.nombre}"/></td>
          <td align="right"><fmt:formatNumber value="${lpedido.total}" maxFractionDigits="2"/></td></tr> 
       </c:forEach>
  </table>
  </form>
  </td>
  </tr>
  
  <tr>
   <td width="50%" valign="top"> 
     <table class="formulario" width="100%" border="0"> 
     <tr>
         <th colspan="10"> RECETAS DE FARMACIA </th>
     </tr>  
     <tr>
       <th> Nro </th>
       <th> Fecha </th>
       <th colspan="6"> Num. Documto</th>
       <th colspan="2"> Monto</th>
     </tr>  
    <c:forEach var="listafar" items="${listaCobrosFar}" varStatus="contador">
       <tr bgColor="#DDDAAA">
           <td><c:out value="${contador.count}"/></td>
           <td style="font-size: 9pt"><fmt:formatDate value="${listafar.fec_registro}" pattern='dd/MM/yy'/></td>      
           <td colspan="6"><c:out value="${listafar.id_pedido}"/>;<c:out value="${listafar.id_factura}"/>;<c:out value="${listafar.nit}"/></td>
           <td style="color:red" align="right"><b><fmt:formatNumber value="${listafar.precio_total}" maxFractionDigits="1"/></b></td> 
           <td>&nbsp;</td> 
       </tr>
       <tr>
          <th> No </th>
          <th> Fecha </th>
          <th> Medicamento </th>
          <th> Forma <br>Far. </th>
          <th> Concentra </th>    
          <th> Cant. </th>
          <th> Costo <br>Unit </th>
          <th> Precio <br>Unit. </th>
          <th> Total </th>
      </tr>  
     <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
      <c:if test="${listafar.id_pedido==listado.id_pedido}">    
       <!-- ********** Esto es para el efecto ************ -->
        <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#D9D9FF" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
       <!-- ********** Fin  efecto ************ -->
      
          <td style="font-size: 7pt" align="center"><c:out value="${contador.count}"/></td>
          <td style="font-size: 7pt"><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yy'/></td>  
          <td style="font-size: 7pt"><c:out value="${listado.medicamento}"/></td>      
          <td style="font-size: 7pt"><c:out value="${listado.forma_far}"/></td>      
          <td style="font-size: 7pt"><c:out value="${listado.concentra}"/></td>      
          <td style="font-size: 7pt" align="center"><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></td>
          <td style="font-size: 8pt" align="center"><fmt:formatNumber value="${listado.costo_unit}" maxFractionDigits="2"/></td>
          <td style="font-size: 8pt" align="center"><fmt:formatNumber value="${listado.precio_venta}" maxFractionDigits="2"/></td>
          <th style="font-size: 11pt"><fmt:formatNumber value="${listado.precio_total}" maxFractionDigits="1"/></th>
      </c:if> 
     </c:forEach>
    </c:forEach>  
   </table>
   
     <c:if test="${addfar=='nada'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/PlanAccionPaciente.do"/>' > 
         <center>
           <input type="submit" name='accionf' class="adicionar" value='Adicionar'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${listado.id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <c:if test="${expedido=='S'}">
                 <input type="hidden" name="accion"          value='SPS (exSUMI)' >
             </c:if>     
             <c:if test="${expedido=='P'}">
                 <input type="hidden" name="accion"          value='Recetar Asegurado' >
             </c:if>     
             <c:if test="${expedido=='E' or expedido == 'A'}">
                 <input type="hidden" name="accion"          value='Recetar' >
             </c:if>     
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
    </c:if>
    
  </td>
  
  
  
   <td width="50%" valign="top"> 
   <table class="formulario" width="100%">  
      <tr>
        <th colspan="6"><font size=2>OTRAS ACCIONES GENERALES </font></th>
      </tr>
       <tr>
          <th> No </th>    
          <th colspan="3"> Detalle </th>    
          <th colspan="2"> Total </th>
       </tr> 
       
    <c:forEach var="lpedidod" items="${listaCobrosOtros}" varStatus="contador1">
         <tr>
          <td><c:out value="${contador1.count}"/></td> 
          <td colspan="2" align="center" style="color:green"><b><c:out value="${lpedidod.nombre}"/></b></td>
          <td align="right"><b><c:out value="${lpedidod.total}"/></b></td> 
          </tr>
          
          <tr>
          <th> No </th>
          <th> Fecha </th>
          <th> Detalle </th>
          <th> Costo </th>
          <th> Total </th>
      </tr>  
     <c:forEach var="listadet" items="${listarCostosT}" varStatus="contador">
      <c:if test="${lpedidod.id_pedido==listadet.id_pedido and lpedidod.id_rubro==listadet.id_rubro}">    
       <!-- ********** Esto es para el efecto ************ -->
        <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#D9D9FF" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
       <!-- ********** Fin  efecto ************ -->
          <td style="font-size: 8pt" align="center"><c:out value="${contador.count}"/></td>
          <td style="font-size: 8pt"><fmt:formatDate value="${listadet.fecha}" pattern='dd/MM/yyyy'/></td>  
          <td style="font-size: 8pt"><c:out value="${listadet.costo}"/></td>      
          <td style="font-size: 8pt" align="right"><c:out value="${listadet.costo_unit}"/></td>
          <td style="font-size: 8pt" align="right"><c:out value="${listadet.entrada}"/></td>
      </c:if> 
     </c:forEach>
     
     </c:forEach>
      
  </table> 
    <c:if test="${add=='nada'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/ListaCobrarPaciente.do"/>' > 
         <center>
           <input type="submit" name='accionf' class="adicionar" value='Adicionar'>
         </center>
            <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
            <input type="hidden" name=accion        value='Adicionar'>
            <input type="hidden" name='id_reservacion' value='<c:out value="${id_historial}"/>'>
            <input type="hidden" name="id_paciente"    value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name="id_pedido"      value='<c:out value="${listadet.id_pedido}"/>'>
            <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
            <input type="hidden" name="id_rubro"       value='<c:out value="${listadet.id_rubro}"/>'>
            <input type="hidden" name='id_seguro'      value='<c:out value="${id_seguro}"/>'> 
            <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>'>
            <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
            <input type="hidden" name="id_persona"     value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name="fecha"          value='<c:out value="${fecha}"/>'>
            <input type="hidden" name="accioncobros"   value='Cobros'>
            <input type="hidden" name="sweco"          value='sweco'>
       </form>
    </c:if>
  </td>
  </tr>
</table>   
