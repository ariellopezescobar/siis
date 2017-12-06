<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>DATOS PERSONALES PACIENTE</center></th>
  </tr>
  <tr>
    <td colspan="2" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
        <td  align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>
        <td  align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><c:out value="${fec_nacimiento}"/></td>
    	<td style="color:blue" align="right"><b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                 
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>    	      
        <td style="font-size:9pt" colspan="4"><b><c:out value = "${datos.direccion}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color:blue>Ocupacion:</font><c:out value = "${datos.ocupacion}"/></b></td>
      </tr>  
   </table>
  
   <center>
   <table class="formulario" width="100%">
       
      <tr>   
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
      <td>
    <form name=formaHiff<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
         <a class="btn btn-info" href="javascript:document.formaHiff<c:out value="${contador.count}"/>.submit();">ImprimeHistoriaClinica
          <input type="hidden" name='id_historial'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >    
          <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >     
          <input type="hidden" name="accionc"         value='imprimeHCLCompcaja'>
     </form>     
    </td></tr>  
   </table>      
   </center>
       
<form name="adicionarcolegio" method="POST" action='<c:url value="/AtenderPaciente.do"/>' > 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="2"><center>HISTORIA CLINICA COMPLETA SERVICIO DE EMERGENCIAS</center></th>
  </tr>
    <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> Datos de Introduccion del Paciente </u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Personales Patologicos Clinicos</u> </td>
     </tr>
     <tr>
        <td>
           <c:if test="${fn:length(cadena1)>0}">
               <textarea name="introduccion" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena1}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena1)==0}">
               <textarea name="introduccion" rows="2" cols="80" style="width: 100%" placeholder="Datos generales del paciente : edad, sexo, estado civil, procedencia, lugar residencia, ocupacion, fuente informacion, etc..."></textarea>
            </c:if>
        </td>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <td> 
            <c:if test="${fn:length(antpato)>0}">
               <textarea name="antpato" rows="2" cols="80" style="width: 100%"><c:out value = "${antpato}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(antpato)==0}">
               <textarea name="antpato" rows="2" cols="80" style="width: 100%" placeholder="Escriba los antecedentes patologicos clinicos del paciente..."></textarea>
            </c:if>
            
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes No Patologicos)</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Giceco-Obtetricos (si corresponde)</u> </td>
     </tr>
     <tr>
        <td>
            <c:if test="${fn:length(cadena2)>0}">
               <textarea name="ant_nopato" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena2}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena2)==0}">
               <textarea name="ant_nopato" rows="2" cols="80" style="width: 100%" placeholder="Escriba los antecedentes NO patologicos como: vivienda, alimentacion, fuma, alcohol, etc..."></textarea>
            </c:if>
        </td>
        <td>
            <c:if test="${fn:length(antgineco)>0}">
               <textarea name="antgineco" rows="2" cols="80" style="width: 100%"><c:out value = "${antgineco}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(antgineco)==0}">
               <textarea name="antgineco" rows="2" cols="80" style="width: 100%" placeholder="Escriba los antecedentes ginecologicos como : FUM ..."></textarea>
            </c:if>
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Familiares (Importantes)</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> Historia de la Enfermedad</font> </u> </td>
     </tr>
     <tr>
        <td>
            <c:if test="${fn:length(antfami)>0}">
               <textarea name="antfami" rows="2" cols="80" style="width: 100%"><c:out value = "${antfami}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(antfami)==0}">
               <textarea name="antfami" rows="2" cols="80" style="width: 100%" placeholder="Escriba los antecedentes familiares como: padre, madre, hermanos, hijos..."></textarea>
            </c:if>
        </td>
        <td>
            <c:if test="${fn:length(subjetivo)>0}">
               <textarea name="subjetivo" rows="2" cols="80" style="width: 100%"><c:out value = "${subjetivo}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(subjetivo)==0}">
               <textarea name="subjetivo" rows="2" cols="80" style="width: 100%" placeholder="Escriba la historia de la enfermedad..."></textarea>
            </c:if>       
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO GENERAL</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO CABEZA</u> </td>
     </tr>
     <tr>
        <td>       
            <c:if test="${fn:length(objetivo)>0}">
               <textarea name="objetivo" rows="2" cols="80" style="width: 100%"><c:out value = "${objetivo}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(objetivo)==0}">
               <textarea name="objetivo" rows="2" cols="80" style="width: 100%" placeholder="Examen Fisico General ..."></textarea>
            </c:if>
        </td>
         <td>
            <c:if test="${fn:length(cadena3)>0}">
               <textarea name="fisico_cabeza" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena3}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena3)==0}">
               <textarea name="fisico_cabeza" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la cabeza..."></textarea>
            </c:if>       
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO CARA</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO CUELLO</u> </td>
     </tr>
     <tr>
        <td>       
            <c:if test="${fn:length(cadena4)>0}">
               <textarea name="fisico_cara" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena4}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena4)==0}">
               <textarea name="fisico_cara" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la cara..."></textarea>
            </c:if>
        </td>
        <td>
            <c:if test="${fn:length(cadena5)>0}">
               <textarea name="fisico_cuello" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena5}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena5)==0}">
               <textarea name="fisico_cuello" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la cuello..."></textarea>
            </c:if>   
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO TORAX</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO PULMONES</u> </td>
     </tr>
     <tr>
        <td>       
            <c:if test="${fn:length(cadena6)>0}">
               <textarea name="fisico_torax" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena6}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena6)==0}">
               <textarea name="fisico_torax" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la torax..."></textarea>
            </c:if>
        </td>
        <td>
            <c:if test="${fn:length(cadena7)>0}">
               <textarea name="fisico_pulmon" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena7}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena7)==0}">
               <textarea name="fisico_pulmon" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la pulmones..."></textarea>
            </c:if>   
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO CORAZON</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO ABDOMEN</u> </td>
     </tr>
     <tr>
        <td>       
            <c:if test="${fn:length(cadena8)>0}">
               <textarea name="fisico_corazon" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena8}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena8)==0}">
               <textarea name="fisico_corazon" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la corazon..."></textarea>
            </c:if>
        </td>
        <td>
            <c:if test="${fn:length(cadena9)>0}">
               <textarea name="fisico_abdomen" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena9}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena9)==0}">
               <textarea name="fisico_abdomen" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la abdomen..."></textarea>
            </c:if>     
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO EXTREMIDADES</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO GENITOURINARIO</u> </td>
     </tr>
     <tr>
        <td>       
            <c:if test="${fn:length(cadena10)>0}">
               <textarea name="fisico_extrem" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena10}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena10)==0}">
               <textarea name="fisico_extrem" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la extremidades ..."></textarea>
            </c:if>
        </td>
        <td>
           <c:if test="${fn:length(cadena11)>0}">
               <textarea name="fisico_genito" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena11}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena11)==0}">
               <textarea name="fisico_genito" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la aparato genito-urinario..."></textarea>
            </c:if>      
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO SEGMENTADO NEUROLOGICO</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> IMPRESION DIAGNOSTICA  </font></u> </td>
     </tr>
     <tr>
        <td>
            <c:if test="${fn:length(cadena12)>0}">
               <textarea name="fisico_neuro" rows="2" cols="80" style="width: 100%"><c:out value = "${cadena12}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(cadena12)==0}">
               <textarea name="fisico_neuro" rows="2" cols="80" style="width: 100%" placeholder="Examen fisico de la neurologico..."></textarea>
            </c:if>       
        </td>
        <td>
            <c:if test="${fn:length(diagnostico)>0}">
               <textarea name="pdiagnostico" rows="2" cols="80" style="width: 100%"><c:out value = "${diagnostico}" escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(diagnostico)==0}">
               <textarea name="pdiagnostico" rows="2" cols="80" style="width: 100%" placeholder="Diagnostico presuntivo de la enfermedad ..."></textarea>
            </c:if>      
        </td>
     </tr>
 
     </td>
   </tr> 
 <tr>   
 <td colspan=3>
