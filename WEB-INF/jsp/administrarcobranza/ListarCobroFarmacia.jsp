<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Lista de Pacientes a Cobrar Farmacia</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> NIT </th>    
    <th bgcolor="#F2F2F2"> MONTO CANCELAR </th>  
    <c:if test="${Factura == 2}"> 
        <th bgcolor="#F2F2F2"> FACTURA </th>
     </c:if>   
    <th bgcolor="#F2F2F2"> CANCELAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:10pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td> 
       <td align="right"><b><c:out value="${lista.precio_total}"/></b></td>    
     <c:if test="${Factura == 2}"> 
         <form name=formaMF<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarFarmacia.do"/>'>
           <td>     
             <div class="agregar"><a class="btn btn-primary" href="javascript:document.formaMF<c:out value="${contador.count}"/>.submit();">Factura</a></div>
             <input type="hidden" name="id_pedido"   value='<c:out value="${lista.id_pedido}"/>' >   
             <input type="hidden" name="precio"      value='<c:out value="${lista.precio_total}"/>' >
             <input type="hidden" name="nombres"     value='<c:out value="${lista.nombres}"/>' >
             <input type="hidden" name="nit"         value='<c:out value="${lista.nit}"/>' >
             <input type="hidden" name='fec'         value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="id_persona"  value='<c:out value="${id_persona}"/>' >     
             <input type="hidden" name="accion"      value='VerFactura' >
             <input type="hidden" name="sw"          value='1' >
           </td>
         </form>
     </c:if>   
     
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarFarmacia.do"/>'>
       <td>     
         <div><a class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	 <input type="hidden" name="id_pedido"   value='<c:out value="${lista.id_pedido}"/>' >   
         <input type="hidden" name="precio"      value='<c:out value="${lista.precio_total}"/>' >
         <input type="hidden" name="id_persona"  value='<c:out value="${id_persona}"/>' >         
	 <input type="hidden" name="accion"      value='Consultar' >
	 <input type="hidden" name="sw"          value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>