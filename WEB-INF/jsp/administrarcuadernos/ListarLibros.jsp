<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/VerCuaderno7.do"/>' >
<center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th bgcolor="#F2F2F2"><center> Buscar Estadisticas - Cuadernos por Fecha</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive">      
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio::  </td>
                <td ><SELECT NAME="diai">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesi">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="anioi">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horai">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutoi">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final::  </td>
                <td ><SELECT NAME="diaf">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesf">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="aniof">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horaf">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutof">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
	      </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </center>
  <center>
 <c:if test="${tipo_medico == '1'}">
  <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">   
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
    -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 4' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  
</c:if>
<c:if test="${tipo_medico == '5'}">
  <!--<input type="submit" name='accion' class="btn btn-info" value='Micronutrientes' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='UNI Consolidado' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
    -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  
</c:if>

<c:if test="${tipo_medico == '2'}">
   <input type="submit" name='accion' class="btn btn-info" value='Informe SNIS' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Registrar Actividades' onclick="document.forma.action='<c:url value="/ReporteOdonMensual.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Informe Mensual de Actividades' onclick="document.forma.action='<c:url value="/ReporteOdonMensual.do"/>';">  
   
   <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">   
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 7' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">  
      -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 4' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
 
</c:if> 

<c:if test="${tipo_medico == '3'}">
   <!--<input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">      
   <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
     -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  
   
</c:if> 

<c:if test="${tipo_medico == '4'}">
    <!--<input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">   
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
     -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';"> 
  <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
</c:if> 

<c:if test="${tipo_medico == '6'}">
     <!--<input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
     -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  

</c:if> 
<c:if test="${tipo_medico == '13'}">
   <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
</c:if> 

<c:if test="${tipo_medico == '14'}">
  <!-- <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
    --> 
  <div class=titulo> Cuadernos SNIS 2014</div>
   
   <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
 
</c:if> 
<c:if test="${tipo_medico == '16'}">
   <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
   <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
   <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
      -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  
</c:if> 

<c:if test="${tipo_medico == '11'}">
   <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Ecografia' onclick="document.forma.action='<c:url value="/VerEcografias.do"/>';">    
</c:if> 

<c:if test="${tipo_medico == '15'}">
   <c:if test="${codesta!= '700241'}">   
       <input type="submit" name='accion' class="btn btn-info" value='ConsultaExterna' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">   
   </c:if>    
  <input type="submit" name='accion' class="btn btn-info" value='ExportarExcel' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">   
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
</c:if> 

<c:if test="${tipo_medico == '17'}">
<input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
<input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
<input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
<input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
<input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
</c:if> 

<c:if test="${tipo_medico == '23'}">
<input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
</c:if> 

<c:if test="${tipo_medico == '18'}">
  <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';"> -->  
  <c:if test="${especialidad == '4'}">
     <input type="submit" name='accion' class="btn btn-info" value='C.Cirugias' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">     
  </c:if>     
  <!--<input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
    
  
  <div class=titulo> Cuadernos SNIS 2014 Primer Nivel</div>
    -->
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoEmergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 4' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
  <!--
  
 <div class=titulo> Cuadernos SNIS 2014 Segundo Nivel</div>
 
  <input type="submit" name='accion' class="btn btn-info" value='ServicioEmergencia' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='ConsultaExterna-Medicina' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='ConsultaExterna-Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Ginecologia-Obstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  -->
</c:if>


<c:if test="${tipo_medico == '20'}">
  <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">     
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
    
  <div class=titulo> Cuadernos SNIS 2014</div>
    -->
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
 
 </c:if>
 <c:if test="${tipo_medico == '19'}">
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
 </c:if>
 
<c:if test="${tipo_medico == '21'}">
  <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">   -->
  <input type="submit" name='accion' class="btn btn-info" value='C.Fisioterapia' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
</c:if>

<c:if test="${tipo_medico == '27'}">
  <input type="submit" name='accion' class="btn btn-info" value='C.Rehabilitacion' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
</c:if>

