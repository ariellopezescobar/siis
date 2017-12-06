<%@include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Modificanndo Pacientes</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Agregandoo Pacientes</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Eliminando Pacientes</div>
</c:if>
<c:if test="${accion == 'Afiliar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Afiliar Paciente a SUMI</div>
</c:if>
<c:if test="${accion == 'Desafiliar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Desafiliar Paciente de SUMI</div>
</c:if>

<c:if test="${accion == 'Cambiar'}">
  <div class="form-control" style="font-size:15pt" align="center"> Cambiar de Consultorio</div>
</c:if>

<div><a class="btn btn-warning" href='ListarPacientes.do'>Volver</a></div>

<table class="table table-striped table-condensed table-responsive">
 <tr>   
 <td valign="top" width="25%">
 <!--
 <table class="formulario" border="1">
     <tr>
         <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM.submit();">Agregar Dependientes</a></div>
             <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >
             <input type="hidden" name="id_pacientej" value=<c:out value="${id_paciente}"/> >
             <input type="hidden" name="accion" value='Modificar' >
             <input type="hidden" name="sw" value='1' >
           </td>
         </form>
      </tr>
</table>        
-->  
<c:if test="${tipoestab != 'T' }">   
<table class="table table-condensed table-responsive">     
    <tr>
       <th colspan="4">LISTA DEPENDIENTES </th>
    </tr>
    <tr>
    <th style="font-size:8pt"> No </th>
    <th style="font-size:8pt"> NOMBRES </th>
    <th style="font-size:8pt"> Fecha <br>Nacim.</th>                
    <th style="font-size:8pt"> Parentesco </th>                
    </tr>  
    <c:forEach var="lista" items="${listaPacientesD}" varStatus="contador">
      <c:if test="${contador.count == 1}">
          <tr>
           <td style="font-size:8pt"><c:out value="${contador.count}"/></td>  
           <td style="font-size:8pt"><c:out value="${lista.cadena1}"/></td>   
           <td style="font-size:8pt"><fmt:formatDate value="${lista.fecha_ini}" pattern='dd/MM/yyyy'/></td>
           <td style="font-size:8pt;color:blue">(ID) Titular</td>       
          </tr>  
      </c:if>
      <c:if test="${lista.suma10 != 1}">
           <tr>
           <td style="font-size:8pt"><c:out value="${contador.count+1}"/></td>  
           <td style="font-size:8pt"><c:out value="${lista.cadena4}"/></td>   
           <td style="font-size:8pt"><fmt:formatDate value="${lista.fecha_fin}" pattern='dd/MM/yyyy'/></td>
           <td style="font-size:8pt;color:red">INACTIVO</td>  
           </tr>
     </c:if>  
     <c:if test="${lista.suma10 == 1}">
          <tr>
           <td style="font-size:8pt"><c:out value="${contador.count}"/></td>  
           <td style="font-size:8pt"><c:out value="${lista.cadena4}"/></td>   
           <td style="font-size:8pt"><fmt:formatDate value="${lista.fecha_fin}" pattern='dd/MM/yyyy'/></td>
           <c:if test="${lista.suma9 == 2}">
               <td style="font-size:8pt;">Esposo</td>       
           </c:if>
           <c:if test="${lista.suma9 == 3}">
               <td style="font-size:8pt;">(2)1er Hijo</td>       
           </c:if>
           <c:if test="${lista.suma9 == 4}">
               <td style="font-size:8pt;">(3)2do Hijo</td>       
           </c:if>
           <c:if test="${lista.suma9 == 5}">
               <td style="font-size:8pt;">(4)3er Hijo </td>       
           </c:if>
           <c:if test="${lista.suma9 == 6}">
               <td style="font-size:8pt;">(5)4to Hijo </td>       
           </c:if>
           <c:if test="${lista.suma9 == 16}">
               <td style="font-size:8pt;">(52)1ra Hija </td>       
           </c:if>
           <c:if test="${lista.suma9 == 17}">
               <td style="font-size:8pt;">(53)2da Hija </td>       
           </c:if>
           <c:if test="${lista.suma9 == 18}">
               <td style="font-size:8pt;">(54)3ra Hija </td>       
           </c:if>
           <c:if test="${lista.suma9 == 19}">
               <td style="font-size:8pt;">(55)4ta Hija </td>       
           </c:if>
     </c:if>  
   </c:forEach> 
 </table>     
 </c:if>
 </td>
 <!--fin de tabla carpetas familiares-->
 <td valign="top" width="50%">
