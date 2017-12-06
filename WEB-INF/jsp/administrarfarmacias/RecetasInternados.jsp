<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Seguimiento a Recetas de Pacientes que estan Internados</div>
<br>

<table class="tabla">
<tr>
<td><table>
      <tr>
      <form name=formabus method=post action='<c:url value="/RecetasInternados.do"/>'>
        <td colspan="1"><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>"  size="60" maxlength="60" onblur='validar=(nombres,"A")'/></td>
        <td><input class="btn btn-primary" type="submit" name='accion' value="Buscar"></td>
        </form>
      </tr>
    </table>
    </td> 
</tr> 
</table>

<table class="tabla">
<tr>
     <td colspan="7"><form name=formaImp method=post action='<c:url value="/RecetasInternados.do"/>'>
      <td colspan="3">
      <div class="ver"><a class="btn btn-success" href="javascript:document.formaImp.submit();">ListaReversiones</a></div></td>
        <input type="hidden" name="id_medicamento"    value=<c:out value="${id_medicamento}"/> >
        <input type="hidden" name="id_historial"      value=<c:out value="${id_historial}"/> >
        <input type="hidden" name="id_pedido"         value=<c:out value="${id_pedido}"/> >
        <input type="hidden" name='accion'            value='ListaReversiones'>
     </form></td>
 </tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> No </th>
    <th> FECHA </th>
    <th> Sala/ <br>Cama </th>
    <th> Matricula </th>    
    <th> NOMBRE PACIENTE </th>    
    <th> Edad </th>
    <th> Seguro </th>    
    
    <th> Empresa </th>    
    <th> Medico Tratante </th>    
    <th> ENTREGAR </th>  
    </tr>  
   <c:forEach var="listaI" items="${listarAtendidosI}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listaI.fecha}" pattern='dd/MM/yyyy'/>&nbsp;<b><fmt:formatDate value="${listaI.fecha}" pattern='HH:mm'/></b></td>
       <td align="center"><font color="blue"><c:out value="${listaI.sala}"/></font><br><c:out value="${listaI.cama}"/></td>
       <td><c:out value="${listaI.nro_registro}"/></td>    
       <td><b><c:out value="${listaI.nombres}"/></b></td>    
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${listaI.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listaI.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listaI.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    <c:if test="${listaI.expedido=='S'}">
            <td align="center">  Ley475   </td>
    </c:if>
    <c:if test="${listaI.expedido=='E'}"> 
              <td align="center">  Particular   </td>
    </c:if>
    <c:if test="${listaI.expedido=='P'}"> 
              <td align="center"><c:out value="${listaI.seguro}"/> </td>
    </c:if>
       <td><c:out value="${fn:substring(listaI.resultado,0,30)}"/></td>   
       <td align="center" style="color:blue"><c:out value="${listaI.nombre}"/> </td>
    
    <form name=formaMai<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetasInternados.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaMai<c:out value="${contador.count}"/>.submit();">VerReceta</a></div>
  	 <input type="hidden" name="id_historial"     value=<c:out value="${listaI.id_historial}"/> >
         <input type="hidden" name="id_paciente"      value=<c:out value="${listaI.id_paciente}"/> >
         <input type="hidden" name="id_historia"      value=<c:out value="${listaI.id_historia}"/> >
         <input type="hidden" name="id_pedido"        value=<c:out value="${listaI.rango}"/> >
         <input type="hidden" name="id_persona"       value=<c:out value="${listaI.id_persona}"/> >
         <input type="hidden" name="expedido"         value=<c:out value="${listaI.expedido}"/> >
	 <input type="hidden" name="accion"           value='verreceta'>
	 <input type="hidden" name="sw"               value='1'>
       </td>
     </form>   
    </tr> 
   </c:forEach>
</table>

