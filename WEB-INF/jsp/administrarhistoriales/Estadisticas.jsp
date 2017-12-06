<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/Estadisticas.do"/>' >
<center>
  <table class="formulario">
    <tr>
      <th> ESTADISTICAS PRODUCCION DE SERVICIOS</th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <legend>Introduzca Fechas</legend>
            <table>	  
            <tr><td class="etiqueta" > Fecha Inicio</td>
               <td class="etiqueta">::</td>	
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
              
	      <tr><td class="etiqueta" > Fecha Final</td>
               <td class="etiqueta">::</td>	
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
  


  <table class="formulario" align="center" >
      <tr>
        <td class="etiqueta">Establecimiento <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td><SELECT NAME="id_hospital" onchange="javascript:document.forma.submit();">
            <option value="0">-- Todos --</option>
       	    <c:forEach var="estab" items="${listarestable}">
                  <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if> > 
                      <c:out value="${fn:substring(estab.establecimiento,0,22)}"/>__<c:out value="${estab.cod_esta}"/>
                  </option>
	    </c:forEach>
          </SELECT>
       </td>
      </tr> 
      <tr>
        <td class="etiqueta">Servicio/Especialidad <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td><SELECT NAME="id_consultorio" onchange="javascript:document.forma.submit();">
            <option value="0">-- Todos --</option>
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_consultorio!=11 and estado.id_consultorio!=12 and estado.id_consultorio!=15 and estado.id_consultorio!=71 and estado.id_consultorio!=46 and estado.id_consultorio!=9 and estado.id_consultorio!=61 and estado.id_consultorio!=42}">
                    <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
                       <c:out value="${estado.consultorio}"/>
                    </option> 
                </c:if> 
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
           <input type="hidden" name='tipo_medico'      value='<c:out value="${tipo_medico}"/>'>
           <input type="hidden" name="resvig"           value='<c:out value="${resvig}"/>'>
       </td>
       </tr>    
      <tr>
        <td class="etiqueta">Personal <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td><SELECT NAME="id_persona">
            <option value="0">-- Todos --</option>
       	    <c:forEach var="pas" items="${listaPersonas}">
    	      <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${pas.nombres}"/>__{<c:out value="${pas.id_persona}"/>-<c:out value="${pas.cod_esta}"/>}<c:out value="${pas.consultorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
   </table>
   <center>
    <input type="submit" name="boton" class="buscar"    value="Produccion/Especialidad">
    <input type="submit" name="boton" class="buscar"    value="Produccion/Medico">
    <input type="hidden" name="id_persona"              value='<c:out value="${id_persona}"/>' >         
    <input type="hidden" name="id_consultorio"          value='<c:out value="${id_consultorio}"/>' >
    <input type="hidden" name="id_paciente"             value='<c:out value="${id_paciente}"/>' >      
   </center>
  <br>

</form>


<%@ include file="../Inferior.jsp" %>