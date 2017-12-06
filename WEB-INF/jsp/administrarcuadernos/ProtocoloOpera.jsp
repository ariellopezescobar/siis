<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionadmi" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
    <th colspan="9"><center>DATOS PROTOCOLO OPERATORIO DEL PACIENTE</center></th>
  </tr>
  <tr>    
     <td colspan="9">Nombres:: <c:out value = "${datos.nombres}"/>&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datos.hcl}"/>&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datos.nro_registro}"/>&nbsp;&nbsp;&nbsp;Codigo:: <c:out value = "${datos.nro}"/></td>
  </tr>
  <tr>
    <td valign="top" >
    
   <table class="table table-striped table-bordered table-condensed table-responsive"> 
      <tr>
        <th colspan="9"><font size=2><center>DATOS PROTOCOLO DEL PACIENTE</center></font></th>
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
            <input type="hidden" name='id_opera'             value='<c:out value="${id_opera}"/>'>
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
            <input type="hidden" name='id_opera'             value='<c:out value="${id_opera}"/>'>
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
     <td class="etiqueta" > Quirofano </td>
       <td colspan="1">
          <SELECT NAME="id_quirofano" >
	    <c:forEach var="estado" items="${listarQuirofanos}">
               <option value="<c:out value="${estado.id_quirofano}"/>" <c:if test="${estado.id_quirofano == id_quirofano}">selected</c:if>>
	         <c:out value="${estado.quirofano}"/>
               </option>
            </c:forEach>
           </SELECT>	
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
       </td>
       
        <td class="etiqueta" > Fecha </td>
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
   </tr>   
       
    </table>
    </td>
  </tr>
  
  <tr>
    <td>
    <table class="table table-striped table-bordered table-condensed table-responsive"> 
     <tr style="font-size:10pt">
       <td class="etiqueta"> Diagnostico<br> post Oparatorio</td>
       <td bgcolor="blue" colspan="16" ><textarea name="diagnosticopost" rows="2" cols="60" style="width: 100%""/><c:out value = "${diagnosticopost}" escapeXml="False"/></textarea></td>
    </tr> 
    <tr style="font-size:10pt">
       <td class="etiqueta"> Riesgo Operatorio</td>
       <td colspan="4"><SELECT NAME="riesgo">
              <c:if test="${riesgo=='1' }"> 
                  <OPTION value="1" >Leve </option>
                  <OPTION value="2" >Mediano </option>
                  <OPTION value="3" >Grave </option>
              </c:if>
              <c:if test="${riesgo=='2' }"> 
                  <OPTION value="2" >Mediano </option>
                  <OPTION value="3" >Grave </option>
                  <OPTION value="1" >Leve </option>
              </c:if>
              <c:if test="${riesgo=='3' }"> 
                  <OPTION value="3" >Grave </option>
                  <OPTION value="1" >Leve </option>
                  <OPTION value="2" >Mediano </option>
              </c:if>
              <c:if test="${riesgo!='1' and riesgo!='2' and riesgo!='3' }"> 
                  <OPTION value="1" >Leve </option>
                  <OPTION value="2" >Mediano </option>
                  <OPTION value="3" >Grave </option>
              </c:if>
          </SELECT>	</td>                      
       <td class="etiqueta"> Cirujano Dr.</td>
       <td colspan="4"><input type="text" name="cirujano" value="<c:out value="${cirujano}"/>" size="35" maxlength="50" value=""/></td>   
       <td class="etiqueta"> Instrumentadora</td>
       <td colspan="4"><input type="text" name="instrumentador" value="<c:out value="${instrumentador}"/>" size="35" maxlength="50" value=""/></td>        	          
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Tipo Anestecia</td>
       <td colspan="4"><SELECT NAME="anestecia">
              <c:if test="${anestecia=='1' }"> 
                  <OPTION value="1" >General </option>
                  <OPTION value="2" >Local </option>
                  <OPTION value="3" >Regional </option>
                  <OPTION value="4" >Raquidea </option>
                  <OPTION value="5" >Otro </option>
              </c:if>
              <c:if test="${anestecia=='2' }"> 
                  <OPTION value="2" >Local </option>
                  <OPTION value="3" >Regional </option>
                  <OPTION value="4" >Raquidea </option>
                  <OPTION value="5" >Otro </option>
                  <OPTION value="1" >General </option>
              </c:if>
              <c:if test="${anestecia=='3' }"> 
                  <OPTION value="3" >Regional </option>
                  <OPTION value="4" >Raquidea </option>
                  <OPTION value="5" >Otro </option>
                  <OPTION value="1" >General </option>
                  <OPTION value="2" >Local </option>
              </c:if>
              <c:if test="${anestecia=='4' }"> 
                  <OPTION value="4" >Raquidea </option>
                  <OPTION value="5" >Otro </option>
                  <OPTION value="1" >General </option>
                  <OPTION value="2" >Local </option>
                  <OPTION value="3" >Regional </option>
              </c:if>
              <c:if test="${anestecia=='5' }"> 
                  <OPTION value="5" >Otro </option>
                  <OPTION value="1" >General </option>
                  <OPTION value="2" >Local </option>
                  <OPTION value="3" >Regional </option>
                  <OPTION value="4" >Raquidea </option>
              </c:if>
              <c:if test="${anestecia!='1' and anestecia!='2' and anestecia!='3' and anestecia!='4' and anestecia!='5' }"> 
                  <OPTION value="1" >General </option>
                  <OPTION value="2" >Local </option>
                  <OPTION value="3" >Regional </option>
                  <OPTION value="4" >Raquidea </option>
                  <OPTION value="5" >Otro </option>
              </c:if>
          </SELECT>	</td> 
       <td class="etiqueta"> Ayudante Nº1</td>
       <td colspan="4"><input type="text" name="ayudante" value="<c:out value="${ayudante}"/>" size="35" maxlength="50" value=""/></td>   
       <td class="etiqueta"> Circulante</td>
       <td colspan="4"><input type="text" name="circulante" value="<c:out value="${circulante}"/>" size="35" maxlength="50" value=""/></td>        	          
    </tr>
    <tr style="font-size:10pt">
           <td class="etiqueta"> Instrumental Esteril.</td>
           <td colspan="4"><SELECT NAME="instrumental">
              <c:if test="${instrumental=='1' }"> 
                  <OPTION value="1" >Al seco </option> v
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
              </c:if>
              <c:if test="${instrumental=='2' }"> 
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
                  <OPTION value="1" >Al seco </option>
              </c:if>
              <c:if test="${instrumental=='3' }"> 
                  <OPTION value="3" >Vapor </option>
                  <OPTION value="1" >Al seco </option>
                  <OPTION value="2" >Hervido </option>
              </c:if>
              <c:if test="${instrumental!='1' and instrumental!='2' and instrumental!='3' }"> 
                  <OPTION value="1" >Al seco </option> 
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
              </c:if>
          </SELECT>	</td>  
       <td class="etiqueta"> Id 2º</td>
       <td colspan="4"><input type="text" name="ayudante2" value="<c:out value="${ayudante2}"/>" size="35" maxlength="50" value=""/></td>   
       <td class="etiqueta"> Anestecista</td>
       <td colspan="4"><input type="text" name="anestecista" value="<c:out value="${anestecista}"/>" size="35" maxlength="50" value=""/></td>        	          
    </tr>
    <tr style="font-size:10pt">        
        <td class="etiqueta"> Guantes</td>
        <td colspan="4"><SELECT NAME="guantes">
              <c:if test="${guantes=='1' }"> 
                  <OPTION value="1" >Al seco </option>
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
              </c:if>
              <c:if test="${guantes=='2' }"> 
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
                  <OPTION value="1" >Al seco </option>
              </c:if>
              <c:if test="${guantes=='3' }"> 
                  <OPTION value="3" >Vapor </option>
                  <OPTION value="1" >Al seco </option>
                  <OPTION value="2" >Hervido </option>
              </c:if>
              <c:if test="${guantes!='1' and guantes!='2' and guantes!='3' }"> 
                  <OPTION value="1" >Al seco </option> 
                  <OPTION value="2" >Hervido </option>
                  <OPTION value="3" >Vapor </option>
              </c:if>
          </SELECT>	</td>            
       <td class="etiqueta"> Id 3º</td>
       <td colspan="4"><input type="text" name="ayudante3" value="<c:out value="${ayudante3}"/>" size="35" maxlength="50" value=""/></td>   
       <td class="etiqueta"> Ayudante</td>
       <td colspan="4"><input type="text" name="ayudantea" value="<c:out value="${ayudantea}"/>" size="35" maxlength="50" value=""/></td>        	          
    </tr>
     <tr style="font-size:10pt">
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Material Sutura<br> Empleado </td>
       <td bgcolor="blue" colspan="16" ><textarea name="material" rows="2" cols="60" style="width: 100%"/><c:out value = "${material}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Nombre Tecnico Operacion </td>
       <td colspan="7"><input type="text" name="nombretecnico" value="<c:out value="${nombretecnico}"/>" size="50" maxlength="50" value=""/></td> 	
       <td class="etiqueta"> Duracion Operacion</td>
       <td colspan="7"><input type="text" name="duracion" value="<c:out value="${duracion}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Incision </td>
       <td colspan="7"><input type="text" name="insicion" value="<c:out value="${insicion}"/>" size="50" maxlength="50" value=""/></td>                      
       <td class="etiqueta"> Tipo Cierre</td>
       <td colspan="7"><input type="text" name="cierre" value="<c:out value="${cierre}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Quien Cerro </td>
       <td colspan="7"><input type="text" name="quien" value="<c:out value="${quien}"/>" size="50" maxlength="50" value=""/></td>                      
       <td class="etiqueta"> Drenajes</td>
       <td colspan="7"><input type="text" name="drenaje" value="<c:out value="${drenaje}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Medicacion Operacion <br>Sangre</td>
       <td colspan="7"><input type="text" name="sangre" value="<c:out value="${sangre}"/>" size="50" maxlength="50" value=""/></td>                      
       <td class="etiqueta"> Plasma</td>
       <td colspan="7"><input type="text" name="plasma" value="<c:out value="${plasma}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta"> Suero</td>
       <td colspan="7"><input type="text" name="suero" value="<c:out value="${suero}"/>" size="50" maxlength="50" value=""/></td>                      
       <td class="etiqueta"> Otras</td>
       	
       <td colspan="7"><input type="text" name="otros" value="<c:out value="${otros}"/>" size="50" maxlength="50" value=""/></td>                      
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Exploracion<br>Hallasgos</td>
       <td bgcolor="blue" colspan="16" ><textarea name="hallasgo" rows="2" cols="60" style="width: 100%"/><c:out value = "${hallasgo}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Diagnostico <br>Pre-operatorio</td>
       <td bgcolor="blue" colspan="16" ><textarea name="diagnostico" rows="2" cols="60" style="width: 100%"/><c:out value = "${diagnostico}" escapeXml="False"/></textarea></td>
    </tr>
    <tr style="font-size:10pt">
       <td class="etiqueta" > Descripcion <br>de la Operacion</td>
       <td bgcolor="blue" colspan="16" ><textarea name="descripcion" rows="2" cols="60" style="width: 100%"/><c:out value = "${descripcion}" escapeXml="False"/></textarea></td>
    </tr>
  </table>
  </td>
  </tr>
</table>

<center>
  <input type="submit" class="btn btn-primary btn-lg" value='Guardar' onclick="document.adicionadmi.accion.value='Guardar';
                                                                      document.adicionadmi.action='<c:url value="/ProtocoloOpera.do"/>'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_opera'            value='<c:out value="${id_opera}"/>'>
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
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Hora </th>
    <th bgcolor="#F2F2F2"> PACIENTE</th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO</th>
    <th bgcolor="#F2F2F2"> CIRUJANO</th>
    <th bgcolor="#F2F2F2"> ANESTECIOLOGO </th>
    <th bgcolor="#F2F2F2"> INSTRUMENTISTA </th>
    <th bgcolor="#F2F2F2"> REALIZADO POR </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarProt}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><c:out value="${lista.id_laboratorio}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.cadena1}"/></td>  
       <td><c:out value="${lista.cadena2}"/></td>
       <td><c:out value="${lista.cadena8}"/></td> 
       <td><c:out value="${lista.cadena6}"/></td>
       <td><c:out value="${lista.cadena24}"/></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ProtocoloOpera.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_opera'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaProt'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/ProtocoloOpera.do"/>'>
       <td>     
         <div ><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_opera'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="accion"         value='ImprimirProt'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>

