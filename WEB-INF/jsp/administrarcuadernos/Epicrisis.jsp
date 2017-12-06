<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionadmi" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
    <th colspan="9"><center>DATOS PARA REALIZAR EPICRISIS DEL PACIENTE</center></th>
  </tr>
  <tr>    
     <td colspan="9">Nombres:: <c:out value = "${datos.nombres}"/>&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datos.hcl}"/>&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datos.nro_registro}"/>&nbsp;&nbsp;&nbsp;Codigo:: <c:out value = "${datos.nro}"/></td>
  </tr>
  <tr>
    <td valign="top" >

   <table class="table table-striped table-bordered table-condensed table-responsive"> 
      <tr>
        <th colspan="9"><font size=2><center>DATOS EPICRISIS DEL PACIENTE</center></font></th>
      </tr>
   <tr style="font-size:10pt"> 
      <td class="etiqueta">Listar Pisos  </td>      
        <td><SELECT NAME="id_piso" onchange="javascript:document.adicionadmi.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="lispiso" items="${listarPisos}">
	       <OPTION value="<c:out value="${lispiso.id_piso}"/>" <c:if test="${lispiso.id_piso == id_piso}">selected</c:if>> 
	          <c:out value="${lispiso.piso}"/>
	       </option>
	    </c:forEach>  
            <input type="hidden" name='id_epi'             value='<c:out value="${id_epi}"/>'>
           </SELECT></td>       
        
        <td class="etiqueta">Listar Salas  </td>
        <td>
          <SELECT NAME="id_sala" onchange="javascript:document.adicionadmi.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarSalas}">
	         <OPTION value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>> 
	             <c:out value="${estado.sala}"/>
	         </option>
	    </c:forEach>
            <input type="hidden" name='id_epi'             value='<c:out value="${id_epi}"/>'>
           </SELECT>	
        </td>     
      
        <td class="etiqueta">Buscar Cama  </td>	      
        <td><SELECT NAME="id_cama">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCama}">
	      <OPTION value="<c:out value="${estado.id_cama}"/>" <c:if test="${estado.id_cama == id_cama}">selected</c:if>> 
	        <c:out value="${estado.cama}"/>
	      </option>
	    </c:forEach>
           </SELECT></td>   
      </tr>    
      
       <tr style="font-size:10pt">
        <td class="etiqueta" > Fecha Ingreso</td>
       <td colspan="4"><SELECT NAME="diai">
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
       <td class="etiqueta" > Fecha Egreso</td>
       <td colspan="4"><SELECT NAME="diai2">
             <c:forEach var="dias" items="${dias}">
    	       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
	         <c:out value="${dias}"/></option></c:forEach></SELECT>
	<SELECT NAME="mesi2">
             <c:forEach var="meses" items="${meses}">
    	       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
	         <c:out value="${meses}"/></option></c:forEach></SELECT>
	 <SELECT NAME="anioi2">
             <c:forEach var="anios" items="${anios}">
    	       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
	         <c:out value="${anios}"/></option></c:forEach></SELECT>
         <SELECT NAME="horai2">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoi2">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>
         <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>
   </tr>    
    </table>
    </td>
  </tr>
  
  <tr>
    <td>
    <table class="table table-striped table-bordered table-condensed table-responsive"> 
     <tr style="font-size:10pt">
       <td class="etiqueta"> Datos <br> Clinicos</td>
       <td bgcolor="blue" colspan="16" ><textarea name="clinicos" rows="2" cols="60" style="width: 100%""/><c:out value = "${clinicos}" escapeXml="False"/></textarea></td>
    </tr>    
     <tr style="font-size:10pt">
       <td class="etiqueta"> Diagnostico<br> de Admision</td>
       <td bgcolor="blue" colspan="16" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%""/><c:out value = "${diagnostico}" escapeXml="False"/></textarea></td>
    </tr> 
    <tr style="font-size:10pt">
       <td class="etiqueta"> Diagnosticos de egreso <br>Anatomico, Etiologico, Funcional</td>	
       <td bgcolor="blue" colspan="16" ><textarea name="diagnosticoegr" rows="2" cols="60" style="width: 100%""/><c:out value = "${diagnosticoegr}" escapeXml="False"/></textarea></td>     
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Condicion de Egreso</td>
       <td colspan="7"><SELECT NAME="condicion">
              <c:if test="${condicion=='1' }"> 
                  <OPTION value="1" >Curado </option>
                  <OPTION value="2" >Mejorado </option>
                  <OPTION value="3" >Invariable </option>
                  <OPTION value="4" >En estudio</option>
              </c:if>
              <c:if test="${condicion=='2' }"> 
                  <OPTION value="2" >Mejorado </option>
                  <OPTION value="3" >Invariable </option>
                  <OPTION value="4" >En estudio</option>
                  <OPTION value="1" >Curado </option>
              </c:if>
              <c:if test="${condicion=='3' }"> 
                  <OPTION value="3" >Invariable </option>
                  <OPTION value="4" >En estudio</option>
                  <OPTION value="1" >Curado </option>
                  <OPTION value="2" >Mejorado </option>
              </c:if>
              <c:if test="${condicion=='4' }"> 
                  <OPTION value="4" >En estudio</option>
                  <OPTION value="1" >Curado </option>
                  <OPTION value="2" >Mejorado </option>
                  <OPTION value="3" >Invariable </option>
              </c:if>
          </SELECT>	</td>                      
       <td class="etiqueta"> Causas de Egreso</td>
       <td colspan="7"><SELECT NAME="causa">
              <c:if test="${causa=='1' }"> 
                  <OPTION value="1" >Alta Medica </option>
                  <OPTION value="2" >Alta Solicitada </option>
                  <OPTION value="3" >Fuga </option>
                  <OPTION value="4" >Fallecido</option>
              </c:if>
              <c:if test="${causa=='2' }"> 
                  <OPTION value="2" >Alta Solicitada </option>
                  <OPTION value="3" >Fuga </option>
                  <OPTION value="4" >Fallecido</option>
                  <OPTION value="1" >Alta Medica </option>
              </c:if>
              <c:if test="${causa=='3' }"> 
                  <OPTION value="3" >Fuga </option>
                  <OPTION value="4" >Fallecido</option>
                  <OPTION value="1" >Alta Medica </option>
                  <OPTION value="2" >Alta Solicitada </option>
              </c:if>
              <c:if test="${causa=='4' }"> 
                  <OPTION value="4" >Fallecido</option>
                  <OPTION value="1" >Alta Medica </option>
                  <OPTION value="2" >Alta Solicitada </option>
                  <OPTION value="3" >Fuga </option>
              </c:if>
          </SELECT>	</td>             
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Examenes Complementarios<br> de diagnoostico realizados </td>
       <td bgcolor="blue" colspan="16" ><textarea name="examenes" rows="2" cols="60" style="width: 100%"/><c:out value = "${examenes}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Tratamiento <br>Quirurgico</td>
       <td bgcolor="blue" colspan="16" ><textarea name="tratquirurgico" rows="2" cols="60" style="width: 100%"/><c:out value = "${tratquirurgico}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Tratamiento <br>Medico</td>
       <td bgcolor="blue" colspan="16" ><textarea name="tratmedico" rows="2" cols="60" style="width: 100%"/><c:out value = "${tratmedico}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Complicaciones</td>
       <td bgcolor="blue" colspan="16" ><textarea name="complicaciones" rows="2" cols="60" style="width: 100%"/><c:out value = "${complicaciones}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Pronostico Vital </td>
       	
       <td colspan="16"><input type="text" name="pronosticovital" value="<c:out value="${pronosticovital}"/>" size="150" maxlength="150" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Pronostico Funcional </td>
       	
       <td colspan="16"><input type="text" name="pronosticofuncional" value="<c:out value="${pronosticofuncional}"/>" size="150" maxlength="150" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Control y tratamiento a seguir</td>
       <td bgcolor="blue" colspan="16" ><textarea name="control" rows="2" cols="60" style="width: 100%"/><c:out value = "${control}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Control en Policlinico </td>
       	
       <td colspan="7"><input type="text" name="policlinico" value="<c:out value="${policlinico}"/>" size="50" maxlength="50" value=""/></td>                      
       <td class="etiqueta"> Control en Hospital</td>
       	
       <td colspan="7"><input type="text" name="hospital" value="<c:out value="${hospital}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Recomendaciones</td>
       <td bgcolor="blue" colspan="16" ><textarea name="recomendaciones" rows="6" cols="60" style="width: 100%"/><c:out value = "${recomendaciones}" escapeXml="False"/></textarea></td>
    </tr>
  </table>
  </td>
  </tr>