<center>       
<input type="submit" name='accion' class="btn btn-primary" value='Siguientee'>  
</center>
<input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
<input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
 <input type="hidden" name='id_historia'    value='<c:out value="${id_historia}"/>'>
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='talla'           value='<c:out value="${talla}"/>'>
<input type="hidden" name='peso'            value='<c:out value="${peso}"/>'>
<input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
<input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
<input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
<input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>
<input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >         
<input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
<input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
<input type="hidden" name='edad'            value='<c:out value="${datos.edad}"/>'>
<input type="hidden" name='mes'             value='<c:out value="${datos.mes}"/>'>
<input type="hidden" name='swemerg'         value='<c:out value="${swemerg}"/>'>
<input type="hidden" name='accion'          value='Siguientee'>
<input type="hidden" name='sw'              value='objetivo'>
  </td>
   </tr>   
</table>
</form>
  </td>
</tr>
</table>


<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA<br>HORA</th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE</th>
    <th bgcolor="#F2F2F2"> NOMBRE MEDICO</th>
    <th bgcolor="#F2F2F2"> EXAMEN FISICO </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> TIPO </th> 
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaemerg}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><c:out value="${lista.id_historia}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><br><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b><br><font color="blue"><c:out value="${lista.cama}"/></font></td>
       <td><c:out value="${lista.nombre}"/><br><font color="greem"><c:out value="${lista.id_historia}"/></font></td>
       <td><c:out value="${lista.nombres}"/><br><font color="blue"><c:out value="${lista.consultorio}"/></font></td>
       <td><c:out value="${lista.cadena20}"/></td>  
       <td><c:out value="${lista.cadena21}"/></td>
       <c:if test="${lista.id_tipo=='1'}">
               <td style="font-size:15pt; color:red">Historia<br> Emergencias</td>
       </c:if>
       <c:if test="${lista.id_tipo=='3'}">
               <td style="font-size:15pt; color:blue">Nota de <br> Internacion</td>
       </c:if>
       <c:if test="${lista.id_tipo=='2'}">
               <td style="font-size:15pt; color:narrow">Historia<br> Clinica</td>
       </c:if>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_historia'     value='<c:out value="${lista.id_historia}"/>'>
         <input type="hidden" name='cod_esta'        value='<c:out value="${lista.cod_esta}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
         <input type="hidden" name='swemerg'         value='<c:out value="${swemerg}"/>'>
         <input type="hidden" name="accion"          value='Historia Clinica'>
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-info" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_historia'     value='<c:out value="${lista.id_historia}"/>'>
         <input type="hidden" name='cod_esta'        value='<c:out value="${lista.cod_esta}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
         <input type="hidden" name='swemerg'         value='<c:out value="${swemerg}"/>'>
         <c:if test="${lista.id_tipo=='1'}">
               <input type="hidden" name="accionc"         value='imprimeHCLcaja'>
         </c:if>
         <c:if test="${lista.id_tipo=='2'}">
               <input type="hidden" name="accionc"         value='imprimeHCLCompcaja'>
         </c:if>
         <c:if test="${lista.id_tipo=='3'}">
               <input type="hidden" name="accionc"         value='imprimeNotaIntCaja'>
         </c:if>
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>



