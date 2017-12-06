<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adiciontransf" action="<c:url value="/Transferencia.do"/>" method="POST">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>DATOS PARA REALIZAR LA TRANSFERENCIA</center></th>
  </tr>
  <tr>    
     <td colspan="3" bgcolor="#A9F5F2">Nombres:: <c:out value = "${datos.nombres}"/>&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datos.hcl}"/>&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datos.nro_registro}"/></td>
  </tr>
  <tr >
    <td valign="top" >
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="6"><font size=2><center>DATOS ESTABLECIMIENTO DE SALUD DE REFERENCIA</center></font></th>
      </tr>
      <tr>
        <td align="right" style="font-size:9pt">Departamento Referencia </td>
        <td>
          <SELECT NAME="id_departamento" onchange="javascript:document.adiciontransf.submit();">
            <option value="0">-- seleccione --
   	    <c:forEach var="dpto" items="${listaDepartamentos}">
	      <option value="<c:out value="${dpto.id_departamento}"/>"<c:if test="${dpto.id_departamento == id_departamento}">selected</c:if>> 
	        <c:out value="${dpto.departamento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
   
        <td align="right" style="font-size:9pt">Establecimiento Referencia </td>
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
      <tr>
      <td align="right" style="font-size:9pt">Al servicio Referencia  </td>      
        <td>
            <SELECT NAME="id_servicio">
                    <option value="0" selected> Consulta Externa </option>
                    <option value="1" > Emergencias</option>
                    <option value="2" > Hospitalizacion</option>
                    <option value="3" > UTI </option>
                    <option value="4" > UCIN </option>
                    <option value="5" > UCA TRAUMATOLOGIA </option>
                    <option value="100" > Otros </option>
          </SELECT>      
        </td>
     
        <td align="right" style="font-size:9pt">Especialidad Referencia  </td>      
        <td>
          <SELECT NAME="id_consultorio">
            <c:forEach var="estado" items="${listarCargos}">
               <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	         <c:out value="${estado.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
       </td>
       </tr>    
       <tr>
        <td align="right" style="font-size:9pt">Fecha Trasferencia </td>      
        <td colspan="4">
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
    </table>
    </td>
  </tr>
  
 
  <tr>
    <td>
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
     <tr>
       <td align="right"> Diagnostico de Transferencia:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%" placeholder="Diagnostico de Transferencia..."></textarea></td>
    </tr> 
    <tr>
       <td align="right"> Laboratorios Efectuados:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="laboratorio" rows="2" cols="60" style="width: 100%" placeholder="Laboratorios Efectuados..."></textarea></td>
    </tr>
    <tr>
       <td align="right"> Tratamiento Realizado:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="tratamiento" rows="2" cols="60" style="width: 100%" placeholder="Tratamiento Realizado..."></textarea></td>
    </tr>
    <tr>
       <td align="right"> Recomendaciones:: </td>
       <td bgcolor="blue" colspan="3" ><textarea name="recomienda" rows="2" cols="60" style="width: 100%" placeholder="Recomendaciones..."></textarea></td>
    </tr>
  </table>
  
  
</table>
<center>
  <input type="submit" class="btn btn-warning" value='Cronograma' onclick="document.adiciontransf.accion.value='CronogramaUCA'">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" class="btn btn-primary" value='Guardar-Imprimir' onclick="document.adiciontransf.accion.value='Guardar'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='accion'              value='<c:out value="${accion}"/>'>
    <input type="hidden" name="sw1"                 value='1' >
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
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
 </tr>
  </table>  
    
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Hora </th>
    <th bgcolor="#F2F2F2"> PACIENTE</th>
    <th bgcolor="#F2F2F2"> HOSPITAL DE</th>
    <th bgcolor="#F2F2F2"> SERVICIO DE </th>
    <th bgcolor="#F2F2F2"> ESPECIALIDAD DE </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarTransfer}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.bilirrubina}"/></td>
       <td><c:out value="${lista.anti}"/></td>
       <td><c:out value="${lista.bacterias}"/></td>
       <td><c:out value="${lista.diagnostico}"/></td>   
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Transferencia.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_trans'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaTrans' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/Transferencia.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_trans'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="accion"         value='ImprimirTrans' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>