<form name="adicionapaciente" method="POST" action='<c:url value="/ConfirmarPaciente.do"/>' >
<center>    
<table class="table table-striped table-bordered table-condensed table-responsive" width="20%">
  <tr>
    <th colspan="3" style="font-size:10pt"><center>CONFIRME LOS DATOS PACIENTE</center></th>
  </tr>
   <c:if test="${accion == 'Adicionar' or accion == 'Modificar' or accion == 'EliminarReserva' or accion == 'Eliminar'}">
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
       <c:if test="${cod_esta == '200010'}">
           <tr style="font-size:10pt">
            <td class="etiqueta">Nro Matricula</td>    
            <td style="font-size: 16pt; color: blue"><c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;<input type="text" name="codigo" value="<c:out value="${datos.nro}"/>" size="15" style="color:blue" readonly/><font color="red"></font></td>	                 
          </tr>
       </c:if>    
   </c:if>
     
     <c:if test="${accion == 'Reservar' and tipo_medico !='7'}"> 
      <tr style="font-size:10pt">    
        <td class="etiqueta">No. HCL / Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="5"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      
       <c:if test="${cod_esta == '200010'}">
           <tr style="font-size:10pt">
            <td class="etiqueta">Nro Matricula</td>    
            <td style="font-size: 16pt; color: blue"><c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;<input type="text" name="codigo" value="<c:out value="${datos.nro}"/>" size="15" style="color:blue" readonly/><font color="red"></font></td>	                 
          </tr>
       </c:if>    
  
       <c:if test="${datos.edad >= 5 and datos.edad < 10 and datos.id_estado == 'S'}">  
           <tr >
             <td class="etiqueta">Situacion</td>      
             <td style="font-size: 30pt; color: blueviolet">Verifiquer si el paciente sigue Seguro Ley 475 </td>
           </tr>  
       </c:if>
       
       <c:if test="${id_rol != '22' and id_rol != '34'}">
       <tr style="font-size:10pt">
        <td class="etiqueta">Serrvicio  </td>      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionapaciente.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <c:if test="${estado.id_cargo!=1 and estado.id_cargo!=33 and estado.id_cargo!=34}"> 
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
        <tr style="font-size:10pt">
        <td class="etiqueta">Medico  </td>
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
       <tr style="font-size:10pt">
            <td class="etiqueta">Tipo de Consulta </td>
            <td><SELECT NAME="tipoconsult">
                  <option value="0">Consulta Nueva</option>
                  <option value="1">Reconsulta 1ra</option>
                  <option value="2">Reconsulta 2da</option>
                  <option value="3">Reconsulta 3ra</option>
              </SELECT></td>
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
       
      <c:if test="${id_rol == '34'}">
       <tr style="font-size:10pt">
        <td class="etiqueta">Serrviicio  </td>      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionapaciente.submit();">
            <option value="1">Consulta Externa</option>
            <c:forEach var="estado" items="${listarCargos}">
              <c:if test="${estado.id_consultorio==93}">
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
        <tr style="font-size:10pt">
        <td class="etiqueta">Medico  </td>
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
        <tr style="font-size:10pt">
            <td class="etiqueta">Tipo de Consulta  </td>
            <td><SELECT NAME="tipoconsult">
                  <option value="0">Consulta Nueva</option>
                  <option value="1">Reconsulta 1ra</option>
                  <option value="2">Reconsulta 2da</option>
                  <option value="3">Reconsulta 3ra</option>
              </SELECT></td>
            </td>
          </tr> 
          <c:if test="${cod_esta == '200010'}">
            <c:if test="${id_rol == '2' or id_rol == '22' or id_rol == '26'}">
              <tr style="font-size:10pt">
                <td class="etiqueta">Clasificacion Riesgo </td>
                <td><SELECT NAME="id_riesgo">
                      <c:if test="${id_riesgo != '1' and id_riesgo != '2' and id_riesgo != '3' and id_riesgo != '4' }">
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                      </c:if>      
                      <c:if test="${id_riesgo == '1'}">
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                      </c:if>
                      <c:if test="${id_riesgo == '2'}">
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                      </c:if>
                      <c:if test="${id_riesgo == '3'}">
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                      </c:if>
                      <c:if test="${id_riesgo == '4'}">
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                      </c:if>
                  </SELECT></td>
                </td>
              </tr> 
           </c:if>  
         </c:if> 
         
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
       
        <c:if test="${id_rol == '22' }">
            <tr style="font-size:10pt">
            <td class="etiqueta">Servicio  </td>	      
            <td>
              <SELECT NAME="id_vigencia">
                  <option value="0">-- seleccione --</option>
                  <option value="1">Emergencias</option>
                  <option value="2">Consulta Externa</option>
                  
               </SELECT>	
               <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
               <input type="hidden" name='tipo_medico'      value='<c:out value="${tipo_medico}"/>'>
               <input type="hidden" name="resvig"           value='<c:out value="${resvig}"/>'>
           </td>
           </tr>    
              <tr style="font-size:10pt">
                <td class="etiqueta">Clasificacion Riesgo </td>
                <td><SELECT NAME="id_riesgo">
                      <c:if test="${id_riesgo != '1' and id_riesgo != '2' and id_riesgo != '3' and id_riesgo != '4' }">
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                      </c:if>      
                      <c:if test="${id_riesgo == '1'}">
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                      </c:if>
                      <c:if test="${id_riesgo == '2'}">
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                      </c:if>
                      <c:if test="${id_riesgo == '3'}">
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                      </c:if>
                      <c:if test="${id_riesgo == '4'}">
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                      </c:if>
                  </SELECT></td>
                </td>
              </tr> 

         </c:if>  
       </c:if>  
       
       <c:if test="${accion == 'Reservar' and tipo_medico==7}"> 
      <tr style="font-size:10pt">
        <td class="etiqueta">No. HCL - Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="5"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      
       <c:if test="${cod_esta == '200010'}">
           <tr style="font-size:10pt">
            <td class="etiqueta">Nro Matricula</td>    
            <td style="font-size: 16pt; color: blue"><c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;<input type="text" name="codigo" value="<c:out value="${datos.nro}"/>" size="15" style="color:blue" readonly/><font color="red"></font></td>	                 
          </tr>
       </c:if>    
        <c:if test="${datos.edad >= 5 and datos.edad < 10 and datos.id_estado == 'S'}">  
           <tr>
             <td class="etiqueta">Situacion</td>	      
             <td style="font-size: 30pt; color: blueviolet">Verifiquer si el paciente sigue Seguro Ley 475 </td>
           </tr>  
       </c:if>
        <tr style="font-size:10pt">
        <td class="etiqueta">Servicio  </td>      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionapaciente.submit();">
	    <option value="">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	         <c:out value="${estado.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
           <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
           <input type="hidden" name="resvig"          value='<c:out value="${resvig}"/>'>
       </td>
       </tr>    
        <tr style="font-size:10pt">
        <td class="etiqueta">Medico  </td>
        <td>
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
           <tr style="font-size:10pt">
            <td class="etiqueta">Tipo de Consulta  </td>
            <td><SELECT NAME="tipo">
                  <option value="N">Nueva</option>
                  <option value="R">Repetida </option>
              </SELECT></td>
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
      
      <c:if test="${accion == 'Afiliar' or accion == 'Desafiliar'}">
       <tr style="font-size:10pt">
        <td class="etiqueta">No. HCL - Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="5"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
     <c:if test="${accion != 'Desafiliar'}">  
     <tr style="font-size:10pt">
        <td class="etiqueta">Tipo de Afiliacion  </td>	      
        <td>
          <SELECT NAME="tipo" >
            <c:forEach var="estado" items="${listarSeguros}">
	      <OPTION value="<c:out value="${estado.id_seguro}"/>" <c:if test="${estado.id_seguro== id_seguro}">selected</c:if>> 
	        <c:out value="${estado.seguro}"/>
              </option>
            </c:forEach>
           </SELECT>	
        </td>    
      </tr>      
       </c:if> 

     </c:if>  
    
     <c:if test="${accion == 'Cambiar'}"> 
       <tr style="font-size:10pt">
       <td class="etiqueta">No. HCL - Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="5"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      
       <c:if test="${cod_esta == '200010'}">
           <tr style="font-size:10pt">
            <td class="etiqueta">Nro Matricula</td>    
            <td style="font-size: 16pt; color: blue"><c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;<input type="text" name="codigo" value="<c:out value="${datos.nro}"/>" size="15" style="color:blue" readonly/><font color="red"></font></td>	                 
          </tr>
       </c:if>    
       <tr style="font-size:10pt">
        <td class="etiqueta">Serviciio  </td>      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionapaciente.submit();">
	    <option value="">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <c:if test="${estado.id_especialidad!=0 and estado.id_especialidad!=99 and estado.id_cargo!=7 and estado.id_cargo!=33 and estado.id_cargo!=1}">   
                  <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	             <c:out value="${estado.consultorio}"/>
                  </option>
               </c:if>    
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='tipo_medico'  value='<c:out value="${tipo_medico}"/>'>
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
       </td>
       </tr>    
       
        <tr style="font-size:10pt">
        <td class="etiqueta">Medico  </td>
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
      <tr style="font-size:10pt">
            <td class="etiqueta">Tipo de Consulta  </td>
            <td><SELECT NAME="tipoconsult">
                  <option value="0">Consulta Nueva</option>
                  <option value="1">Reconsulta 1ra</option>
                  <option value="2">Reconsulta 2da</option>
                  <option value="3">Reconsulta 3ra</option>
              </SELECT></td>
            </td>
          </tr> 
         <tr style="font-size:10pt">
            <td class="etiqueta">Clasificacion Riesgo </td>
            <td><SELECT NAME="id_riesgo">
                  <c:if test="${id_riesgo != '1' and id_riesgo != '2' and id_riesgo != '3' and id_riesgo != '4' }">
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                      </c:if>      
                      <c:if test="${id_riesgo == '1'}">
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                      </c:if>
                      <c:if test="${id_riesgo == '2'}">
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                      </c:if>
                      <c:if test="${id_riesgo == '3'}">
                          <option value="3">Accidente de trabajo </option>
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                      </c:if>
                      <c:if test="${id_riesgo == '4'}">
                          <option value="4">Sin Documentos </option>
                          <option value="0">Normal</option>
                          <option value="1">Riesgo Extraordinario</option>
                          <option value="2">Empresa en Mora </option>
                          <option value="3">Accidente de trabajo </option>
                      </c:if>
              </SELECT></td>
            </td>
          </tr>    
          
     <c:if test="${id_rol == '23'}">
      <tr style="font-size:10pt">
        <td class="etiqueta">Triaje  </td>	      
        <td>
          <SELECT NAME="id_triaje" >
	      <option value="0">-- seleccione --</option>
              <option value="1">Rojo - Inmediato</option>
              <option value="2">Naranja - 15min</option>
              <option value="3">Amarillo - 60min</option>
              <option value="4">Verde - 120min</option>
              <option value="5">Azul - 240min</option>
           </SELECT>	
           <input type="hidden" name='tipo_medico'  value='<c:out value="${tipo_medico}"/>'>
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
       </td>
       </tr>  
      </c:if>  
       <tr style="font-size:10pt"><td class="etiqueta" > Fecha de Ingreso</td>
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
 </center>
 
 <center>
  <input type="submit" name='accion1' class="btn btn-success btn-lg" value='Aceptar' onclick="document.adicionapaciente.action='<c:url value="/GrabarPaciente.do"/>';">
  <br> 
 </center>
  
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='paterno'         value='<c:out value="${datos.paterno}"/>'>
 <input type="hidden" name='materno'         value='<c:out value="${datos.materno}"/>'>
 <input type="hidden" name='nombre'          value='<c:out value="${datos.nombre}"/>'>
 <input type="hidden" name='id_sexo'         value='<c:out value="${buscarSexo.id_sexo}"/>'>
 <input type="hidden" name='id_documento'    value='<c:out value="${buscarDocumento.id_documento}"/>'>
 <input type="hidden" name='dia' 	     value='<c:out value="${dia}"/>'>
 <input type="hidden" name='mes'   	     value='<c:out value="${mes}"/>'>
 <input type="hidden" name='edad'   	     value='<c:out value="${datos.edad}"/>'>
 <input type="hidden" name='anio' 	     value='<c:out value="${anio}"/>'>
 <input type="hidden" name='dia_r' 	     value='<c:out value="${dia_r}"/>'>
 <input type="hidden" name='mes_r' 	     value='<c:out value="${mes_r}"/>'>
 <input type="hidden" name='anio_r' 	     value='<c:out value="${anio_r}"/>'>
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
 <input type="hidden" name='residencia'      value='<c:out value="${datos.residencia}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='direccion'       value='<c:out value="${datos.direccion}"/>'>
 <input type="hidden" name='telefono'        value='<c:out value="${datos.telefono}"/>'>
 <input type="hidden" name='ocupacion'       value='<c:out value="${datos.ocupacion}"/>'>
 <input type="hidden" name='carnet'          value='<c:out value="${datos.carnet}"/>'>
 <input type="hidden" name='latitud'         value='<c:out value="${datos.latitud}"/>'>
 <input type="hidden" name='longitud'        value='<c:out value="${datos.longitud}"/>'>
 <input type="hidden" name='zoom'            value='<c:out value="${datos.zoom}"/>'>
 <input type="hidden" name='nro_registro'    value='<c:out value="${datos.nro_registro}"/>'>
 <input type="hidden" name='policonsul'      value='<c:out value="${datos.id_policlinico}"/>'>
 <input type="hidden" name='nro'             value='<c:out value="${datos.nro}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${datos.expedido}"/>'>
 <input type="hidden" name='patronal'        value='<c:out value="${datos.cadena}"/>'>
 <input type="hidden" name='nomempresa'      value='<c:out value="${datos.cadena2}"/>'>
 <input type="hidden" name='id_empresa'      value='<c:out value="${datos.id_empresa}"/>'>
 <input type="hidden" name='id_pais'         value='<c:out value="${id_pais}"/>'>
 <input type="hidden" name='id_ecivil'       value='<c:out value="${buscarEstadoCivil.id_ecivil}"/>'>
 <input type="hidden" name='id_departamento' value='<c:out value="${buscarDepartamento.id_departamento}"/>'>
 <input type="hidden" name='id_provincia'    value='<c:out value="${buscarProvincia.id_provincia}"/>'>
 <input type="hidden" name='id_localidad'    value='<c:out value="${buscarLocalidad.id_localidad}"/>'>
 <input type="hidden" name='id_escolaridad'  value='<c:out value="${buscarEscolaridad.id_escolaridad}"/>'>
 <input type="hidden" name='id_estado'       value='<c:out value="${datos.id_estado}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name="resvig"          value='<c:out value="${resvig}"/>'>
 <input type="hidden" name='swci'            value='<c:out value="${swci}"/>'>
 
