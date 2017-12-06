<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="adicionar" method="POST" action='<c:url value="/PlanAccionI.do"/>' >
<center>
<table class="table table-striped table-hover table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3" align="center"><center>DATOS PERSONALES DEL PACIENTE INTERNADO</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-hover table-bordered table-condensed table-responsive">
      <tr style="font-size:9pt">
            <td class="etiqueta">HCL</td>
            <td><c:out value = "${datos.hcl}"/></td>
            <td bgcolor="CAD3E4">&nbsp;</td>
            <td class="etiqueta">Nombres</td>    
            <td><c:out value = "${datos.nombres}"/></td>
          </tr>
          <tr style="font-size:9pt">
            <td class="etiqueta">Fecha de nac.</td>    
            <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
            <td bgcolor="CAD3E4">&nbsp;</td>
            <td class="etiqueta">Edad</td>          
            <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
          </tr> 
          <tr style="font-size:9pt">    
            <td class="etiqueta">Sexo</td>
            <c:if test="${datos.id_tipo_sexo=='1'}">
                <td>FEMENINO</td>
            </c:if>
            <c:if test="${datos.id_tipo_sexo=='2'}">
                <td>MASCULINO</td>
            </c:if>
            <td bgcolor="CAD3E4">&nbsp;</td>
            <td class="etiqueta">Direccion</td>    	      
            <td><c:out value = "${datos.direccion}"/></td>
          </tr>   
          <tr style="font-size:9pt">    
            <td class="etiqueta">Grupo Sanguineo</td>    	      
            <td><c:out value = "${datos.tipo_sanguineo}"/></td>
            <td bgcolor="CAD3E4">&nbsp;</td>
            <td class="etiqueta">Factores Riesgo</td>    	      
             <c:if test="${fn:length(datos.factor_riesgo)>3}">
                <td style="font-size:25pt; color:red"><c:out value = "${datos.factor_riesgo}"/></td>
            </c:if>
          </tr>   
          <tr style="font-size:10pt">    
            <td class="etiqueta">I.M.C.</td>    	      
            <td><c:out value = "${estimc}"/></td>
             <td bgcolor="CAD3E4">&nbsp;</td>
            <td class="etiqueta">&nbsp;</td>    
            <td class="etiqueta">&nbsp;</td>	      
          </tr>
  </table>
  </td>
  </tr>
   
</table>
</center>
<c:if test="${not(tipo_medico == '3' or tipo_medico == '4' or tipo_medico == '15' )}">
   <input type="submit" name='accion' class="btn btn-warning" value='ExamenesComplementarios' onclick="document.adicionar.action='<c:url value="/Laboratorio.do"/>';">  
</c:if>

<c:if test="${expedido == 'E' and revision!='cie10'}">
   <input type="submit" name='accion' class="btn btn-success" value='Recetar'>  
   <input type="submit" name='accion' class="btn btn-info" value='Cobros' onclick="document.adicionar.action='<c:url value="/ListaCobrarPaciente.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Kardex' onclick="document.adicionar.action='<c:url value="/ListarCobroRubro.do"/>';">  
   
</c:if>

 

 
<c:if test="${expedido == 'S' and revision!='cie10'}">
    <c:if test="${tipo_medico != '15'}">
       <input type="submit" name='accion' class="btn btn-success" value='SPS (exSUMII)'> 
    </c:if> 
</c:if>

<c:if test="${expedido == 'P' and revision!='cie10'}">
    <c:if test="${tipo_medico != '15' and tipo_medico != '4'}">
       <input type="submit" name='accion' class="btn btn-success" value='Recetar Asegurado'>  
    </c:if> 
</c:if>

 <c:if test="${tipo_medico == '23'}">
 </c:if>  
  
 <c:if test="${id_consultorio == '6'}">
 </c:if>
  
 <c:if test="${revision=='cie10'}">
 </c:if>
 
<c:if test="${( id_consultorio == '55' or id_consultorio == '6' ) and revision=='cie10'}">
     <input type="submit" name='accion' class="btn btn-info" value='DiagnosticosCIE10' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">
     <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
 </c:if>   
 
