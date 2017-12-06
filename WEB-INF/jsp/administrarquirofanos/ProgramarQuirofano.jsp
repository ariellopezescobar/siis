<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<form name="adicionarquirofano" method="POST" action='<c:url value="/NuevoQuirofano.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS PROGRAMAR QUIROFANO</center></th>
    </tr>
    <tr>
      <th colspan="3"><c:out value="${datos.nombres}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${datos.nro}"/></th>
    </tr>
    <tr style="font-size:11pt">
      <td align="center">Tipo Cirugia</td>
      <td align="center">Nombre Cirujano</td>
      <td align="center">Nombre Ayudante</td>
    </tr>
     <tr style="font-size:11pt">
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionarquirofano.submit();">
	    <option value="">-- Seleccione Servicio--</option>
            <c:forEach var="estado" items="${listarCargos}">
                <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	           <c:out value="${estado.consultorio}"/>
                </option>
            </c:forEach>
            
           </SELECT>	
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_consultorio2'  value='<c:out value="${id_consultorio2}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='hcl'             value='<c:out value="${hcl}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
             <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
       </td>
       <td style="font-size:11pt">
          <SELECT NAME="id_persona1">
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona1}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
        <td style="font-size:11pt">
          <SELECT NAME="id_persona2">
            <option value="0">--Sin Nombre--</option>
	    <c:forEach var="perso" items="${listaPersonas3}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona2}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>   
      <tr style="font-size:11pt">
         <td align="center">Anestesiologia</td>
         <td align="center">Nombre Anestesiologo</td>
         <td align="center">Nombre Ayudante</td>
      </tr>
      <tr style="font-size:11pt">
        <td>
          <SELECT NAME="id_consultorio2" onchange="javascript:document.adicionarquirofano.submit();">
	    <c:forEach var="estado" items="${listarCargos}">
              <c:if test="${estado.id_consultorio==25}">
                <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio2}">selected</c:if>>
	           <c:out value="${estado.consultorio}"/>
                </option>
              </c:if>  
            </c:forEach>
            
           </SELECT>	
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='hcl'             value='<c:out value="${hcl}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
             <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
       </td>
       <td style="font-size:11pt">
          <SELECT NAME="id_persona3">
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso3" items="${listaPersonas2}">
	      <option value="<c:out value="${perso3.id_persona}"/>"<c:if test="${perso3.id_persona == id_persona3}">selected</c:if>> 
	        <c:out value="${perso3.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
        <td>
          <SELECT NAME="id_persona4">
            <option value="0">--Sin Nombre--</option>
	    <c:forEach var="perso4" items="${listaPersonas3}">
	      <option value="<c:out value="${perso4.id_persona}"/>"<c:if test="${perso4.id_persona == id_persona4}">selected</c:if>> 
	        <c:out value="${perso4.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>   
      
       <tr style="font-size:11pt">
        <td align="right">Nombre Quirofano:</td>
        <td colspan="2">
          <SELECT NAME="id_quirofano" onchange="javascript:document.adicionarquirofano.submit();">
	  
            <c:forEach var="estado" items="${listarQuirofanos}">
               <option value="<c:out value="${estado.id_quirofano}"/>" <c:if test="${estado.id_quirofano == id_quirofano}">selected</c:if>>
	         <c:out value="${estado.quirofano}"/>
               </option>
            </c:forEach>
           </SELECT>	
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='hcl'             value='<c:out value="${hcl}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
             <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
       
       </td>
     </tr> 
     
      <tr style="font-size:11pt">
       <td align="right" > Fecha Programada</td>
       <td colspan="2"><SELECT NAME="diai">
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
         <br><font size="1" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td></tr>
    
     <tr style="font-size:11pt">
      <td align="right"> Tipo Cirugia:: </td>
      <td colspan="2"><input type="text" name="tipo" value="" maxlength="50" size="50" /></td>
    </tr>       
    <tr style="font-size:11pt">
      <td align="right"> Observaciones:: </td>
      <td colspan="2"><input type="text" name="observa" value="" maxlength="50" size="50" /></td>
    </tr>  
    <tr style="font-size:11pt">
       <td align="right"> Diagnostico<br> Presuntivo::</td>
       <td colspan="2" ><textarea name="diagnosticopre" rows="2" cols="60" style="width: 80%""/><c:out value = "${diagnosticopre}" escapeXml="False"/></textarea></td>
    </tr> 
    <tr style="font-size:11pt">
      <td colspan="2"> Pulso:: <input type="text" name="pulso" value="" maxlength="50" size="10" />Temperatura:: <input type="text" name="tempera" value="" maxlength="50" size="10" />
      Presion Art.:: <input type="text" name="presion" value="" maxlength="50" size="10" /> </td>
    </tr>  
    <tr style="font-size:11pt">  
      <td colspan="2"> Corazon:: <input type="text" name="corazon" value="" maxlength="50" size="10" /> Pulmones:: <input type="text" name="pulmon" value="" maxlength="50" size="10" /></td>
    </tr>   
  </table>
  </center>   
  <center>
    <input type="submit" name='accion1' class="btn btn-primary btn-lg" value='GuardarQ' onclick="document.adicionarquirofano.action='<c:url value="/NuevoQuirofano.do"/>';">  
  </center>
     <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'> 
     <input type="hidden" name='id_persona'       value='<c:out value="${id_persona}"/>'>
     <input type="hidden" name='id_consultorio'   value='<c:out value="${id_consultorio}"/>'>
     <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
     
</form>
   
  <div class=titulo> </div>
  
<table class="tabla">
<tr>
<td><form name=formaL1 method=post action='<c:url value="/NuevoQuirofano.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaL1.submit();">Retornar</a></div></td>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
 </tr>
  </table>
 
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> Fecha<br>Realizacion </th>
    <th bgcolor="#F2F2F2"> Fecha<br>Programacion </th>
    <th bgcolor="#F2F2F2"> QUIROFANO </th>
    <th bgcolor="#F2F2F2"> PACENTE </th>
    <th bgcolor="#F2F2F2"> CIRUJANO </th>
    <th bgcolor="#F2F2F2"> Tipo Cirugia </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarQuirofanosR}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:blue"><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.quirofano}"/></td>
       <td><c:out value="${lista.cadena1}"/></td>
       <td><c:out value="${lista.cadena2}"/></td>
       <td><c:out value="${lista.cadena4}"/></td>   
    
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoQuirofano.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_quirofano'    value='<c:out value="${lista.id_quirofano}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name="accion1"         value='Modificar' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoQuirofano.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_quirofano'    value='<c:out value="${lista.id_quirofano}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name="accion1"         value='ImprimirQuiro' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>
