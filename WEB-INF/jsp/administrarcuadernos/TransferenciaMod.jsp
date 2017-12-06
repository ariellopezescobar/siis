<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adiciontransf" method="POST">
<table class="formulario" width="100%">
  <tr>
    <th colspan="3">MODIFICA DATOS DE LA TRANSFERENCIA</th>
  </tr>
  <tr>    
     <td colspan="3">Nombres:: <c:out value = "${datos.nombres}"/>&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datos.hcl}"/>&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datos.nro_registro}"/></td>
  </tr>
  <tr >
    <td valign="top" >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="6"><font size=2>DATOS ESTABLECIMIENTO DE SALUD DE REFERENCIA</font></th>
      </tr>
      
      <tr>
        <td class="etiqueta">Departamento <br> Referencia<font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
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
   
        <td class="etiqueta">Establecimiento <br> Referencia<font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td>
          <SELECT NAME="cod_esta">
            <option value="0">-- seleccione --  
            <c:forEach var="estab" items="${listaEstab}">
	      <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == Listat.condon}">selected</c:if>> 
	        <c:out value="${estab.establecimiento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr>
      <td class="etiqueta">Al servicio de<br> Referencia <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
            <SELECT NAME="id_servicio">
                <c:if test="${Listat.id_cuaderno == '0'}">
                  <option value="0" selected> Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if>
                <c:if test="${Listat.id_cuaderno == '1'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" selected> Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if>
                <c:if test="${Listat.id_cuaderno == '2'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" selected> Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if>    
                <c:if test="${Listat.id_cuaderno == '3'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" selected> UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if>    
                <c:if test="${Listat.id_cuaderno == '4'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" selected> UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if> 
                <c:if test="${Listat.id_cuaderno == '5'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" selected> UCA TRAUMATOLOGIA </option>
                  <option value="100" > Otros </option>
                </c:if>
                <c:if test="${Listat.id_cuaderno == '100'}">
                  <option value="0" > Consulta Externa </option>
                  <option value="1" > Emergencias</option>
                  <option value="2" > Hospitalizacion</option>
                  <option value="3" > UTI </option>
                  <option value="4" > UCIN </option>
                  <option value="5" > UCA TRAUMATOLOGIA </option>
                  <option value="100" selected> Otros </option>
                </c:if>    
          </SELECT>      
        </td>
     
        <td class="etiqueta">Especialidad de<br> Referencia <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_consultorio">
            <c:forEach var="estado" items="${listarCargos}">
               <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == Listat.id_cargo}">selected</c:if>>
	         <c:out value="${estado.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
       </td>
       </tr>    
       <tr>
        <td class="etiqueta">Fecha Trasferencia <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
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
    <table class="formulario" width="100%">
     <tr>
       <td class="etiqueta"> Diagnostico de Transferencia::<font color='red'>(*)</font> </td>
       <td bgcolor="blue" colspan="3" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%"><c:out value = "${Listat.diagnostico}" escapeXml="False"/></textarea></td>
    </tr> 
    <tr>
       <td class="etiqueta"> Laboratorios Efectuados::<font color='red'>(*)</font> </td>
       <td bgcolor="blue" colspan="3" ><textarea name="laboratorio" rows="2" cols="60" style="width: 100%"><c:out value = "${Listat.laboratorio}" escapeXml="False"/></textarea></td>
    </tr>
    <tr>
       <td class="etiqueta"> Tratamiento Realizado::<font color='red'>(*)</font> </td>
       <td bgcolor="blue" colspan="3" ><textarea name="tratamiento" rows="2" cols="60" style="width: 100%"><c:out value = "${Listat.aspecto}" escapeXml="False"/></textarea></td>
    </tr>
    <tr>
       <td class="etiqueta"> Recomendaciones::<font color='red'>(*)</font> </td>
       <td bgcolor="blue" colspan="3" ><textarea name="recomienda" rows="2" cols="60" style="width: 100%"><c:out value = "${Listat.cetonas}" escapeXml="False"/></textarea></td>
    </tr>
  </table>
  
  
</table>
<center>
  <input type="submit" class="siguiente" value='GuardarModificacion' onclick="document.adiciontransf.accion.value='Modificar';
                                                                      document.adiciontransf.action='<c:url value="/Transferencia.do"/>'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_trans'            value='<c:out value="${id_trans}"/>'>
    <input type="hidden" name='accion'              value='<c:out value="${accion}"/>'>
    <input type="hidden" name='recargado'           value='Si'>
</form>

<table class="tabla" border="1"><tr>
 <td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div class="volver"><a href="javascript:document.formaL1.submit();">Retornar</a></div>
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
  
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> Hora </th>
    <th> PACIENTE</th>
    <th> HOSPITAL DE</th>
    <th> SERVICIO DE </th>
    <th> ESPECIALIDAD DE </th>
    <th> DIAGNOSTICO </th>
    <th> ELIMINAR </th> 
    <th> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarTransfer}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
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
         <input type="hidden" name="accion"         value='ModificaTrans' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/Transferencia.do"/>'>
       <td>     
         <div class="imprimir"><a href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_trans'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="accion"         value='ImprimirTrans' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
   </c:forEach>
 </table>