</table>

<center>
  <input type="submit" class="btn btn-primary btn-lg" value='Guardar' onclick="document.adicionadmi.accion.value='Guardar';
                                                                      document.adicionadmi.action='<c:url value="/Epicrisis.do"/>'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_epi'              value='<c:out value="${id_epi}"/>'>
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
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='swinter'         value='inter' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
 </tr>
  </table>     
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Hora </th>
    <th bgcolor="#F2F2F2"> PACIENTE</th>
    <th bgcolor="#F2F2F2"> CONDICION</th>
    <th bgcolor="#F2F2F2"> CAUSA</th>
    <th bgcolor="#F2F2F2"> ESPECIALIDAD DE </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarEpis}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><c:out value="${lista.id_historial}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
          <c:if test="${lista.suma5=='1' }"> <td>CURADO</td> </c:if>
          <c:if test="${lista.suma5=='2' }"> <td>MRJORADO</td> </c:if>
          <c:if test="${lista.suma5=='3' }"> <td>INVARIABLE</td> </c:if>
          <c:if test="${lista.suma5=='4' }"> <td>EN ESTUDIO</td> </c:if>
          <c:if test="${lista.suma6=='1' }"> <td>ALTA MEDICA</td> </c:if>
          <c:if test="${lista.suma6=='2' }"> <td>ALTA SOLICITADA</td> </c:if>
          <c:if test="${lista.suma6=='3' }"> <td>FUGA</td> </c:if>
          <c:if test="${lista.suma6=='4' }"> <td>FALLECIDO</td> </c:if>
       <td><c:out value="${lista.bacterias}"/></td>
       <td><c:out value="${lista.cadena3}"/></td>   
    
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Epicrisis.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_epi'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaEpi'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/Epicrisis.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_epi'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="accion"         value='ImprimirEpi'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>