<c:if test="${tipo_medico == '1' and datos.edad >= 5}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>

 <c:if test="${tipo_medico == '1' and datos.edad < 5}">
  <input type="submit" name='accion' class="btn btn-info" value='C4.Consulta Ext.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>

 <c:if test="${tipo_medico == '5' and datos.edad >= 5}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
   <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">  
   <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
   <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>

 <c:if test="${tipo_medico == '5' and datos.edad < 5}">
   <input type="submit" name='accion' class="btn btn-info" value='C4.Consulta Ext.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">    
 </c:if>
 
 <c:if test="${tipo_medico == '4'}">   
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if> 

 <c:if test="${tipo_medico == '2'}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Odontologia' onclick="document.adicionar.action='<c:url value="/Cuaderno7.do"/>';">  
 </c:if> 

 <c:if test="${tipo_medico == '3'}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='CV.Vacunas' onclick="document.adicionar.action='<c:url value="/Vacunas.do"/>';">  
 </c:if> 

 <c:if test="${tipo_medico == '6'}">
   <input type="submit" name='accion' class="btn btn-info" value='C4.Crecimiento-Desarrollo' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">  
 </c:if> 

 <c:if test="${tipo_medico == '13'}">
   <input type="submit" name='accion' class="btn btn-info" value='CV.Vacunas' onclick="document.adicionar.action='<c:url value="/Vacunas.do"/>';">  
 </c:if> 

 <c:if test="${tipo_medico == '14'}">
   <input type="submit" name='accion' class="btn btn-info" value='CV.Vacunas' onclick="document.adicionar.action='<c:url value="/Vacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='C4.Crecimiento-Desarrollo' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">  
 </c:if> 
 <c:if test="${tipo_medico == '16'}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">  
   <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
    <!-- <input type="submit" name='accion' class="btn btn-info" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">   --> 
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='CV.Vacunas' onclick="document.adicionar.action='<c:url value="/Vacunas.do"/>';">  
 </c:if> 
 <c:if test="${tipo_medico == '15'}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">  
    <!-- <input type="submit" name='accion' class="btn btn-info" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">   --> 
   <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>
 <c:if test="${tipo_medico == '17'}">  
   <!-- <input type="submit" name='accion' class="btn btn-info" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">   --> 
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">
   <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>

 <c:if test="${tipo_medico == '18' and datos.edad >= 5}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
   <!-- <input type="submit" name='accion' class="btn btn-info" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">   --> 
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DiagnosticosCIE10' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">
 </c:if>

 <c:if test="${tipo_medico == '18' and datos.edad < 5}">
  <input type="submit" name='accion' class="btn btn-info" value='C4.Consulta Ext.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
  <!-- <input type="submit" name='accion' class="btn btn-primary" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">   --> 
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>
 
  <c:if test="${tipo_medico == '24' and datos.edad < 5 }">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Emergencias' onclick="document.adicionar.action='<c:url value="/Cemergencias.do"/>';">     
  <input type="submit" name='accion' class="btn btn-primary" value='C.Atencion Integ.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='HCL Emergencias' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Nota Internacion' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Historia Clinica' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DiagnosticosCIE10' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='SolicitudQuirofano' onclick="document.adicionar.action='<c:url value="/NuevoQuirofano.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SolicitudSangre' onclick="document.adicionar.action='<c:url value="/SolSangre.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Transferencia' onclick="document.adicionar.action='<c:url value="/Transferencia.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='AdmisionHospitalaria' onclick="document.adicionar.action='<c:url value="/AdmisionHosp.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='ProtocoloOperatorio' onclick="document.adicionar.action='<c:url value="/ProtocoloOpera.do"/>';"> 
  <input type="submit" name='accion' class="btn btn-info" value='Epicrisis' onclick="document.adicionar.action='<c:url value="/Epicrisis.do"/>';">  
 </c:if>

 <c:if test="${tipo_medico == '24' and datos.edad >= 5}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Emergencias' onclick="document.adicionar.action='<c:url value="/Cemergencias.do"/>';">     
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='HCL Emergencias' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Nota Internacion' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Historia Clinica' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DiagnosticosCIE10' onclick="document.adicionar.action='<c:url value="/AtenderPaciente.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='SolicitudQuirofano' onclick="document.adicionar.action='<c:url value="/NuevoQuirofano.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SolicitudSangre' onclick="document.adicionar.action='<c:url value="/SolSangre.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Transferencia' onclick="document.adicionar.action='<c:url value="/Transferencia.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='AdmisionHospitalaria' onclick="document.adicionar.action='<c:url value="/AdmisionHosp.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='ProtocoloOperatorio' onclick="document.adicionar.action='<c:url value="/ProtocoloOpera.do"/>';"> 
  <input type="submit" name='accion' class="btn btn-info" value='Epicrisis' onclick="document.adicionar.action='<c:url value="/Epicrisis.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='ConsentimientoInformado' onclick="document.adicionar.action='<c:url value="/AdmisionHosp.do"/>';">   
 </c:if>
 
 <c:if test="${tipo_medico == '19'}">
   <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">  
   <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">  
 </c:if> 

 <c:if test="${tipo_medico == '20' and datos.edad >= 5}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
 </c:if>
 <c:if test="${tipo_medico == '20' and datos.edad < 5}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Atencion Integ.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
 </c:if>
 <c:if test="${tipo_medico == '21'}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Fisioterapia' onclick="document.adicionar.action='<c:url value="/CuadernoFisio.do"/>';">  
 </c:if>
 <c:if test="${tipo_medico == '33'}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Atencion Integ.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>
 <c:if test="${tipo_medico == '50' and datos.edad < 12}">
  <input type="submit" name='accion' class="btn btn-info" value='C13.Pediatria' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>
 <c:if test="${tipo_medico == '7'}">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Consulta Externa' onclick="document.adicionar.action='<c:url value="/Cuaderno1.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Prenatal-Parto-Puerperio' onclick="document.adicionar.action='<c:url value="/Cuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Planificacion Familiar' onclick="document.adicionar.action='<c:url value="/Cuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Atencion Integ.< 5 años' onclick="document.adicionar.action='<c:url value="/Cuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Internaciones' onclick="document.adicionar.action='<c:url value="/Cuaderno5.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Enfermeria' onclick="document.adicionar.action='<c:url value="/Cuaderno6.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Odontologia' onclick="document.adicionar.action='<c:url value="/Cuaderno7.do"/>';">  
  <input type="submit" name='accion' class="btn btn-primary" value='CV.Vacunas' onclick="document.adicionar.action='<c:url value="/Vacunas.do"/>';">
  <input type="submit" name='accion' class="btn btn-primary" value='C.Fisioterapia' onclick="document.adicionar.action='<c:url value="/CuadernoFisio.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='InternarPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionPaciente.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='DarAltaPaciente' onclick="document.adicionar.action='<c:url value="/PlanAccionI.do"/>';">
 </c:if>
 
<input type="submit" name='accion' class="btn btn-danger" value='Terminar'> 
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
 <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
<input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
<input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>  
<input type="hidden" name="swemerg"         value='1'>
</form>