<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaRet method=post action='<c:url value="/AtenderPaciente.do"/>'>
         <div><a class="btn btn-success" href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Historial'>
</form>

<table class="table table-striped table-condensed table-responsive">
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>HISTORIAL DEL PACIENTE Y RECETAS POR ATENCIOON</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>          
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
     <tr>    
        <td align="right" bgcolor="#F2F2F2">Edad</td>    	      
        <td><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</td>
      </tr>
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td align="right" bgcolor="#F2F2F2">Factores de Riesgo</td>    	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
   
  <c:if test="${expedido=='S'}">  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt" bgColor="#DDDDDD">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PRESTA<br>CION </th>
    <th bgcolor="#F2F2F2"> DESCRPCION </th>
    <th bgcolor="#F2F2F2"> DADO POR MEDICO </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center" style="color:blue"><c:out value="${listado.id_detalle}"/></td>
       <td style="color:blue" align="center"><fmt:formatDate value="${listado.fecha_fin}" pattern='dd/MM/yy H:mm'/></td> 
       <td style="color:blue" align="center"><c:out value="${listado.prestacion}"/></td>
       <td style="color:blue" align="center"><c:out value="${listado.descripcion}"/><font color="red" size="3"><b>[<c:out value="${listado.cantidad}"/>]</b></font></td>             
       <td style="color:blue" align="center"><c:out value="${listado.paquete}"/></td>
     </tr>

    </table>
    </td>
  
  </tr>
  <tr>  
<td>
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma Far </th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Cant. </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Tiempo<br>Dosificacion </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
      <c:if test="${listadox.id_prestacion == listado.id_prestacion}">  
     <tr style="font-size:9pt">
       <form name=formaUnir<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaUnir<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_paciente" value=<c:out value="${listadox.id_detalle}"/> >
                 <input type="hidden" name="accion" value='ModDosifica' >
                 <input type="hidden" name="sw1" value='1' >
              </td>
        </form>
       <td><fmt:formatDate value="${listadox.fecha}" pattern='dd/MM/yyyy H:mm'/></td> 
       <td><c:out value="${listadox.medicamento}"/></td> 
       <td><c:out value="${listadox.forma_far}"/></td>
       <td><c:out value="${listadox.concentra}"/></td>
       <td><c:out value="${listadox.salida}"/></td>   
       <td><c:out value="${listadox.indicacion}"/></td>  
       <c:if test="${Modosif == 'SI' }">
           <td><input type="text" name="tdosif" value="<c:out value = "${listadox.dosifica}"/>" size="2" maxlength="2"/></td>    
       </c:if>
       <c:if test="${Modosif != 'SI' }">
            <td align="center"><c:out value="${listadox.dosifica}"/></td>  
       </c:if>
       <td><c:out value="${listadox.medico}"/></td>   
     </tr> 
   </c:if>
   </c:forEach>
   </c:forEach>
   </table>

</td>
</tr>
</table> 
</c:if>

<c:if test="${expedido!='S'}">  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma Far </th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Cant. </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Tiempo<br>Dosificacion </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
     <tr style="font-size:9pt">
       <form name=formaUnir2<c:out value="${contadora.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaUnir2<c:out value="${contadora.count}"/>.submit();"> <c:out value="${contadora.count}"/><br><c:out value="${listadox.numeracion}"/></a></div>
                 <input type="hidden" name="id_paciente"   value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name="id_historial"  value='<c:out value="${id_historial}"/>'>
                 <input type="hidden" name="accion"        value='ModDosifica'>
                 <input type="hidden" name="sw1"           value='1' >
              </td>
        </form>
       <td><fmt:formatDate value="${listadox.fecha_ini}" pattern='dd/MM/yyyy H:mm'/></td> 
       <td><c:out value="${listadox.medicamento}"/></td> 
       <td><c:out value="${listadox.forma_far}"/></td>
       <td><c:out value="${listadox.concentra}"/></td>
       <td><c:out value="${listadox.salida}"/></td>   
       <td><c:out value="${listadox.indicacion}"/></td> 
       <c:if test="${Modosif == 'SI' }">
       <form name=formaMOD<c:out value="${contadora.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
           <td align="center"><input type="text" name="tdosif" value="<c:out value = "${listadox.dosifica}"/>" size="2" maxlength="2"/></td>    
           <td align="center">     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMOD<c:out value="${contadora.count}"/>.submit();"> Modificar</a></div>
                 <input type="hidden" name="id_detalle"      value='<c:out value="${listadox.id_detalle}"/>'>
                 <input type="hidden" name="id_medicamento"  value='<c:out value="${listadox.id_medicamento}"/>'>
                 <input type="hidden" name="id_paciente"   value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>'>
                 <input type="hidden" name="accion"          value='GuardarModDosifica'>
                 <input type="hidden" name="sw1"             value='1' >
          </td>
       </form> 
      </c:if>
     <c:if test="${Modosif != 'SI' }">
             <td align="center"><c:out value="${listadox.dosifica}"/></td>  
             <td><c:out value="${listadox.medico}"/></td>  
       </c:if>
     </tr> 
   </c:forEach>
   </table>
    
</c:if>    

