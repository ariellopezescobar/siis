<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <div style="font-size:15pt"> CONTROL DE CALIDAD DEL LLENADO DE INFORMACION</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>    
    <th bgcolor="#F2F2F2"> TIPO </th>    
    <th bgcolor="#F2F2F2"> NOMBRE DISPENSADOR </th> 
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
  </tr>  
   <c:forEach var="calidad" items="${calidad}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${calidad.fecha}" pattern='dd/MM/yyyy'/></td>    
       <td><c:out value="${calidad.nombres}"/></td>    
       <td><c:out value="${calidad.expedido}"/></td>    
       <td><c:out value="${calidad.nombre}"/></td>    
   <form name=formaMaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_reservacion"      value='<c:out value="${calidad.id_historial}"/>'>
         <input type="hidden" name="id_persona"          value='<c:out value="${calidad.id_persona}"/>' >         
         <input type="hidden" name="id_consultorio"      value='<c:out value="${calidad.id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"         value='<c:out value="${calidad.id_paciente}"/>' >
         <input type="hidden" name="expedido"            value='<c:out value="${calidad.expedido}"/>' > 
         <input type="hidden" name="fecha"               value='<c:out value="${calidad.fecha}"/>' >  
         <input type="hidden" name="tipo_medico"         value='<c:out value="${tipo_medico}"/>' >         
	 <input type="hidden" name="accionm"             value='Modificar' >
	 <input type="hidden" name="sw1"                 value='actualiza' >
         <input type="hidden" name="swinter"             value='inter' >
       </td>
     </form>  
   </c:forEach>
</table>
 


