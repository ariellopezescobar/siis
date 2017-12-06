<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Entrega de Medicamentos a Pacientes Internados</div>
<br>

<div style="font-size:15pt"> Lista de Pacientes que estan Internados</div>
<br>

<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> NOMBRE PACIENTE </th>    
    <th> TIPO </th>    
    <th> ENTREGAR </th>  
    </tr>  
   <c:forEach var="listaI" items="${listarAtendidosI}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listaI.fecha}" pattern='dd/MM/yyyy'/></td>    
       <td><c:out value="${listaI.nombres}"/></td>    
       <td><c:out value="${listaI.expedido}"/></td>    
       
    <form name=formaMai<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMai<c:out value="${contador.count}"/>.submit();">Dispensar</a></div>
  	 <input type="hidden" name="id_historial"     value=<c:out value="${listaI.id_historial}"/> >
         <input type="hidden" name="id_paciente"      value=<c:out value="${listaI.id_paciente}"/> >
         <input type="hidden" name="expedido"         value=<c:out value="${listaI.expedido}"/> >
	 <input type="hidden" name="accion"           value='dispensar'>
	 <input type="hidden" name="sw"               value='1'>
       </td>
     </form>   
   </c:forEach>
</table>

