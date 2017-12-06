<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Resumen de prestaciones realizadas</div>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> Nombre paciente </th>
    <th bgcolor="#F2F2F2"> prestacion </th>  
    <th bgcolor="#F2F2F2"> descipcion </th>  
    <th bgcolor="#F2F2F2"> Nombre Medico </th>      
    </tr>  
   <c:forEach var="lista" items="${listarRecetasPres}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td ><fmt:formatDate value="${lista.fecha_fin}" pattern='dd/MM/yy'/></td>
       <td ><c:out value="${lista.hcl}"/></td>
       <td ><c:out value="${lista.referido}"/></td> 
       <td ><c:out value="${lista.prestacion}"/></td> 
       <td ><c:out value="${lista.descripcion}"/></td>    
       <td ><c:out value="${lista.paquete}"/></td> 
      </tr>  
   </c:forEach>
</table>