<c:if test="${tipo_medico == '22'}">
  <!--<input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">   -->
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
 </c:if>
 
 <c:if test="${tipo_medico == '23'}">
     <input type="submit" name='accion' class="btn btn-info" value='Internacion' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
  <input type="submit" name='accion' class="btn btn-info" value='C-13.Consulta Ext.Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Censo Diario' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
 </c:if>
 <c:if test="${tipo_medico == '24'}">
  <input type="submit" name='accion' class="btn btn-info" value='Informe Diario Consulta Externa' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">        
  <input type="submit" name='accion' class="btn btn-info" value='Informe Diario Internacion' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">         
   
  <c:if test="${id_consultorio == '53' or id_consultorio == '58' or id_consultorio == '59' or id_consultorio == '60'}">
        <input type="submit" name='accion' class="btn btn-info" value='C.Rehabilitacion' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
  </c:if>  
  <!--
  <input type="submit" name='boton' class="btn btn-info" value='SSPAM' onclick="document.forma.action='<c:url value="/ReporteCIE10.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
    -->
  <div class=titulo> Cuadernos SNIS 2014</div>
    
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 4' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">      
    
  
 <div class=titulo> Busqueda de Historiales Pasados </div>
 
 <input type="submit" name='accion' class="btn btn-default" value='ListarHistoriales' onclick="document.forma.action='<c:url value="/ListarPacientes.do"/>';">  
 
</c:if>

 <c:if test="${tipo_medico == '50'}">
  <input type="submit" name='accion' class="btn btn-info" value='C13.Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
 </c:if>
 
<c:if test="${rol== '36'}">
    <input type="submit" name='accion' class="btn btn-info" value='CuadernoEmergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
    <input type="submit" name='accion' class="btn btn-info" value='Produccion/Medico' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
    <input type="submit" name='accion' class="btn btn-info" value='Censo Diario' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
    <div class=titulo> Busqueda de Historiales Pasados </div>
 
 <input type="submit" name='accion' class="btn btn-info" value='ListarHistoriales' onclick="document.forma.action='<c:url value="/ListarPacientes.do"/>';">  
</c:if>

<c:if test="${rol!= '36'}">
    