</form>
</td>
   
    <td valign="top" width="25%">
    <c:if test="${cod_esta == '200010'}">
    <table class="table table-striped table-bordered table-condensed table-responsive">
        <!--
        <tr>
         <form name=formaDep<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
           <td colspan="3">     
             <div class="agregar"><a href="javascript:document.formaDep.submit();">Afiliar a Empresa</a></div>
             <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >
             <input type="hidden" name="id_pacientej" value=<c:out value="${id_paciente}"/> >
             <input type="hidden" name="accion" value='Afiliar' >
             <input type="hidden" name="sw" value='1' >
           </td>
         </form>
      </tr>
      -->
      <tr>
        <th colspan="3">DATOS EMPRESA</th>
      </tr>  
      
      <c:forEach var="empresa" items="${empresadatos}" begin="0" end="0" varStatus="contador1">
       <tr>
        <td class="etiqueta">Cod. empresa</td>
        <td style="font-size:13pt;"><c:out value = "${empresa.nropatronal}"/></td>
      </tr>
      
      <tr>
        <td class="etiqueta">Razon Social</td>
        <td style="font-size:13pt;"><c:out value = "${empresa.razonsocial}"/></td>            
      </tr> 
      <tr>
        <td class="etiqueta">NIT</td>
        <td style="font-size:13pt;"><c:out value = "${empresa.nit}"/></td>            
      </tr>
      <tr>
        <td class="etiqueta">Estado</td>
        <td style="font-size:13pt;color"><c:out value = "${empresa.estadoafiliacion}"/></td>            
      </tr>
       <tr>
        <td class="etiqueta">Estado</td>
        <c:if test="${empresa.estadomora=='MORA'}">
            <td style="font-size:28pt;color:red"><c:out value = "${empresa.estadomora}"/></td>           
        </c:if>     
        <c:if test="${empresa.estadomora!='MORA'}">
            <td style="font-size:13pt;"><c:out value = "${empresa.estadomora}"/></td>           
        </c:if>  
      </tr>    
      </c:forEach>
      
      <tr>
        <th colspan="3">DETALLE PAGO EMPRESA</th>
      </tr>  
      <tr>
        <th colspan="1">Fecha Pago </th>
        <th colspan="2">Perido Pago </th>
       </tr>  
       <c:forEach var="lista" items="${empresadatos}" varStatus="contador">
         <tr style="font-size:8pt">
           <td colspan="1" style="font-size:13pt;color:blue"><c:out value="${fn:substring(lista.fecha,0,10)}"/></td>
           <td colspan="2" style="font-size:18pt;color:blue" align="center"><c:out value="${lista.detalle}"/></td>
         </tr>    
       </c:forEach>
     </table>    
   </c:if> 
  </td>
   
 </tr>
 </table>


