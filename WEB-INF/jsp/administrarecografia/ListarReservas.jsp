<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Pacientes en Espera</div>
<br>
   
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> PACIENTE </th>
    <th> CONSULTORIO </th>    
    <th> TIPO </th>    
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>       
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.consultorio}"/></td>    
       <td><c:out value="${lista.expedido}"/></td>           
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPacienteEco.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='ecografia' >
       </td>
     </form>
     
   </c:forEach>
</table>


<div style="font-size:15pt"> Pacientes Atendidos</div>
<br>
   
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> PACIENTE </th>
    
    <th> TIPO </th>    
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milistaAten}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>       
       <td><c:out value="${lista.nombres}"/></td>             
       <td><c:out value="${lista.expedido}"/></td>           
     <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPacienteEco.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
         <input type="hidden" name="tipo_medico" value=<c:out value="${tipo_medico}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='revisar' >
       </td>
     </form>
     <form name=formaMa<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMa<c:out value="${contador.count}"/>.submit();">Imprimir</a></div>
  	 <input type="hidden" name="id_historial" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
         <input type="hidden" name="tipo_medico" value=<c:out value="${tipo_medico}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='revisar' >
       </td>
     </form>
   </c:forEach>
</table>