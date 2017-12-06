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
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><c:out value="${fec_nacimiento}"/></td>
    	<td style="color:blue" align="right"><b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                 
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>          
        <td style="font-size:9pt" colspan="4"><b><c:out value = "${datos.direccion}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color:blue>Ocupacion:</font><c:out value = "${datos.ocupacion}"/></b></td>
      </tr>  
   </table>
   <center>
       
   <table class="table table-striped table-condensed table-responsive">
    <tr>   
       <td><form name=formaL11 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div><a class="btn btn-success" href="javascript:document.formaL11.submit();">Retornar</a></div>
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
         <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
      <td><form name=formaHiff<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
         <a class="btn btn-info" href="javascript:document.formaHiff<c:out value="${contador.count}"/>.submit();">ImprimeHojaAtencion
          <input type="hidden" name='id_historial'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >   
          <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>      
          <input type="hidden" name="accionc"         value='imprimeHCLcaja'>
     </form></td>
     <td><form name=formaHiff2<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
         <a class="btn btn-info" href="javascript:document.formaHiff2<c:out value="${contador.count}"/>.submit();">Prediseñado_Anverso
          <input type="hidden" name='id_historial'  value='<c:out value="${id_reservacion}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >     
          <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>    
          <input type="hidden" name="accionc"         value='imprimeAnverso'>
     </form></td>
     <td><form name=formaHiff3<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
         <a class="btn btn-info" href="javascript:document.formaHiff3<c:out value="${contador.count}"/>.submit();">Prediseñado_Reverso
          <input type="hidden" name='id_historial'  value='<c:out value="${id_reservacion}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >   
          <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
          <input type="hidden" name="accionc"         value='imprimeReverso'>
     </form></td>
    </tr>  
   </table>      
   </center>
       