<c:if test="${tipo_medico == '7'}">
  <!--<c:if test="${codesta!= '400015'}">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Asegurados(C1)' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">      

   <input type="submit" name='accion' class="btn btn-info" value='CodigoControl' onclick="document.forma.action='<c:url value="/CodigoControl.do"/>';"> 

  <input type="submit" name='accion' class="btn btn-info" value='Emergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  

  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 2' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 3' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 4' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">     
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno No 7' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Fisioterapia' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Solo Partos' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='Solo Crecimiento' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Solo Consulta<5' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='P/T Desnutricion Aguda' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Nuevos DA P/T' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 2Crecimiento' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 2Consultas' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
    
  </c:if>
   -->

  <div class=titulo> Cuadernoss SNIS 2014 Primer Nivel</div>
  
  
  <input type="submit" name='accion' class="btn btn-info" value='Registrar Actividades' onclick="document.forma.action='<c:url value="/ReporteOdonMensual.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoEmergencias' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 1' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Dentro' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo2Fuera' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Prenatal-Parto-Puerperio-PF' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 4' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 5' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Actividades Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='VacunasDentro' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='VacunasFuera' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Vacunas2' onclick="document.forma.action='<c:url value="/VerVacunas.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.Fisioterapia' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='Cuaderno Ecografia' onclick="document.forma.action='<c:url value="/VerEcografias.do"/>';">    
  <c:if test="${codesta== '400009'}"> 
      <input type="submit" name='accion' class="btn btn-info" value='Solo Crecimiento' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
      <input type="submit" name='accion' class="btn btn-info" value='Solo Partos' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">    
  </c:if>
  <c:if test="${codesta== '400007'}"> 
      <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 2Crecimiento' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
      <input type="submit" name='accion' class="btn btn-info" value='CuadernoNo 2Consultas' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  </c:if>
  
  <div class=titulo> Cuadernos SNIS Primer Nivel EXCEL</div>
  
  <input type="submit" name='accion' class="btn btn-success" value='C.Prenatal-Parto-Puerperio-PF-xls' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
    
  <c:if test="${codesta!= '400011' and codesta!= '400015' and codesta!= '400010' and codesta!= '400007' and codesta!= '400011'}">  
    
 <div class=titulo> Cuadernos SNIS 2014 Segundo Nivel</div>
 
  <input type="submit" name='accion' class="btn btn-info" value='ServicioEmergencia' onclick="document.forma.action='<c:url value="/VerCemergencias.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='ConsultaExterna-Medicina' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='ConsultaExterna-Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Ginecologia-Obstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
    
   </c:if>
  <div class=titulo> Reportes SNIS 301 - cuadernos 2do nivel</div>
  
  <input type="submit" name='accion' class="btn btn-info" value='Exportar SNS' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SNIS Consulta Externa' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SNIS Consultas Prenatales' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SNIS Consultas Anticoncepcion' onclick="document.forma.action='<c:url value="/VerCuaderno3.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='SNIS Dental' onclick="document.forma.action='<c:url value="/VerCuaderno7.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Atencion<5años' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Resumen Dental' onclick="document.forma.action='<c:url value="/ReporteOdonMensual.do"/>';">  

  <input type="submit" name='accion' class="btn btn-info" value='Consulta Externa' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Ginecologia' onclick="document.forma.action='<c:url value="/VerCuaderno2.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Indicadores Hospitalarios' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
  <input type="submit" name='accion' class="btn btn-info" value='Produccion/Medico' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
  <input type="submit" name='accion' class="btn btn-info" value='Censo Diario' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">       
  <input type="hidden" name='acc'      value='2'>
   
  <!--
  <c:if test="${tipo == '3'}">
  <div class=titulo> Cuadernos SNIS 3er. Nivel</div>
  
  <input type="submit" name='accion' class="btn btn-info" value='Cuadernos' onclick="document.forma.action='<c:url value="/VerCuadernos.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-1.Emergencias' onclick="document.forma.action='<c:url value="/VerCuaderno6.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-2.Consulta Externa' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-3.Consultas Odontologicas' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-4.Internaciones' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-5.Internaciones U.T.I.' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-6.EmergenciasGineObstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-7.Ginecologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-8.Obstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-9.InternacionGineObstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-10.PlanificacionFamiliar' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-11.Consulta Ext.Neonatologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-12.Internacion Neonatologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-13.Consulta Ext.Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno4.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-14.Internacion Pediatria' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-15.Nutricion Desarrollo' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-16.Enfermeria Consulta Ext.' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-17.Enfermeria' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-18.Hematologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-19.Analisis Clinico' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-20.Serologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-21.Bacterologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-22.Uroanalisis Coproparasitologico' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-23.Unidad Transfucional' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-24.Fisioterapia' onclick="document.forma.action='<c:url value="/VerCuadernoFisio.do"/>';">      
  <input type="submit" name='accion' class="btn btn-info" value='C-25.Radiologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-26.Ecografia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-27.Cito-Histopatologico' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-28.Citopatologia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-29.Anatomia Patologica' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-30.Quirofano Central' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-31.Promosion de Salud' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-32.Vigilancia Epidemiologica' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-33.Quirofano GineObstetricia' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-34.Consulta Ext. y Vigil. Epidem.' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C-35.Infecciones Intrahospitalarias' onclick="document.forma.action='<c:url value="/VerCuaderno1.do"/>';">  
  </c:if>
  -->
  <div class=titulo> Control de Calidad de Datos</div>
  
  <input type="submit" name='accion' class="btn btn-info" value='O80>C.2' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.2>O80' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='PC42>C.2' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.2>PC42' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='PC64>C.2' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.2>PC64' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Z34>C.2' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.2>Z34' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';"> 
  <input type="submit" name='accion' class="btn btn-info" value='Z39>C.2' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.2>Z39' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">    
  <input type="submit" name='accion' class="btn btn-info" value='Z301>C.3' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.3>Z301' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Z301>DIU' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='PC23>C.3' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.3>PC23' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='PC23>DEPO' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='Z305>C.3' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">
  <input type="submit" name='accion' class="btn btn-info" value='C.3>Z305' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Z124>C.3' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='C.3>Z124' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
  <input type="submit" name='accion' class="btn btn-info" value='Segun Medicamento' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';">  
   
   
 <div class=titulo> Busqueda de Historiales Pasados </div>
 
 <input type="submit" name='accion' class="btn btn-info" value='ListarHistoriales' onclick="document.forma.action='<c:url value="/ListarPacientes.do"/>';">  
</c:if> 
</c:if>

<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>

  </center>
</form>


<%@ include file="../Inferior.jsp" %>