<c:if test="${accion == 'Afiliar' or accion == 'Desafiliar'}">
  <div style="font-size:15pt"> Detalle Afiliaciones</div>
 <table class="table table-striped table-bordered table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th> NRO </th>
    <th> Fecha<br>Registro </th>
    <th> Estado </th>
    <th> Tipo </th>
    <th> Seguro </th>
    <th> Carnet </th>
    <th> Fecha<br> Baja</th>                
   </tr>  
   <c:forEach var="lista" items="${buscapaciente}" varStatus="contador">
    <tr style="font-size:8pt">
       <form name=formaUnir<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
          <td align="center">     
             <div><a href="javascript:document.formaUnir<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
             <input type="hidden" name="id_paciente"   value=<c:out value="${lista.id_paciente}"/> >
             <input type="hidden" name="id_carpeta"    value=<c:out value="${lista.id_carpeta}"/> >
             <input type="hidden" name='id_sexo'       value='<c:out value="${buscarSexo.id_sexo}"/>'>
             <input type="hidden" name='accion'        value='<c:out value="${accion}"/>'>
             <input type="hidden" name="accion1"       value='EliminaSeguro' >
             
             <input type="hidden" name="sw1"           value='1' >
          </td>
       </form>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/></td>  
       <td><c:out value="${lista.id_estado}"/></td>         
       <td><c:out value="${lista.tipo}"/></td>   
       <td><c:out value="${lista.seguro}"/></td>   
       <td><c:out value="${lista.carnet}"/></td>        
       <td><fmt:formatDate value="${lista.fec_baja}" pattern='dd/MM/yyyy'/></td>
   </c:forEach>
 </table>  
 </c:if>
 
 
   
  <c:if test="${datosseguro=='SI'}">
      <table class="table table-striped table-bordered table-condensed table-responsive">
       <tr style="font-size:20pt">
           <th colspan="7"  bgcolor="#F2F2F2"><center>  AFILIACIONES A SEGUROS A CORTO PLAZO </center> </th>
       </tr> 
       <tr style="font-size:9pt">
          <th bgcolor="#F2F2F2"> No </th>
          <th bgcolor="#F2F2F2"> Fecha Nac </th>
          <th bgcolor="#F2F2F2"> Nombres </th>
          <th bgcolor="#F2F2F2"> Sexo </th>
          <th bgcolor="#F2F2F2"> Carnet </th> 
          <th bgcolor="#F2F2F2"> Lugar </th>
          <th bgcolor="#F2F2F2"> Seguro </th>
       </tr>  
       <c:forEach var="listas" items="${listaPacientesSeg}" varStatus="contador3"> 
         <tr style="font-size:9pt">
           <td align="center"><c:out value="${contador3.count}"/></td>
           <td style="font-size:11pt"><b><fmt:formatDate value="${listas.fec_nacimiento}" pattern='dd/MM/yyyy'/></b></td>
           <td style="font-size:10pt"><c:out value="${listas.nombres}"/></td>   
           <td style="font-size:10pt"><c:out value="${listas.nro}"/></td>
           <td style="font-size:10pt"><c:out value="${listas.carnet}"/></td>   
           <td style="font-size:10pt"><c:out value="${listas.ocupacion}"/></td>   
           <td style="font-size:25pt;color:red"><c:out value="${listas.seguro}"/></td>   
         </tr>
       </c:forEach>  
      </table> 
  </c:if> 
  
  
  <c:if test="${accion == 'Reservar' and tipo_medico !='7'}">   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
      <th> No </th>
      <th> Fecha </th>
      <th> Consultorio </th>
      <th> Medico </th>
      <th> Seguro </th> 
      <th> Diagnostico </th>
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <c:if test="${contador.count<5 and lista.diagnostico!='Desde Farmacia' }">  
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td style="font-size:11pt"><b><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></font></b></td>
       <td style="font-size:10pt;color:blue"><c:out value="${lista.consultorio}"/></td>   
       <td><c:out value="${lista.nombres}"/>
                   <c:if test="${lista.tipoconsult == '1' }">
                           <font color="Red"> _Reconsulta 1</font>
                       </c:if>
                       <c:if test="${lista.tipoconsult == '2' }">
                           <font color="Red"> _Reconsulta 2</font>
                       </c:if>
                       <c:if test="${lista.tipoconsult == '3' }">
                           <font color="Red"> _Reconsulta 3</font>
                       </c:if>
                       <c:if test="${lista.tipoconsult == '6' }">
                           <font color="Red"> Recons_Medico</font>
                       </c:if>
                       <c:if test="${lista.tipoconsult == '7' }">
                           <font color="Red"> Re_Enfermeria</font>
                       </c:if>
                       <c:if test="${lista.id_riesgo == '1' }">
                           <font color="Red"  size="4"> RIESGO</font>
                       </c:if>
                       <c:if test="${lista.id_riesgo == '2' }">
                           <font color="Red"  size="4"> MORA</font>
                       </c:if>
                       <c:if test="${lista.id_riesgo == '3' }">
                           <font color="Red" size="4"> ACCID.TRAB.</font>
                       </c:if>
                       <c:if test="${lista.id_riesgo == '4' }">
                           <font color="Red" size="4"> Sin DOC</font>
                       </c:if>
                       </td>            
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SUMI</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
          <td><c:out value="${lista.seguro}"/></td>  
      </c:if>
      <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>  

      <c:if test="${lista.internado == 2 or lista.internado == 6 or lista.internado == 7 or lista.internado == 8 or lista.internado == 13 or lista.internado == 14 or lista.internado == 5 or lista.internado == 4 }">
          <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Dar Alta</a></div>
         <input type="hidden" name="id_paciente"     value='<c:out value="${lista.id_paciente}"/>' >         
         <input type="hidden" name="id_historial"    value='<c:out value="${lista.id_historial}"/>' >     
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="id_empresa"      value=<c:out value="${lista.id_empresa}"/> >
         <input type="hidden" name="id_carpeta"      value=<c:out value="${lista.id_carpeta}"/> >
	 <input type="hidden" name="acciona"         value='AltaPac'>
         <input type="hidden" name="accion"          value='Reservar'>
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
      </c:if>
      
    </c:if>
    </tr>
   </c:forEach>
</table>
 </c:if>
