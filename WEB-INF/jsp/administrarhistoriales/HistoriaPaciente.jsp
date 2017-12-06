<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="7"><center>HISTORIAL MEDICO DEL PACIENTE</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr style="font-size:10pt">
       <td class="etiqueta" align="right">No. HCL - Nombre Completo</td>    
       <td><b><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></b></td>
      <tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="right">Fecha de Nacim. / Edad</td>    
        <td><b><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="3"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></b></td>	                 
      </tr>
      <tr style="font-size:10pt">    
            <td class="etiqueta" align="right">Sexo - Direccion</td>
            <c:if test="${datos.id_tipo_sexo=='1'}">
                <td class="etiqueta"><b>FEMENINO&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></b></td>
            </c:if>
            <c:if test="${datos.id_tipo_sexo=='2'}">
                <td class="etiqueta"><b>MASCULINO&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></b></td>
            </c:if>  	      
      </tr>   
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr >    
            <td class="etiqueta" align="right">Factores de Riesgo</td>          
            <td class="etiqueta" style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
  
   </table>
  </td>
  </tr>
</table>
</center>      

<c:if test="${tipo_medico > 0 }">
<table class="tabla" border="0">
  <tr>
     <td ><form name=formaM method=post action='<c:url value="/HistorialAtendidos.do"/>'>
         <div class="Imprimir"><a class="btn btn-success" href="javascript:document.formaM.submit();">ImprimeHCL</a></div>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='accion'          value='imprimeHCL'>
     </form></td>
     <td><form name=formaMC method=post action='<c:url value="/HistorialAtendidos.do"/>'>
             <div class="Imprimir"><a class="btn btn-success" href="javascript:document.formaMC.submit();">ImprimeCaratula</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name='accion'          value='imprimeHCLCara'>
     </form></td>
     <td><form name=formaC1 method=post action='<c:url value="/Cuaderno1.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC1.submit();">C1</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno1' >
     </form></td>
     <td><form name=formaC2 method=post action='<c:url value="/Cuaderno2.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC2.submit();">C2</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno2' >
     </form></td>
     <td><form name=formaC3 method=post action='<c:url value="/Cuaderno3.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC3.submit();">C3</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno3' >
     </form></td>
     <td><form name=formaC4 method=post action='<c:url value="/Cuaderno4.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC4.submit();">C4</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno4' >
     </form></td>
     <td><form name=formaC5 method=post action='<c:url value="/Cuaderno5.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC5.submit();">C5</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno5' >
     </form></td>
     <td><form name=formaC6 method=post action='<c:url value="/Cuaderno6.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC6.submit();">C6</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno6' >
     </form></td>
     <td><form name=formaC7 method=post action='<c:url value="/Cuaderno7.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaC7.submit();">C7</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Cuaderno7' >
     </form></td>
      <td><form name=formaCV method=post action='<c:url value="/Vacunas.do"/>'>
             <div class="Imprimir"><a class="btn btn-info" href="javascript:document.formaCV.submit();">CV</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name="accion"          value='Vacunas1' >
     </form></td>
     <td><form name=formaLab method=post action='<c:url value="/AtenderPaciente.do"/>'>
             <div class="Imprimir"><a class="btn btn-warning" href="javascript:document.formaLab.submit();">Examenes Complementarios</a></div>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
              <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
              <input type="hidden" name="accion"          value='Laboratorio'>
     </form></td>
  </tr> 
 </table>  
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha<br>Consultorio<br>Medico<br>Establecimiento </th>
    <th bgcolor="#F2F2F2"> SIGNOS </th>
    <th bgcolor="#F2F2F2"> SUBJETIVO </th>        
    <th bgcolor="#F2F2F2"> OBJETIVO </th>        
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>   
    <th bgcolor="#F2F2F2"> PLAN DE ACCION </th>   
    <th bgcolor="#F2F2F2"> CIE10 </th>  
    <th bgcolor="#F2F2F2"> RECETA </th>        
  </tr>  
  <c:forEach var="lista" items="${milista}" varStatus="contador">
     <c:if test="${lista.subjetivo !='Desde Farmacia'}">  
     <tr style="font-size:8pt">
        <form name=formaEc<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteResumen.do"/>'>
            <td style="font-size:15pt" valign="middle">     
              <div class="nota"><a href="javascript:document.formaEc<c:out value="${contador.count}"/>.submit();"><font size="4"><c:out value="${contador.count}"/></font></a></center></div>
              <input type="hidden" name="id_historial"        value='<c:out value="${lista.id_historial}"/>'>
              <input type="hidden" name="id_persona"          value='<c:out value="${lista.id_persona}"/>' >   
              <input type="hidden" name='id_seguro'           value='<c:out value="${lista.id_seguro}"/>'> 
              <input type="hidden" name="id_consultorio"      value='<c:out value="${id_consultorio}"/>' >         
              <input type="hidden" name="id_paciente"         value='<c:out value="${id_paciente}"/>' >
              <input type="hidden" name="expedido"            value='<c:out value="${lista.expedido}"/>' > 
              <input type="hidden" name="fecha"               value=<fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/> >  
              <input type="hidden" name="tipo_medico"         value='<c:out value="${tipo_medico}"/>' >         
              <input type="hidden" name="accion"              value='Economico'>
              <input type="hidden" name="sw1"                 value='actualiza'>
              <input type="hidden" name="swinter"             value='inter'>
            </td>
         </form>     
       <td>
          <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><br><font color="green"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></font><br><br>
          <font color="Blue"><c:out value="${lista.consultorio}"/></font><br><c:out value="${lista.nombres}"/><br><br><font color="red"><c:out value="${lista.cama}"/><br><font size="2"><c:out value="${lista.id_historial}"/> </font></td>    
               <form name=formaCambio<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>

               <c:if test="${lista.expedido=='S'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="red">Ley475</font><br>      
                           <div><center><a href="javascript:document.formaCambio<c:out value="${contador.count}"/>.submit();">SUMI</a></center></div>
                           <input type="hidden" name="id_paciente"    value=<c:out value="${id_paciente}"/> >
                           <input type="hidden" name="id_historial"   value=<c:out value="${lista.id_historial}"/> >           
                           <input type="hidden" name="accion"         value='Estado' >
                           <input type="hidden" name="sw"             value='1' >
                       <br><font color="blue">
                                    <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                    <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                    <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                    <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                    <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                    <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                    <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                    <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                    <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                    <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                            <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                            </td>
               </c:if>
               <c:if test="${lista.expedido=='E'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br>Externo<br>   
                           <div><center><a href="javascript:document.formaCambio<c:out value="${contador.count}"/>.submit();">Externo</a></center></div>
                           <input type="hidden" name="id_paciente"    value=<c:out value="${id_paciente}"/> >
                           <input type="hidden" name="id_historial"   value=<c:out value="${lista.id_historial}"/> >           
                           <input type="hidden" name="accion"         value='Estado' >
                           <input type="hidden" name="sw"             value='1' >
                            <font color="blue">
                                    <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                    <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                    <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                    <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                    <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                    <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                    <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                    <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                    <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                    <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                            <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                            </td>
               </c:if>
               <c:if test="${lista.expedido=='P'}">
                          <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="green"><c:out value="${lista.seguro}"/></font><br>   
                              <div><center><a href="javascript:document.formaCambio<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.seguro}"/></a></center></div>
                              <input type="hidden" name="id_paciente"    value=<c:out value="${id_paciente}"/> >
                              <input type="hidden" name="id_historial"   value=<c:out value="${lista.id_historial}"/> >           
                              <input type="hidden" name="accion"         value='Estado' >
                              <input type="hidden" name="sw"             value='1' >
                              <font color="blue">
                                <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                        </font>
                        <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                        <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                        <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                        </td>
               </c:if>            
               
       </form>
       <td><c:out value="${lista.subjetivo}" escapeXml="False"/></td>
       <td><c:out value="${lista.objetivo}"  escapeXml="False"/></td>     
       <td><c:out value="${lista.diagnostico}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.accion}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.codigo}"/></td>   
      <td>
      <table><tr><td>
        <form name=formaMA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'> 
         <div><a class="btn btn-success" href="javascript:document.formaMA<c:out value="${contador.count}"/>.submit();">Receta</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${lista.id_historial}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${lista.id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >                   
          <input type="hidden" name='accion'          value='Ninguno'>
        </form></td></tr>
        <tr><td>
         <c:if test="${lista.internado>1}">
          <form name=formaHi<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>      
             <div><a class="btn btn-warning" href="javascript:document.formaHi<c:out value="${contador.count}"/>.submit();">Historia<br>Internado</a></div>
              <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>           
              <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
              <input type="hidden" name='id_seguro'       value='<c:out value="${lista.id_seguro}"/>'> 
              <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
              <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
              <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >                   
              <input type="hidden" name="accion"         value='HclInternado'>
              <input type="hidden" name="swinter"        value='inter' >
           </form>
           </c:if> 
          </td></tr>
        <tr><td>
        <form name=formaHiff<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
          <a class="btn btn-info" href="javascript:document.formaHiff<c:out value="${contador.count}"/>.submit();">ImprimeHojaAtencion
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${lista.id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >                   
          <input type="hidden" name="accionc"         value='imprimeHCLcaja'>
       </form>
       </td></tr>
       <tr><td>
       <form name=formaHiff2<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
          <a class="btn btn-info" href="javascript:document.formaHiff2<c:out value="${contador.count}"/>.submit();">NotaInternacion
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${lista.id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >                   
          <input type="hidden" name="accionc"         value='imprimeNotaIntCaja'>
       </form>
       </td></tr>
       <tr><td>
       <form name=formaHiff3<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>      
         <a class="btn btn-info" href="javascript:document.formaHiff3<c:out value="${contador.count}"/>.submit();">HistoriaClinica
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${lista.id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >                   
          <input type="hidden" name="accionc"         value='imprimeHCLCompcaja'>
       </form>
       </td></tr>
     </table>
     </td>
    </c:if>  
   </tr> 
   </c:forEach>
</table>
</c:if> 


<c:if test="${tipo_medico == 0 }">
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> No </th>
    <th> Fecha<br>Consultorio<br>Medico<br>Establecimiento </th>
    <th> SIGNOS </th>      
    <th> SUBJETIVO </th> 
    <th> DIAGNOSTICO </th>
    <th> CIE10 </th>
    <th> CLASIFICACION RIESGO </th>   
    <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
     <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ --> 
       <td><c:out value="${contador.count}"/></td>   
        <td>
          <fmt:formatDate value="${lista.fechalab}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="green"><fmt:formatDate value="${lista.fechalab}" pattern='HH:mm'/></font><br>
          <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="green"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></font><br><br>
          <font color="Blue"><c:out value="${lista.consultorio}"/></font><br><c:out value="${lista.nombres}"/><br><br><font color="red"><c:out value="${lista.cama}"/><br><font size="2"><c:out value="${lista.id_historial}"/> </font>
        </td>
     
       <c:if test="${lista.expedido=='S'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="red">Ley475</font><br>      
                       <br><font color="blue">
                                    <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                    <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                    <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                    <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                    <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                    <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                    <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                    <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                    <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                    <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                            <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                            </td>
               </c:if>
               <c:if test="${lista.expedido=='E'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br>Externo<br>   
                            <font color="blue">
                                    <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                    <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                    <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                    <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                    <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                    <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                    <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                    <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                    <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                    <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                            <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                            <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                            </td>
               </c:if>
               <c:if test="${lista.expedido=='P'}">
                          <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="green"><c:out value="${lista.seguro}"/></font><br>   
                          <font color="blue">
                                <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                        </font>
                        <br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font>
                        <br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font>
                        <br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font>
                        </td>
               </c:if>            
               
       <td><c:out value="${lista.subjetivo}" escapeXml="False"/></td> 
       <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>
       <td><c:out value="${lista.codigo}" escapeXml="False"/></td>
       <td style="font-size:15pt; color:blue"><c:out value="${lista.registro}"/></td>
      </tr>
   </c:forEach>      
    </table>

</c:if>     
