<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ReporteCIE10.do"/>' >
 <center>
   <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th><center>BUSQUEDA DE DATOS</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive">     
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
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
                <td align="right" bgcolor="#F2F2F2"><b> Fecha Final</b></td>	
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
              <tr>    
                <td align="right" bgcolor="#F2F2F2">Edad Inicial </td>    	      
                <td>Años<input type="text" name="num1" value="0" maxlength="3" size="3" onblur='validar(num1,"9")'/>Mes<input type="text" name="numes1" value="0" maxlength="2" size="2" onblur='validar(numes,"9")'/></td>
              </tr> 
              <tr>    
                <td align="right" bgcolor="#F2F2F2">Edad Final </td>          
                <td>Años<input type="text" name="num2" value="0" maxlength="3" size="3" onblur='validar(num2,"9")'/>Mes<input type="text" name="numes2" value="0" maxlength="2" size="2" onblur='validar(numes,"9")'/></td>
              </tr> 
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <c:if test="${tipo_medico == '7' }">
   <c:if test="${rol != '36' }">  
   <center>
    <input type="submit" name="boton" class="btn btn-primary" value="CEmerg">
    <input type="submit" name="boton" class="btn btn-primary" value="C1">
    <input type="submit" name="boton" class="btn btn-primary" value="C2">
    <input type="submit" name="boton" class="btn btn-primary" value="C3">
    <input type="submit" name="boton" class="btn btn-primary" value="C4">
    <input type="submit" name="boton" class="btn btn-primary" value="C7">
   </center>
   </c:if>
  <table class="formulario" align="center" >
      <tr>
        <th colspan="3"><font size=2>SELECCIONE SERVICIO Y PERSONAL </font></th>
      </tr>
      <!--
      <tr>
      <td class="etiqueta">Servicio  </td>
        <td class="etiqueta">::</td>	      
         <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.forma.submit();">
	    <option value="0">-- Todos --</option>
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_consultorio!=28 and estado.id_consultorio!=21 and estado.id_consultorio!=33 and estado.id_consultorio!=26 and estado.id_consultorio!=38 and estado.id_consultorio!=34 and estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>
	            </option>
                </c:if>      
	    </c:forEach>
           </SELECT>	
        </td>
      </tr>
      -->
      <tr>
        <td >Personal  </td>	      
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --
       	    <c:forEach var="pas" items="${listaPersonas}">
    	      <option value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${pas.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
   </table>
   </center>
   <center>
    <input type="submit" name="boton" class="btn btn-primary" value="Edades">
    <input type="submit" name="boton" class="btn btn-primary" value="S/Personal">
    <c:if test="${rol != '36' }">  
       <input type="submit" name="boton" class="btn btn-primary" value="Ingreso Internados">
       <input type="submit" name="boton" class="btn btn-primary" value="Egreso Internados">
    </c:if>
    <input type="submit" name="boton" class="btn btn-primary" value="Buscar">
    <input type="hidden" name="id_persona"              value=<c:out value="${id_persona}"/> >         
    <input type="hidden" name="id_consultorio"          value=<c:out value="${lista.id_consultorio}"/> >         
    <input type="hidden" name="id_paciente"             value=<c:out value="${lista.id_paciente}"/> >      
   </center>
  </c:if>
  <c:if test="${tipo_medico != '7' }">
   <center>
     <input type="submit" name="boton" class="btn btn-primary" value="Edades">
     <input type="submit" name="boton" class="btn btn-primary" value="S/Personal">
     <input type="submit" name="boton" class="btn btn-primary" value="Buscar">
     <input type="hidden" name="id_persona"              value=<c:out value="${id_persona}"/> >         
     <input type="hidden" name="id_consultorio"          value=<c:out value="${lista.id_consultorio}"/> >         
     <input type="hidden" name="id_paciente"             value=<c:out value="${lista.id_paciente}"/> >      
   </center>
  </c:if>
</form>


<%@ include file="../Inferior.jsp" %>