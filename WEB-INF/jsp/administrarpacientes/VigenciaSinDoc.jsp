<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<table class="tabla" ><tr>
<td><form name=formaL1 method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
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
      <th colspan="4" bgcolor="#F2F2F2"><center>REPORTE DIARIO DE PACIENTES SIN DOCUMENTOS</center></th>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> Num.Tramite:: </td>
       <td colspan="3"><input type="text" name="num" value="0" maxlength="10" size="10" onblur='validar(num,"9")'/></td>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> NOMBRE Y APELLIDOS:: </td>
       <td ><input type="text" name="nombres" value="<c:out value="${datos.nombres}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> MATRICULA:: </td>
       <td ><input type="text" name="matricula" value="<c:out value="${datopacv.registro}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> BENEFICIARIO:: </td>
       <td ><input type="text" name="beneficiario" value="<c:out value="${datos.nombres}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> CODIGO:: </td>
       <td ><input type="text" name="codigop" value="<c:out value="${codigo}"/>" maxlength="20" size="20"/></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> EMPRESA:: </td>
       <td ><input type="text" name="empresa" value="<c:out value="${empresa.empresa}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> NRO. PATRONAL:: </td>
       <td ><input type="text" name="patronal" value="<c:out value="${empresa.cod_patronal}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2">ASCRITO POLICLINICO:: </td>
       <td ><input type="text" name="policlinico" value="<c:out value="${datopacv.paterno}"/>" maxlength="50" size="50" /></td>
       <td align="right" bgcolor="#F2F2F2"> CONSULTORIO:: </td>
       <td ><input type="text" name="consultorio" value="<c:out value="${datopacv.ocupacion}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> ATENDIDO EN:: </td>
       <td >
           <SELECT NAME="id_consultorio" >
	    <option value="0">-- Seleccione Servicio--</option>
            <c:forEach var="estado" items="${listarCargos}">
                <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	           <c:out value="${estado.consultorio}"/>
                </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='servicio'   value='<c:out value="${estado.consultorio}"/>'> 
       </td>
       <td align="right" bgcolor="#F2F2F2"> TRANSFERENCIA A:: </td>
       <td >
           <SELECT NAME="id_hospital">
            <option value="0">-- Seleccione Estab--
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
          <input type="hidden" name='hospital'   value='<c:out value="${estab.establecimiento}"/>'> 
       </td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> ZONA /<br> CALLE:: </td>
       <td ><input type="text" name="zona" value="<c:out value="${datopacv.expedido}"/>" maxlength="50" size="50" />
          <br><input type="text" name="calle" value="<c:out value="${datopacv.seguro}"/>" maxlength="50" size="25" />
       Nro::<input type="text" name="nropac" value="0" maxlength="10" size="4" /></td>
       <td align="right" bgcolor="#F2F2F2"> TELEFONO:: </td>
       <td ><input type="text" name="telefono" value="<c:out value="${datos.telefono}"/>" maxlength="50" size="50" /></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> DOCUMENTOS A PRESENTAR:: </td>
       <td bgcolor="blue" ><textarea name="documento" rows="3" cols="30" style="width: 100%" placeholder="Documentos a presentar..."></textarea></td>
       <td align="right" bgcolor="#F2F2F2"> HASTA EL DIA:: </td>
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
       </td>
    </tr>   
     <tr>
      <th colspan="4">DATOS DEL GARANTE</th>
    </tr>
    <tr>
       <td align="right" bgcolor="#F2F2F2"> NOMBRE Y APELLIDO:: </td>
       <td ><input type="text" name="nombreg" value="" maxlength="50" size="50" placeholder="Nombres del garante..."/></td>
       <td align="right" bgcolor="#F2F2F2"> MATRICULA:: </td>
       <td ><input type="text" name="matricula" value="<c:out value="${datos.nro_registro}"/>" maxlength="20" size="20" />
          CI<input type="text" name="carnet" value="<c:out value="${datos.carnet}"/>" maxlength="20" size="20" readonly/></td>
    </tr>   
     <tr>
       <td align="right" bgcolor="#F2F2F2"> EMPRESA:: </td>
       <td ><input type="text" name="empresag" value="" maxlength="50" size="50" placeholder="Empresa del garante..."/></td>
       <td align="right" bgcolor="#F2F2F2"> NRO. PATRONAL:: </td>
       <td ><input type="text" name="patronalg" value="" maxlength="50" size="50" placeholder="Patronal del garante..."/></td>
    </tr>   
    <tr>
       <td align="right" bgcolor="#F2F2F2"> ZONA / CALLE:: </td>
       <td ><input type="text" name="zonag" value="" maxlength="50" size="20" placeholder="Zona del garante..."/>--<input type="text" name="calleg" value="" maxlength="50" size="20" placeholder="Calle del garante..."/>--<input type="text" name="nrog" value="" maxlength="10" size="5" placeholder="Nro..."/></td>
       <td align="right" bgcolor="#F2F2F2"> TELEFONO:: </td>
       <td ><input type="text" name="telefonog" value="" maxlength="50" size="50" placeholder="Telefono del garante..."/></td>
    </tr>  
    <tr>
       <td align="right" bgcolor="#F2F2F2">FIRMA DEL GARANTE:: </td>
       <td ><input type="text" name="firmag" value="" maxlength="50" size="50" placeholder="Firma garante..." readonly/></td>
       <td align="right" bgcolor="#F2F2F2"> C.I.:: </td>
       <td ><input type="text" name="cig" value="" maxlength="50" size="50" placeholder="Carnet garante..."/></td>
    </tr>   
    
  </table>
  
  </center>   
  <center>
    <input type="submit" name='accion' class="btn btn-primary btn-lg" value='GuardarDocumento' onclick="document.adicionarvigencia.action='<c:url value="/ListarVigenciaAt.do"/>';">  
  </center>
     <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'> 
     <input type="hidden" name='id_persona'       value='<c:out value="${id_persona}"/>'>
     <input type="hidden" name='id_consultorio'   value='<c:out value="${id_consultorio}"/>'>
     <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
     
</form>
   
 
  

