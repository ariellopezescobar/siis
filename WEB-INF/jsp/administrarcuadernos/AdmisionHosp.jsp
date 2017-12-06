<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionadmi" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="mm9"><center>DATOS PARA REALIZAR HOJA DE ADMISION HOSPITALARIA</center></th>
  </tr>
  <tr>    
     <td colspan="9">Nombres:: <c:out value = "${datos.nombres}"/>&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datos.hcl}"/>&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datos.nro_registro}"/>&nbsp;&nbsp;&nbsp;Codigo:: <c:out value = "${datos.nro}"/></td>
  </tr>
  
  <tr >
    <td valign="top" >
    <c:if test="${id_rol == '22' or id_rol == '28' or id_rol == '26'}">
    <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="9"><font size=2><center>DATOS DE LOS FAMILIARES</center></font></th>
      </tr>  
      <tr style="font-size:10pt">
       <td align="right" colspan="2"> Padre (Apellidos y Nombres) </td>
       <td colspan="1"><input type="text" name="padre" value="<c:out value="${padre}"/>" size="60" maxlength="60" value=""/></td>       
       <td align="right" colspan="2"> Madre (Apellidos y Nombres) </td>
       <td colspan="2"><input type="text" name="madre" value="<c:out value="${madre}"/>" size="60" maxlength="60" value=""/></td>                      
     </tr>
     <tr style="font-size:10pt">
       <td align="right" colspan="2"> Conyugue (Apellidos y Nombres) </td>
       <td colspan="1"><input type="text" name="conyugue" value="<c:out value="${conyugue}"/>" size="60" maxlength="60" value=""/></td>       
       <td align="right" colspan="2"> Conviviente (Apellidos y Nombres) </td>
       <td colspan="2"><input type="text" name="conviviente" value="<c:out value="${conviviente}"/>" size="60" maxlength="60" value=""/></td>                      
     </tr>
     <tr style="font-size:10pt">
       <td align="right" colspan="2"> Direccion persona mas Proxima</td>
       <td colspan="6"><input type="text" name="direccion" value="<c:out value="${direccion}"/>" size="160" maxlength="160" value=""/></td>                      
     </tr>
     </table> 
   </c:if>  
   
   <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="9"><font size=2>DATOS DEL CONSULTORIO DE ADMISION</font></th>
      </tr>
   <tr style="font-size:10pt"> 
   
      <td align="right">Listar Pisos  </td>     
        <td><SELECT NAME="id_piso" onchange="javascript:document.adicionadmi.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="lispiso" items="${listarPisos}">
	       <OPTION value="<c:out value="${lispiso.id_piso}"/>" <c:if test="${lispiso.id_piso == id_piso}">selected</c:if>> 
	          <c:out value="${lispiso.piso}"/>
	       </option>
	    </c:forEach>  
            <input type="hidden" name='id_admi'             value='<c:out value="${id_admi}"/>'>
            <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
           </SELECT></td>       
        
        <td align="right">Establecimiento <br> Referencia </td>
        <td>
          <SELECT NAME="cod_esta">
           
            <c:forEach var="estab" items="${listaEstab}">
	      <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
	        <c:out value="${estab.establecimiento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>

       </tr>    
      <tr style="font-size:10pt">

        <td align="right">Listar Salas  </td>     
        <td>
          <SELECT NAME="id_sala" onchange="javascript:document.adicionadmi.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarSalas}">
	         <OPTION value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>> 
	             <c:out value="${estado.sala}"/>
	         </option>
	    </c:forEach>
            <input type="hidden" name='id_admi'             value='<c:out value="${id_admi}"/>'>
            <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
           </SELECT>	
        </td>     
        
        <td align="right">Especialidad de<br> Referencia  </td>	      
        <td>
          <SELECT NAME="id_consultorio">
            <c:forEach var="estado" items="${listarCargos}">
               <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	         <c:out value="${estado.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
           <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
       </td>
       
       </tr>
       <tr style="font-size:10pt">
        <td align="right">Buscar Cama  </td>      
        <td><SELECT NAME="id_cama">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCama}">
	      <OPTION value="<c:out value="${estado.id_cama}"/>" <c:if test="${estado.id_cama == id_cama}">selected</c:if>> 
	        <c:out value="${estado.cama}"/>
	      </option>
	    </c:forEach>
           </SELECT>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <SELECT NAME="seguro">
	    <option value="0">-- Elegir Seguro --</option>
            <option value="1">Maternidad</option>
            <option value="2">Enfermedad</option>
            <option value="3">Riesgo Prof.</option>
           </SELECT>
        </td>   
     
        <td align="right" > Fecha Ingreso</td>
       <td colspan="8"><SELECT NAME="diai">
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
        
       </td>
   </tr> 
  
       
    </table>
    </td>
  </tr>
  
 
  <tr style="font-size:10pt">
    <td>
    <table class="formulario" width="100%">
     <tr style="font-size:10pt">
        <td align="right"> PA {mmHg} </td> 
        <td><input type="text" name="pa" size="6" maxlength="7" value="<c:out value="${pa}"/>" placeholder="90/60..."/></td>
        
        <td align="right"> FC {lpm} </td> 
        <td><input type="text" name="fc" size="5" maxlength="5" value="<c:out value="${fc}"/>" placeholder="80..."/></td>
        
        <td align="right"> FR {cpm} </td> 
        <td><input type="text" name="fr" size="5" maxlength="5" value="<c:out value="${fr}"/>" placeholder="20..."/></td>
        
        <td align="right"> Temperatura {ºC} </td> 
        <td><input type="text" name="temperatura" size="5" maxlength="5" value="<c:out value="${temperatura}"/>" placeholder="36.5..."/></td>
        
        <td align="right"> Estatura{cm} </td>  
        <td><input type="text" name="talla" size="5" maxlength="5" value="<c:out value="${talla}"/>" onblur='validar(talla,"9")' placeholder="167.5..."/></td>                      
        
        <td align="right">Peso{Kg} </td>  	
        <td><input type="text" name="peso" size="5" maxlength="5" value="<c:out value="${peso}"/>"  onblur='validar(peso,"9")' placeholder="60.5..."/></td>                      
     </tr>    
     <tr style="font-size:10pt">
       <td align="right"> Diagnostico<br> de Admision</td>
       <td bgcolor="blue" colspan="16" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%"/><c:out value = "${diagnostico}" escapeXml="False"/></textarea></td>
    </tr> 
    <tr style="font-size:10pt">
       <td align="right"> Estado General<br> del Paciente </td>
       <td bgcolor="blue" colspan="16" ><textarea name="estadogen" rows="2" cols="60" style="width: 100%"/><c:out value = "${estadogen}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td align="right" > Prescripcion <br>Medica de Urgencia</td>
       <td bgcolor="blue" colspan="16" ><textarea name="prescripcion" rows="2" cols="60" style="width: 100%"/><c:out value = "${prescripcion}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td align="right"> Nombres Persona <br>condujo al Paciente:: </td>
       <td colspan="16"><input type="text" name="nombreacom" value="<c:out value="${nombreacom}"/>" size="150" maxlength="150" value=""/></td>                      
    </tr>
  </table>
  </td>
  </tr>
