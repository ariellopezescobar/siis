<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Resumen de prestaciones realizadas</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> No Registro </th>
    <th bgcolor="#F2F2F2"> Nombre paciente </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> Año </th>
    <th bgcolor="#F2F2F2"> Mes </th>
    <th bgcolor="#F2F2F2"> Dia </th>
    <th bgcolor="#F2F2F2"> Sexo </th>  
    <th bgcolor="#F2F2F2"> Tipo </th>  
    <th bgcolor="#F2F2F2"> Num </th>
    <th bgcolor="#F2F2F2"> Codigo </th>
    <th bgcolor="#F2F2F2"> Ptrs </th>
    <th bgcolor="#F2F2F2"> Costo </th>
    <th bgcolor="#F2F2F2"> Nombre Medico </th>    
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
     <c:if test="${(lista.edad>=5and lista.edad<60 and lista.accion=='M' )}">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td style="color:red"><c:out value="${lista.registro}"/></td> 
       <td style="color:red"><c:out value="${lista.nombres}"/></td> 
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/></td>
       <td style="color:red"><c:out value="${lista.edad}"/></td>
       <td style="color:red"><c:out value="${lista.mes}"/></td>
       <td style="color:red"><c:out value="${lista.dia}"/></td>
       <td style="color:red"><c:out value="${lista.accion}"/></td> 
       <td style="color:red"><c:out value="${lista.repetida}"/></td>    
       <td style="color:red"><c:out value="${lista.num}"/></td>
       <td style="color:red"><c:out value="${lista.codigo}"/></td>
       <td style="color:red"><c:out value="${lista.diagnostico}"/></td>     
       <td style="color:red"><c:out value="${lista.rango}"/></td>
       <td style="color:red"><c:out value="${lista.nombre}"/></td>
       <td style="color:red; font-size:12pt">Corregir</td>
     </c:if>   
      <c:if test="${!(lista.edad>=5and lista.edad<60 and lista.accion=='M' )}">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.registro}"/></td> 
       <td><c:out value="${lista.nombres}"/></td> 
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/></td>
       <td ><c:out value="${lista.edad}"/></td>
       <td><c:out value="${lista.mes}"/></td>
       <td><c:out value="${lista.dia}"/></td>
       <td><c:out value="${lista.accion}"/></td>
       <td><c:out value="${lista.repetida}"/></td>    
       <td><c:out value="${lista.num}"/></td>
       <td><c:out value="${lista.codigo}"/></td>
       <td><c:out value="${lista.diagnostico}"/></td>     
       <td><c:out value="${lista.rango}"/></td>
       <td><c:out value="${lista.nombre}"/></td>
     </c:if>    
    </tr> 
   </c:forEach>
</table>