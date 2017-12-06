<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<table class="tabla" ><tr>
<td><form name=formaL1 method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaL1.submit();">Retornar</a></div></td>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='id_empresa'      value='<c:out value="${id_empresa}"/>'>
         <input type="hidden" name='id_carpeta'      value='<c:out value="${id_carpeta}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
         <input type="hidden" name="accion"          value='Reservar' >
         <input type="hidden" name="sw"              value='1' >
        
     </form></td>
 </tr>
  </table>
 

<form name="adicionarvigencia" method="POST" action='<c:url value="/ListarVigenciaAt.do"/>' >
 <center>
  <table class="table table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="4" bgcolor="#F2F2F2"><center>MODIFICAR REPORTE DIARIO DE PACIENTES CON ACCIDENTES DE TRABAJO</center></th>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> Num.Tramite:: </td>
       <td colspan="3"><input type="text" name="num" value="<c:out value="${pacvig.veces}"/>" maxlength="10" size="10" onblur='validar(num,"9")'/></td>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> NOMBRE Y APELLIDOS:: </td>
       <td ><input type="text" name="nombres" value="<c:out value="${pacvig.nombres}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> MATRICULA:: </td>
       <td ><input type="text" name="matricula" value="<c:out value="${pacvig.direccion}"/>" maxlength="20" size="20" />
          CI<input type="text" name="carnet" value="<c:out value="${pacvig.carnet}"/>" maxlength="20" size="20" readonly/></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> NOMBRE EMPRESA:: </td>
       <td ><input type="text" name="empresa" value="<c:out value="${pacvig.factor_riesgo}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> CODIGO:: </td>
       <td ><input type="text" name="codigop" value="<c:out value="${pacvig.codigo}"/>" maxlength="20" size="20"/></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> SECCION DE TRABAJO:: </td>
       <td ><input type="text" name="beneficiario" value="<c:out value="${pacvig.expedido}"/>" maxlength="50" size="50" placeholder="Seccion donde trabaja..."/></td>
       <td align="right" bgcolor="#F2F2F2"> NRO. PATRONAL:: </td>
       <td ><input type="text" name="patronal" value="<c:out value="${pacvig.id_estado}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2">ASCRITO POLICLINICO:: </td>
       <td ><input type="text" name="policlinico" value="<c:out value="${datopacv.paterno}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> CONSULTORIO:: </td>
       <td ><input type="text" name="consultorio" value="<c:out value="${datopacv.ocupacion}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> DIRECCION EMPRESA ZONA /<br> CALLE:: </td>
       <td ><input type="text" name="zona" value="<c:out value="${pacvig.ocupacion}"/>" maxlength="50" size="50" />
          <br><input type="text" name="calle" value="<c:out value="${pacvig.paterno}"/>" maxlength="50" size="35" />
        Nro::<input type="text" name="nropac" value="<c:out value="${pacvig.cadena11}"/>" maxlength="10" size="5" /></td>
       <td align="right" bgcolor="#F2F2F2"> TELEFONO:: </td>
       <td ><input type="text" name="telefono" value="<c:out value="${pacvig.registro}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> DATOS DEL ACCIDENTE:: </td>
       <td >No dias Baja::<input type="text" name="nrog" value="<c:out value="${pacvig.nro}"/>" maxlength="3" size="3" onblur='validar(nrog,"9")'/></td>
       <td align="right" bgcolor="#F2F2F2"> DIA :: </td>
        <td >
           <SELECT NAME="diai">
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
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> LUGAR DEL ACCIDENTE:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="documento" rows="2" cols="60" style="width: 100%"><c:out value = "${pacvig.documento}"  escapeXml="False" /></textarea></td>
    </tr> 
    <tr>
       <td align="right" bgcolor="#F2F2F2"> DIAGNOSTICO INICIAL:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%"><c:out value = "${pacvig.cadena3}"  escapeXml="False" /></textarea></td>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> OTROS DATOS DE IMPORTANCIA:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="otros" rows="2" cols="60" style="width: 100%"><c:out value = "${pacvig.cadena5}"  escapeXml="False" /></textarea></td>
    </tr>
  </table>
  
  </center>   
  <center>
    <input type="submit" name='accion' class="btn btn-primary btn-lg" value='ModificarDocumentoA' onclick="document.adicionarvigencia.action='<c:url value="/ListarVigenciaAt.do"/>';">  
  </center>
     <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'> 
     <input type="hidden" name='id_persona'       value='<c:out value="${id_persona}"/>'>
     <input type="hidden" name='id_vigencia'      value='<c:out value="${id_vigencia}"/>'>
     <input type="hidden" name='id_consultorio'   value='<c:out value="${id_consultorio}"/>'>
     <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
     
</form>
   
 
  

