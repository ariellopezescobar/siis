<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="tabla" border="0"><tr>
<td><form name=formaC1 method=post action='<c:url value="/Laboratorio.do"/>'>
     <td colspan="2">
      <div class="volver"><a class="btn btn-warning" href="javascript:document.formaC1.submit();">Retornar</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td></tr>
  </table>
  
<form name="adicionarcolegio" method="POST">
<center>
<table class="table table-striped table-bordered table-condensed table-responsive">     
  <tr style="font-size:12pt">
    <th colspan="3" align="center"><center>SELECCIONE LOS DATOS PARA LA INTERCONSULTA O EVALUACION</center></th>
  </tr>
  <tr>
    <td width="20%" valign="top"></td>
    <td width="60%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive">     
      <tr style="font-size:10pt">
       <td class="etiqueta">No. HCL - Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="5"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Sexo - Direccion</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/>&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></td>
      </tr> 
      <c:if test="${accion == 'InterConsulta'}">          
       <tr style="font-size:10pt">
        <td class="etiqueta">Consultorio <font color='red'>(*)</font> </td>	      
        <td>
          <SELECT NAME="id_consultori" onchange="javascript:document.adicionarcolegio.submit();">
	    <option value="">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	         <c:out value="${estado.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
        </td>
       </tr>
       <tr style="font-size:10pt">
        <td class="etiqueta">Medico <font color='red'>(*)</font> </td>
        <td style="font-size:10pt">
          <SELECT NAME="id_persona" >
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
      <tr style="font-size:10pt"><td class="etiqueta" > Fecha Consulta</td>	
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
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td></tr>
       </c:if>  
   </table>
   </td>
   <td width="20%" valign="top"></td>
  </td>
  </tr> 
</table>
</center>    
<center>
  <input type="submit" name='accion1' class="btn btn-success btn-lg" value='Aceptar' onclick="document.adicionarcolegio.accion1.value='Aceptar';
                                           document.adicionarcolegio.action='<c:url value="/GrabarPaciente.do"/>'">
</center>  
  
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name='paterno'         value='<c:out value="${datos.paterno}"/>'>
<input type="hidden" name='materno'         value='<c:out value="${datos.materno}"/>'>
<input type="hidden" name='nombre'          value='<c:out value="${datos.nombre}"/>'>
<input type="hidden" name='dia_r' 	    value='<c:out value="${dia_r}"/>'>
<input type="hidden" name='mes_r' 	    value='<c:out value="${mes_r}"/>'>
<input type="hidden" name='anio_r' 	    value='<c:out value="${anio_r}"/>'>
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
<input type="hidden" name="id_consultorio"  value=<c:out value="${id_consultorio}"/> >                  
<input type="hidden" name='id_estado'       value='<c:out value="${datos.id_estado}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
  
</form>