<form name="adicionarcolegio" method="POST" action='<c:url value="/AtenderPaciente.do"/>' > 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="2"><center>HOJA DE ATENCION SERVICIO DE EMERGENCIAS</center></th>
  </tr>
    <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> Motivo de Consulta </u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Personales Patologicos</u> </td>
     </tr>
     <tr>
        <td>
           <c:if test="${fn:length(historiaenfer)>0}">
               <textarea name="historiaenfer" rows="2" cols="80" style="width: 100%"><c:out value = "${historiaenfer}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(historiaenfer)==0}">
               <textarea name="historiaenfer" rows="2" cols="80" style="width: 100%" placeholder="Motivo de la consulta ..."></textarea>
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
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Familiares (Importantes)</u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> Antecedentes Giceco-Obtetricos (si corresponde)</u> </td>
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
            <c:if test="${fn:length(antgineco)>0}">
               <textarea name="antgineco" rows="2" cols="80" style="width: 100%"><c:out value = "${antgineco}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(antgineco)==0}">
               <textarea name="antgineco" rows="2" cols="80" style="width: 100%" placeholder="Escriba los antecedentes ginecologicos como : FUM ..."></textarea>
            </c:if>
        </td>
     </tr>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u> Historia de la Enfermedad</font> </u> </td>
        <td bgcolor="#F2F2F2" align="right"><u> EXAMEN FISICO GENERAL</u> </td>
     </tr>
     <tr>
        <td>
            <c:if test="${fn:length(subjetivo)>0}">
               <textarea name="subjetivo" rows="2" cols="80" style="width: 100%"><c:out value = "${subjetivo}" escapeXml="False"/></textarea>
            </c:if>
            <c:if test="${fn:length(subjetivo)==0}">
               <textarea name="subjetivo" rows="2" cols="80" style="width: 100%" placeholder="Escriba la historia de la enfermedad..."></textarea>
            </c:if>       
        </td>
        <td>       
            <c:if test="${fn:length(objetivo)>0}">
               <textarea name="objetivo" rows="2" cols="80" style="width: 100%"><c:out value = "${objetivo}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(objetivo)==0}">
               <textarea name="objetivo" rows="2" cols="80" style="width: 100%" placeholder="Examen Fisico General ..."></textarea>
            </c:if>
        </td>
     </tr>
     <th colspan="2">
       Talla[cm]&nbsp;:&nbsp;<c:out value = "${datoshisto.talla}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Peso[Kg]&nbsp;:&nbsp;<c:out value = "${datoshisto.peso}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Temperatura[ºC]&nbsp;:&nbsp;<c:out value = "${datoshisto.temperatura}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FC[lpm]&nbsp;:&nbsp;<c:out value = "${datoshisto.fc}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PA[mmHg]&nbsp;:&nbsp;<c:out value = "${datoshisto.pa}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FR[cpm]&nbsp;:&nbsp;<c:out value = "${datoshisto.fr}"/> 
     </th>
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"> <u>DIAGNOSTICO PRESUNTIVO </font></u> </td>
        <td bgcolor="#F2F2F2" align="right"> <u>EVOLUCION DURANTE LA OBSERVACION</u> </td>
     </tr>
     <tr>  
       <td>
           <c:if test="${fn:length(diagnostico)>0}">
               <textarea name="pdiagnostico" rows="2" cols="80" style="width: 100%"><c:out value = "${diagnostico}" escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(diagnostico)==0}">
               <textarea name="pdiagnostico" rows="2" cols="80" style="width: 100%" placeholder="Diagnostico presuntivo de la enfermedad ..."></textarea>
            </c:if>
       </td>  
       <td>
           <c:if test="${fn:length(evolucion)>0}">
               <textarea name="evolucion" rows="2" cols="80" style="width: 100%"><c:out value = "${evolucion}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(evolucion)==0}">
               <textarea name="evolucion" rows="2" cols="80" style="width: 100%" placeholder="Evolucion del paciente ..."></textarea>
            </c:if>  
       </td>
     </tr> 
     <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"> <u>CONDUCTA FINAL INTERNACION ALTA TRANSFERENCIA A :</u> </td>
        <td bgcolor="#F2F2F2" align="right"> <u>CONDICIONES DE ALTA Y/O TRANSFERENCIA</u> </td>
     </tr>
     <tr>  
       <td>
           <c:if test="${fn:length(conducta)>0}">
               <textarea name="conducta" rows="2" cols="80" style="width: 100%"><c:out value = "${conducta}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(conducta)==0}">
               <textarea name="conducta" rows="2" cols="80" style="width: 100%" placeholder="Conducta final internacion, alta o transferencia ..."></textarea>
            </c:if>
        </td>  
        <td>
           <c:if test="${fn:length(condicion)>0}">
               <textarea name="condicion" rows="2" cols="80" style="width: 100%"><c:out value = "${condicion}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(condicion)==0}">
               <textarea name="condicion" rows="2" cols="80" style="width: 100%" placeholder="Condicion de alta o trasferencia ..."></textarea>
            </c:if>
        </td>
     </tr> 
      <tr style="font-size:11pt">
        <td bgcolor="#F2F2F2" align="right"><u>RECOMENDACIONES</u></td>
        <td bgcolor="#F2F2F2" align="right"><u>OBSERVACIONES</u></td>
     </tr>
     <tr>  
       <td>
           <c:if test="${fn:length(miaccion)>0}">
               <textarea name="paccion" rows="2" cols="80" style="width: 100%"><c:out value = "${miaccion}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(miaccion)==0}">
               <textarea name="paccion" rows="2" cols="80" style="width: 100%" placeholder="Recomendaciones hacia el paciente ..."></textarea>
            </c:if>
        </td>  
        <td>
           <c:if test="${fn:length(observacion)>0}">
               <textarea name="observacion" rows="2" cols="80" style="width: 100%"><c:out value = "${observacion}"  escapeXml="False" /></textarea>
            </c:if>
            <c:if test="${fn:length(observacion)==0}">
               <textarea name="observacion" rows="2" cols="80" style="width: 100%" placeholder="Observaciones adicionales ..."></textarea>
            </c:if>
        </td>
     </tr> 

     </tr> 
 
     </td>
   </tr> 
 <tr>   

 <td colspan=2>
 <center>
   <!-- <input type="submit" name='accion' class="modificar" value='Grabar Modificaciones'>
    <input type="submit" name='accion' class="siguiente" value='Crear Nuevo Registro'>  -->
    <input type="submit" name='accion' class="btn btn-primary" value='Guardarr'> 
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
         <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
     
</tr>
</table>


   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA<br>HORA</th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE</th>
    <th bgcolor="#F2F2F2"> NOMBRE MEDICO</th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> RECOMENDACIONES </th>
    <th bgcolor="#F2F2F2"> TIPO </th> 
    <th bgcolor="#F2F2F2"> Modificar </th> 
    <th bgcolor="#F2F2F2"> Imprimir </th> 
    </tr>  
   <c:forEach var="lista" items="${listaemerg}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><br><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b><br><font color="blue"><c:out value="${lista.cama}"/></font></td>
       <td><c:out value="${lista.nombre}"/><br><font color="greem"><c:out value="${lista.id_historia}"/></font></td>   
       <td><c:out value="${lista.nombres}"/><br><font color="blue"><c:out value="${lista.consultorio}"/></font></td>
       <td><c:out value="${lista.cadena21}"/></td>
       <td><c:out value="${lista.cadena20}"/></td>  
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
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='suaccion'        value='<c:out value="${suaccion}"/>'>
         <input type="hidden" name='swemerg'         value='<c:out value="${swemerg}"/>'>
         <input type="hidden" name="accion"          value='HCL Emergencias'>
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
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
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


