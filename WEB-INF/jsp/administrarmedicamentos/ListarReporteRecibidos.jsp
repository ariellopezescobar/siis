<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Reporte Entregados por feechas</div>
<br>
<table border=0>
 <tr>
 <td>  
 <table>Reporte Entregados por feechas
    <form name=forma method=post action='<c:url value="/ReporteEntregados.do"/>'>
      <td colspan="2">
        <div style="font-size:15pt"> Reporte del: ${valor_1} al :${valor_2} Financiamiento:<font color="red">${Financiamiento}</font> son: Bs.: <fmt:formatNumber value="${montototal}" maxFractionDigits="2"/>
            <input type="submit" class="imprimir" value='Imprimir' onclick="document.adicionacat.accion1.value='Imprimir';document.adicionacat.action='<c:url value="/Cuaderno4.do"/>'">
            <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name='accionimp'       value='<c:out value="${sAccion}"/>'>
            <input type="hidden" name='anio1'           value='<c:out value="${anio1}"/>'>
            <input type="hidden" name='mes1'            value='<c:out value="${mes1}"/>'>
            <input type="hidden" name='dia1'            value='<c:out value="${dia1}"/>'>
            <input type="hidden" name='anio2'           value='<c:out value="${anio2}"/>'>
            <input type="hidden" name='mes2'            value='<c:out value="${mes2}"/>'>
            <input type="hidden" name='dia2'            value='<c:out value="${dia2}"/>'>
            <input type=hidden name=accion              value='Imprimir'>
        </div>
      </td>
    </form>
  <tr>
</table>
 
 <br>
   
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> Id_P </th>
    <th> Fecha </th>
    <th align="center"> Nombre Paciente </th>
    <th> No Pedido</th>
    <th> No Doc.</th>
    <th> MONTO </th>    
    </tr>  
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr bgColor="#DDDDDD" onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
           <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteEntregados.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >
                 <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>' >
                 <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>' >
                 <input type="hidden" name="id_por"        value='<c:out value="${lista.id_dispensa}"/>'>
                 <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>' >
                 <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>' >
                 <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>' >
                 <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>' >
                 <input type="hidden" name="accion"        value='EliminarP' >
                 <input type="hidden" name="sw1"           value='1'>
              </td>
           </form>
       <td><c:out value="${lista.id_persona}"/></td>  
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy'/>&nbsp; <font color="blue"><fmt:formatDate value="${lista.fec_registro}" pattern='HH:mm:ss'/></font></td>      
       <td align="center"><c:out value="${lista.nombres}"/></td>  
       <td><c:out value="${lista.nit}"/></td>   
       <td><c:out value="${lista.num_cladoc}"/>-...-<font color="blue"><c:out value="${lista.id_pedido}"/></font></td>
       <form name=formaU<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteEntregados.do"/>'>
          <td bgColor="#AAADDD" style="font-size:12pt" align="center">     
             <div><a href="javascript:document.formaU<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.precio_total}"/></a></div>
             <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >
             <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>' >
             <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>' >
             <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>' >
             <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>' >
             <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>' >
             <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>' >
             <input type="hidden" name="accion"        value='Modificar' >
             <input type="hidden" name="sw1"           value='1' >
          </td>
       </form>
       
        </tr>
     <tr>
      <td colspan=4 align="center"> 
   <table class="tabla">
  <tr>
    <th> Nro </th>
    <th> Medicamento </th>
    <th> Presentacion </th>
    <th> Concentracion </th>
    <th> Cant. </th>
    <th> Costo <br>Unit.</th>
    <th> Precio<br>Venta </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listadox" items="${listarKardex}" varStatus="contadora">
     <!-- ********** Esto es para el efecto ************ -->
     <c:if test="${lista.id_pedido == listadox.id_pedido}">
       <tr <c:if test="${(contadora.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td><c:out value="${listadox.medicamento}"/></td>      
       <td><c:out value="${listadox.forma_far}"/></td>      
       <td><c:out value="${listadox.concentra}"/></td>      
       <td><c:out value="${listadox.salida}"/></td>
       <td><c:out value="${listadox.costo_unit}"/></td>
       <td><c:out value="${listadox.precio_venta}"/></td>
       <td align="right"><c:out value="${listadox.precio_total}"/></td> 
       <c:if test="${Financiamiento=='PROGRAMAS'}">
           <c:forEach var="listapro" items="${listarProg}">
               <c:if test="${listapro.id_programa == listadox.id_programa}">
                   <td style="color:blue"><b><c:out value="${listapro.id_programa}"/>_<c:out value="${listapro.concentra}"/></b></td>
               </c:if>     
           </c:forEach>    
       </c:if> 
     </c:if>
   </c:forEach>
   </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>
    </td>
</table>