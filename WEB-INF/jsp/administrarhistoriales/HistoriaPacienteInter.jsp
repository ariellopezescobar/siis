<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Historial del paciennte internado</div>
<br>
<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
  
      <tr>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Sexo</td>
        <td class="etiqueta">::</td>	
        <c:if test="${datos.id_tipo_sexo=='1'}">
            <td>FEMENINO</td>
        </c:if>
        <c:if test="${datos.id_tipo_sexo=='2'}">
            <td>MASCULINO</td>
        </c:if>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha de nac.</td>    
        <td class="etiqueta">::</td>
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Edad</td>    
        <td class="etiqueta">::</td>	      
        <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
      </tr>  
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td class="etiqueta">Factores de Riesgo</td>    
            <td class="etiqueta">::</td>	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
  </td>
  </tr>
</table>
<table class="tabla" border="0">
  <tr>
     <form name=formaEch<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td>     
         <div class="imprimir"><a href="javascript:document.formaEch<c:out value="${contador.count}"/>.submit();">HCL</a></div>
  	 <input type="hidden" name="id_historial"        value='<c:out value="${id_historial}"/>'>
         <input type="hidden" name="id_persona"          value='<c:out value="${id_persona}"/>' >         
         <input type="hidden" name="id_consultorio"      value='<c:out value="${id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"         value='<c:out value="${id_paciente}"/>' >
         <input type="hidden" name="expedido"            value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name="fecha"               value=<fmt:formatDate value="${fecha}" pattern='dd/MM/yyyy'/> >  
         <input type="hidden" name="tipo_medico"         value='<c:out value="${tipo_medico}"/>' >         
	 <input type="hidden" name="accion"              value='Hcl' >
	 <input type="hidden" name="sw1"                 value='actualiza' >
         <input type="hidden" name="swinter"             value='inter' >
       </td>
     </form>
  </tr> 
 </table>
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> NOMBRE MEDICO </th>
    <th> DIAGNOSTICO/EVOLUCION </th> 
    <th> SALA/ CAMA </th>    
   </tr>  
   <c:forEach var="listainter" items="${milistaInter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listainter.fecha}" pattern='dd/MM/yy' /><br><fmt:formatDate value="${listainter.fecha}" type="time" timeStyle="short"/></td>
       <td><c:out value="${listainter.nombres}"/><br><c:out value="${lista.consultorio}"/></td>        
       <td><c:out value="${listainter.diagnostico}"  escapeXml="False"/></td>
         <form name=formaCama<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCama.do"/>'>
            <td>
              <div><center><a href="javascript:document.formaCama<c:out value="${contador.count}"/>.submit();"><c:out value="${listainter.codigo}"/>/<c:out value="${listainter.accion}"/></a></center></div>
              <input type="hidden" name="id_historial"   value='<c:out value="${listainter.id_historial}"/>' >
              <input type="hidden" name="id_historia"    value='<c:out value="${listainter.id_historia}"/>' >
              <input type="hidden" name="camaactual"     value='<c:out value="${listainter.cama}"/>' >
              <input type="hidden" name="nombres"        value='<c:out value="${datos.nombres}"/>' >
              <input type="hidden" name="accionc"        value='cama' >
              <input type="hidden" name="sw"             value='1' >
            </td>
         </form>
      </c:forEach>
</table>
 