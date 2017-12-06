<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Modificar Medicamentos por fechas</div>
<br>
<table border=0>
<tr>
 <td>  
<div style="font-size:15pt"> Modificar Pedidos y Kardex Medicamentos  </div>
<br>
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> NOMBRE PACIENTE </th>
    <th> NUM </th>    
    <th> MONTO </th>    
    <th> VER </th>
    </tr>  
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/></td>      
       <td><c:out value="${lista.nombres}"/></td>       
       <td><c:out value="${lista.num_cladoc}"/></td>    
       <td><c:out value="${lista.precio_total}"/></td>      
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/VerPedidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="valor_1" value=<c:out value="${valor_1}"/> >           
         <input type="hidden" name="valor_2" value=<c:out value="${valor_2}"/> >                    
	 <input type="hidden" name="accion" value='mostrar' >
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>
   </c:forEach>
</table>
</td>
<td valign="top">
<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">  
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
       <tr>    
        <td class="etiqueta">Numero Clave Documento</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.num_cladoc}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Fecha</td>    
        <td class="etiqueta">::</td>	      
        <td><fmt:formatDate value="${datos.fec_registro}" pattern='dd/MM/yyyy'/></td> 
      </tr>     
      <tr>    
        <td class="etiqueta">Costo Total</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.precio_total}"/></td>
       </tr>  
   </table>
  </td>
  </tr>  
</table>
 <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> MEDICAMENTO </th>
    <th> CANTIDAD </th>
    <th> COSTO </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>
        <form name=formaMK<c:out value="${contador.count}"/> method=post action='<c:url value="/VerPedidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMK<c:out value="${contador.count}"/>.submit();">ModKardex</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_detalle" value=<c:out value="${lista.id_detalle}"/> >         
         <input type="hidden" name="accion" value='modifikardex' >
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>                    
   </c:forEach>
</table>
</td>
</tr>
</table>