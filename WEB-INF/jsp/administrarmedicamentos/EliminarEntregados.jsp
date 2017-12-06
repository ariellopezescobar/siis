<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Eliminar Recetas Farmacia</div>
<br>
<form name="eliminar" method="POST" action='<c:url value="/ReporteEntregados.do"/>' >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS DEL PEDIDO </font></th>
      </tr>
    </table>
 <center>   
 <table class="tabla">
  <tr>
    <th> ID </th>
    <th> No Factura </th>
    <th> Fecha </th>
    <th align="center"> Nombre Paciente </th>
    <th> No Pedido</th>
    <th> No Doc.</th>
    <th> MONTO </th>    
    </tr>  
    <tr>
       <td><c:out value="${id_pedido}"/></td>
       <c:if test="${id_factura>0 and (id_estado=='E' or id_estado=='C')}"> 
           <td style="color:red"><c:out value="${id_factura}"/></td>  
       </c:if> 
       <c:if test="${!(id_factura>0 and (id_estado=='E' or id_estado=='C'))}"> 
           <td ><c:out value="${id_factura}"/></td>  
       </c:if> 
       <td><c:out value="${fecha}"/></td>      
       <td align="center"><c:out value="${nombres}"/></td>  
       <td><c:out value="${nit}"/></td>   
       <td><c:out value="${num_cladoc}"/></td>
       <td align="right"><c:out value="${total}"/></td>
      </tr>
      
       <c:if test="${id_factura>0 and (id_estado=='E' or id_estado=='C')}"> 
           </tr>
           <td style="color:red" colspan="7" align="center">FACTURA EMITIDA</td>  
           </tr>
       </c:if>
      
      
      
     
      <td colspan=4 align="center"> 
   <table class="tabla">
  <tr>
    <th> Nro </th>
    <th> Medicamento </th>
    <th> Presentacion </th>
    <th> Concentracion </th>
    <th> Cant. </th>
    <th> Precio </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listadox" items="${listarKardex}" varStatus="contadora">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contadora.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td><c:out value="${listadox.medicamento}"/></td>      
       <td><c:out value="${listadox.forma_far}"/></td>      
       <td><c:out value="${listadox.concentra}"/></td>      
       <td><c:out value="${listadox.salida}"/></td>
       <td><c:out value="${listadox.precio_venta}"/></td>
       <td><c:out value="${listadox.precio_total}"/></td>    
   </c:forEach>
   </table>       
      </td>     
     </tr>
    </table>
</center>      
<center>
  <input type="submit" name='accion' class="eliminar" value='Eliminar'>
</center>
  <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
  <input type="hidden" name='id_por'    value='<c:out value="${id_por}"/>'>
  <input type="hidden" name='sw'        value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion      value='Eliminar'>
</form>