</table>

<center>
  <input type="submit" class="btn btn-primary btn-lg" value='Guardar' onclick="document.adicionadmi.accion.value='Guardar';
                                                                      document.adicionadmi.action='<c:url value="/AdmisionHosp.do"/>'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_admi'             value='<c:out value="${id_admi}"/>'>
    <input type="hidden" name='accion'              value='<c:out value="${accion}"/>'>
</form>

<table class="tabla"><tr>
 <td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div><a class="btn btn-success" href="javascript:document.formaL1.submit();">Retornar</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
 </tr>
  </table>  
    
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Hora </th>
    <th bgcolor="#F2F2F2"> PACIENTE</th>
    <th bgcolor="#F2F2F2"> HOSPITAL DE</th>
    <th bgcolor="#F2F2F2"> ESPECIALIDAD DE </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> EDITAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    <th bgcolor="#F2F2F2"> INTERNAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarAdmi}" varStatus="contador">
     <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.bilirrubina}"/></td>
       <td><c:out value="${lista.bacterias}"/></td>
       <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>   
    
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/AdmisionHosp.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_admi'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaAdm' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/AdmisionHosp.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_admi'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ImprimirAdm2' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <c:if test="${lista.egreso == '0'}">
        <form name=formaIii<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPac.do"/>'>
       <td>     
         <div><a class="btn btn-primary btn-xs" href="javascript:document.formaIii<c:out value="${contador.count}"/>.submit();"> Internar</a></div>
         <input type="hidden" name='id_admi'         value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
         <input type="hidden" name='id_piso'         value='<c:out value="${lista.suma1}"/>'>
         <input type="hidden" name='id_sala'         value='<c:out value="${lista.suma2}"/>'>
         <input type="hidden" name='id_cama'         value='<c:out value="${lista.suma3}"/>'>
         <input type="hidden" name="accion"          value='Terminar' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     </c:if> 
     <c:if test="${lista.egreso == '1'}">
         <td>Internado</td>
     </c:if>     
    </tr> 
   </c:forEach>
 </table>

