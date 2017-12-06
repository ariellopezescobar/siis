<%@include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<div><a class="btn btn-success" href='ListarPacientes.do'>Volver</a></div>

<form name="adicionapaciente" method="POST">
<center>    
<table> 
 <tr>
   <td width="10%"><td>
 <td width="80%">  
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="2"  bgcolor="#F2F2F2"><center>DATOS PACIENTE DE FARMACIA</center></th>
  </tr>
   <tr style="font-size:10pt">
       <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/>____<c:out value = "${datos.nro_registro}"/>____<c:out value = "${datos.nro}"/></td>
      </tr>
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Nombres</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
     <!-- <tr>
        <td align="right">Fecha de Nacimiento</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>	                 
      </tr>  
      <tr>    
        <td align="right">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  -->
        <tr style="font-size:10pt">
         <td align="right"  bgcolor="#F2F2F2">Edad</td>      
         <td style="font-size: 20pt; color: red"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</td>
       </tr>   

      
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Centro  </td>	      
        <td>
          <SELECT NAME="sig_centro" onchange="javascript:document.adicionapaciente.submit();">
            <c:forEach var="listacentro" items="${listarCentros}">
               <option value="<c:out value="${listacentro.cod_esta}"/>" <c:if test="${listacentro.cod_esta == cod_esta}">selected</c:if>>
	         <c:out value="${listacentro.consultorio}"/>__<c:out value="${listacentro.descripcion}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='codesta1'        value='<c:out value="${listacentro.cod_esta}"/>'>
           <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
           <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
           <input type="hidden" name='accionest'       value='Establecimiento'>
       </td>
       </tr>
       
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Especialidad  </td>      
        <td>
          <SELECT NAME="id_consultorioa" onchange="javascript:document.adicionapaciente.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <c:if test="${estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	          <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	             <c:out value="${estado.consultorio}"/>__<c:out value="${estado.descripcion}"/>
                  </option>
               </c:if>  
            </c:forEach>
           </SELECT>	
           
           <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='cod_esta'        value='<c:out value="${cod_esta}"/>'>
           <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
           <input type="hidden" name='accione'         value='especialidad'>
       </td>
       </tr>
        <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Medico  </td>
        <td>
          <SELECT NAME="id_persona" >
            <option value="">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.codigoprof}"/>..<c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Servicio  </td>	      
        <td>
          <SELECT NAME="servicio" >
            <c:forEach var="listaserv" items="${listarServicio}">
               <option value="<c:out value="${listaserv.descripcion}"/>" <c:if test="${listaserv.descripcion == descrip}">selected</c:if>>
	         <c:out value="${listaserv.consultorio}"/>__<c:out value="${listaserv.descripcion}"/>
               </option>
            </c:forEach>
           </SELECT>	
       </td>
     </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Tipo  </td>
        <td>
          <SELECT NAME="id_tipo" >
              <option value="0">Consulta Externa</option>
	      <option value="1">Internado</option>
	  </SELECT>	      
        </td>
      </tr> 
       
       <tr style="font-size:10pt"><td align="right"  bgcolor="#F2F2F2"> Fecha Consulta</td>
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
 </table>
 </center>   
 </td>
  <td width="10%"></td>
  </tr>
  </table>
 <center>
  <input type="submit" name='accion' class="btn btn-primary btn-lg" value='Aceptar' onclick="document.adicionapaciente.accion.value='Siguiente';
                                           document.adicionapaciente.action='<c:url value="/ListarPacFarmacia.do"/>'">
 </center>
  
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name=accion'           value='<c:out value="${accion}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='paterno'         value='<c:out value="${datos.paterno}"/>'>
 <input type="hidden" name='materno'         value='<c:out value="${datos.materno}"/>'>
 <input type="hidden" name='nombre'          value='<c:out value="${datos.nombre}"/>'>
 <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
 <input type="hidden" name='id_documento'    value='<c:out value="${buscarDocumento.id_documento}"/>'>

</form> 