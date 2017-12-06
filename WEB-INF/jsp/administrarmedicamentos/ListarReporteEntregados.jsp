<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Reporte Recibidos Detallados por feechas</div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
 <td>  
 <table>
  <tr>
    <form name=forma method=post action='<c:url value="/ReporteEntregados.do"/>'>
      <td colspan="2">
        <div style="font-size:15pt"> Reporte del: ${valor_1} al :${valor_2} Financiamiento:<font color="red">${Financiamiento}</font> son: Bs.: <fmt:formatNumber value="${montototal}" maxFractionDigits="2"/>
            <input type="submit" class="btn btn-primary" value='Imprimir' onclick="document.adicionacat.accion1.value='Imprimir';document.adicionacat.action='<c:url value="/Cuaderno4.do"/>'">
            <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name='accionimp'       value='<c:out value="${sAccion}"/>'>
            <input type="hidden" name='anio1'           value='<c:out value="${anio1}"/>'>
            <input type="hidden" name='mes1'            value='<c:out value="${mes1}"/>'>
            <input type="hidden" name='dia1'            value='<c:out value="${dia1}"/>'>
            <input type="hidden" name='anio2'           value='<c:out value="${anio2}"/>'>
            <input type="hidden" name='mes2'            value='<c:out value="${mes2}"/>'>
            <input type="hidden" name='dia2'            value='<c:out value="${dia2}"/>'>
            <input type="hidden" name='hora1'           value='<c:out value="${hora1}"/>'>
            <input type="hidden" name='hora2'           value='<c:out value="${hora2}"/>'>
            <input type="hidden" name='minuto1'         value='<c:out value="${minuto1}"/>'>
            <input type="hidden" name='minuto2'         value='<c:out value="${minuto2}"/>'>
            <input type=hidden name=accion              value='Imprimir'>
        </div>
      </td>
    </form>
  <tr>
</table>
 
 <br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> Id_P </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th  bgcolor="#F2F2F2" align="center"> Nombre Paciente </th>
    <th bgcolor="#F2F2F2"> No Pedido</th>
    <th bgcolor="#F2F2F2"> No Doc.</th>
    <th bgcolor="#F2F2F2"> MONTO </th>    
    </tr>  
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <tr style="font-size:12pt" bgcolor="#00FFFF">
       <td><c:out value="${contador.count}"/></td>     
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
      
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Presentacion </th>
    <th bgcolor="#F2F2F2"> Concentracion </th>
    <th bgcolor="#F2F2F2"> Cant. </th>
    <th bgcolor="#F2F2F2"> Costo <br>Unit.</th>
    <th bgcolor="#F2F2F2"> Precio<br>Venta </th>
    <th bgcolor="#F2F2F2"> TOTAL </th>
    </tr>  
   <c:forEach var="listadox" items="${listarKardex}" varStatus="contadora">
     <tr style="font-size:9pt">
     <c:if test="${lista.id_pedido == listadox.id_pedido}">
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
     </tr> 
     
   </c:forEach>
   </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>
    </td>
</table>