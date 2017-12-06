<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<center>
 <table class="tabla">
  <tr style="font-size:9pt" bgColor="#DDDDDD">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PRESTACION </th>
    <th bgcolor="#F2F2F2"> DESCRPCION </th>
    <th bgcolor="#F2F2F2"> DADO POR MEDICOO </th>
   </tr>  
   <c:forEach var="listado" items="${listarRecetasPres}" varStatus="contador">
     <tr style="font-size:9pt" bgcolor="#D2D2D2">
       <td align="center" style="color:blue"><c:out value="${contador.count}"/></td>
       <td style="color:blue" align="center"><fmt:formatDate value="${listado.fecha_fin}" pattern='dd/MM/yy H:mm'/></td> 
       <td style="color:blue" align="center"><c:out value="${listado.prestacion}"/></td>
       <td style="color:blue" align="center"><c:out value="${listado.descripcion}"/><font color="red" size="3"><b>[<c:out value="${listado.cantidad}"/>]</b></font><c:out value="${listado.costo}"/><font color="black">[<c:out value="${listado.referido}"/>--<c:out value="${listado.anio}"/>anio]-</b><c:out value="${listado.hcl}"/></b></font></td>             
       <td style="color:blue" align="center"><c:out value="${listado.paquete}"/></td>
     </tr>
     <tr>
      <td colspan=4 align="center"> 
       <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
         <tr style="font-size:9pt">
          <th style="color:green"> NRO </th>
          <th style="color:green"> FECHA </th>
          <th style="color:green"> MEDICAMENTO </th>
          <th style="color:green"> FORMA FARMACO </th>
          <th style="color:green"> CONCENTRACION </th>
          <th style="color:green"> CANTIDAD </th>
          <th style="color:green"> INDICACION </th>
          <th style="color:green"> MEDICO </th>
       </tr>  
        <c:forEach var="listadox" items="${listarRecetasP}" varStatus="contadora">
         <c:if test="${listadox.id_prestacion == listado.id_prestacion and listadox.id_historial == listado.id_historial}">
           <tr style="font-size:9pt">
           <td align="center"><c:out value="${contadora.count}"/></td>
           <td><fmt:formatDate value="${listadox.fecha_ini}" pattern='dd/MM/yyyy H:mm'/></td> 
           <td ><b><c:out value="${listadox.medicamento}"/></b></td>      
           <td ><c:out value="${listadox.forma_far}"/></td>      
           <td ><c:out value="${listadox.concentra}"/></td>      
           <td style="color:blue; font-size:12pt" align="center"><b><c:out value="${listadox.salida}"/></b></td>             
           <td ><b><c:out value="${listadox.indicacion}"/></b></td>
           <td><c:out value="${listadox.medico}"/></td>   
           
           </tr>
         </c:if>
       </c:forEach>
       </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>  
</center>

