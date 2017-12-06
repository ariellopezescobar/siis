<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ListarPacientesAtendidos.do"/>' >
<center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th bgcolor="#F2F2F2"><center>Mostrar Ambulatorio por fecha</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio:  </td>
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
	        <td align="right" bgcolor="#F2F2F2">Fecha final:  </td>
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
 
  <c:if test="${tipo_medico == '7'}">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="3"><center><font size=2>SELECCIONE PERSONAL </font></center></th>
      </tr>
      <tr>
        <td align="right">Personal </td>      
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --
       	    <c:forEach var="pas" items="${listaPersonas}">
    	      <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${pas.nombres}"/>__{<c:out value="${pas.id_persona}"/>}<c:out value="${pas.consultorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
   </table>
   <center>
    <input type="submit" name="boton" class="btn btn-success" value="Resumen">
    <input type="submit" name="boton" class="btn btn-primary" value="ResumenEnfer">
    <input type="submit" name="boton" class="btn btn-primary" accion="Adolecentes"  value="Adolecentes">
    <input type="submit" name="boton" class="btn btn-primary" accion="ResumenSUMI"  value="ResumenSUMI">
    <input type="submit" name="boton" class="btn btn-primary" accion="ResumenMedPrestacion"  value="ResumenMedPrestacion">
    <input type="submit" name="boton" class="btn btn-primary" accion="ResumenPrestacion"  value="ResumenPrestacion">
    <br>
    <input type="submit" name="boton" class="btn btn-warning" accion="ResumenMedPrestacion"  value="ResumenMedicaPartos-Cesareas">
    <input type="submit" name="boton" class="btn btn-warning" accion="ResumenPrestacion"  value="ResumenPrestacionPartos-Cesareas">
    <input type="submit" name="boton" class="btn btn-warning" accion="ResumenSinMedicamentos"  value="PrestacionesSinMedicamentos">
    <input type="submit" name="boton" class="btn btn-warning" accion="ResumenDuplicadas"  value="PrestacionesDuplicadas">
    <input type="hidden" name="id_persona"              value='<c:out value="${id_persona}"/>' >         
    <input type="hidden" name="id_consultorio"          value='<c:out value="${lista.id_consultorio}"/>' >
    <input type="hidden" name="id_paciente"             value='<c:out value="${lista.id_paciente}"/>' >      
   </center>
  </c:if>
  <c:if test="${tipo_medico == '10' or tipo_medico == '11' or tipo_medico == '12'}">
    <center>  
      <input type="submit" name="boton" class="btn btn-primary" value="Resumen Laboratorios">
    </center>  
  </c:if>
  <br>
  <center>
    <input type="submit" name="boton" class="btn btn-info" value="ResumenPrestaciones">
    <input type="submit" name="boton" class="btn btn-info" value="AdultoMayor">
    <input type="submit" name="boton" class="btn btn-info" value="Neonatos">
    <input type="submit" name="boton" class="btn btn-info" value="Pediatricos">
    <input type="submit" name="boton" class="btn btn-info" value="Mujer">
    
  </center>
</form>


<%@ include file="../Inferior.jsp" %>