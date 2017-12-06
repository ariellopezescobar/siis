<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

 <form name="forma" method="POST" action='<c:url value="/ListarAteVigencia.do"/>'>   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th><center>Lista de Pacientes Atedendidos Autorizados por Vigencia</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive">           
              <tr style="font-size:11pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>
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
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;Minuto</font>    
               </td>
              </tr>
              
	      <tr style="font-size:11pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Final</b></td>
               <td ><SELECT NAME="diaf">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesf">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="aniof">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horaf">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutof">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              <tr style="font-size:10pt">
              <td align=right bgcolor="#F2F2F2">Nombre/Matricula</td>
              <td  colspan="2"><div class="form-inline"><input class="form-control" type=text name=nombres size="40" onblur='validar(nombre,"A9")'></div></td>
            </tr> 
	    </table>
        </fieldset>
      </td>
    </tr>
    
  </table>
 </center>  
  <center>
    <input type="submit" name="boton" class="btn btn-success" value="ExportarExcel">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" name="boton" class="btn btn-info"    value="Imprimir">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" name="boton" class="btn btn-primary"  value="BuscarNombreFecha">
    <input type="hidden" name="id_persona"              value=<c:out value="${id_persona}"/> >         
  </center>
</form>  

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha Vig /Fecha Ate </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> Patronal / EMPRESA </th>
    <th bgcolor="#F2F2F2"> Carnet </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> Cod. </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Se<br>guro </th>    
    <th bgcolor="#F2F2F2"> L475 </th>
    <th bgcolor="#F2F2F2"> Nro<br>Rec. </th>    
    <th bgcolor="#F2F2F2"> Nro<br>Lab </th>    
    <th bgcolor="#F2F2F2"> Nro<br>Imag </th>        
    <th bgcolor="#F2F2F2"> Estado<br>Internado </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    <th bgcolor="#F2F2F2"> Clasifica </th>
    <th bgcolor="#F2F2F2"> Reconsulta </th>
    </tr>  
   <c:forEach var="lista" items="${listavig}" varStatus="contador">
     <tr style="font-size:9pt" >
       <form name=formaMvdoca<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div ><a class="btn btn-info btn-xs" href="javascript:document.formaMvdoca<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >                  
         <input type="hidden" name="accion"         value='ReservarVig' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>  
       <td><fmt:formatDate value="${lista.fechalab}" pattern='dd/MM/yyyy'/><b><fmt:formatDate value="${lista.fechalab}" pattern='HH:mm'/></b><br>
           <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td>  
       <td><c:out value="${lista.registro}"/><br><c:out value="${fn:substring(lista.cadena1,0,20)}"/></td>

       <td ><c:out value="${lista.carnet}"/></td> 
       <td ><b><c:out value="${fn:substring(lista.nro_registro,0,10)}"/></b></td> 
       <td align="center"><b><c:out value="${lista.cadena3}"/></b></td> 
       <td style="color:blue"><b><c:out value="${lista.nombres}"/></b>
           
       </td>   
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="id_historial" value=<c:out value="${lista.id_historial}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='//Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
                    
     <c:if test="${lista.expedido=='S'}">
         <form name=formaHA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contador.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center">  E   </td>
    </c:if>
    <c:if test="${lista.expedido=='P'}"> 
          <c:if test="${lista.id_seguro=='35'}"> 
              <td align="center" style="color:blue"><c:out value="${lista.cadena2}"/> </td>
          </c:if>               
          <c:if test="${lista.id_seguro!='35'}"> 
              <td align="center" style="color:red"><c:out value="${lista.cadena2}"/> </td>
          </c:if>
    </c:if>

    <c:if test="${lista.expedido=='S' and lista.id_cargo==0}"> 
             <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
        </c:if>
        <c:if test="${lista.expedido=='S' and lista.id_cargo!=0}"> 
             <td align="center"><b><c:out value="${lista.id_cargo}"/></b></td>
        </c:if>
        <c:if test="${lista.expedido!='S'}"> 
             <td align="center"><b><c:out value="${lista.id_cargo}"/></b></td>
        </c:if>
  
       <form name=formaReceta<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.formaReceta<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma2}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='RecetaT' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>     
     
       
     
     <td align="center"><b><c:out value="${lista.suma10}"/></b></td>     
     <td align="center"><b><c:out value="${lista.suma11}"/></b></td>
     <td align="center">
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
     </td>                               
     
     <td><c:out value="${fn:substring(lista.nombre,0,20)}"/></td>
     <td>  <c:if test="${lista.id_riesgo == '0' }">
               <font> Normal</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '1' }">
               <font color="Red"  size="3"> RIESGO</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '2' }">
               <font color="Red"  size="3"> MORA</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '3' }">
               <font color="Red" size="3"> ACCID.</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '4' }">
               <font color="Red" size="3"> SinDOC</font>
           </c:if> 
     <br>
     <form name=formaMaaRix<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
            
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaMaaRix<c:out value="${contador.count}"/>.submit();">Cambiar</a></div>
  	 <input type="hidden" name="id_historial"   value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >           
         <input type="hidden" name="id_persona"     value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="tipoconsult"    value=<c:out value="${lista.tipoconsult}"/> >
         <input type="hidden" name="id_riesgo"      value=<c:out value="${lista.id_riesgo}"/> >
         <input type="hidden" name="expedido"       value=<c:out value="${lista.expedido}"/> >         
         <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >               
	 <input type="hidden" name="accion"         value='Cambiar' >
	 <input type="hidden" name="swv"            value='1' >
       
     </form></td>
     <!--
     <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAteVigencia.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Impresion</a></div>
  	 <input type="hidden" name="id_historial" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="id_persona"     value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido"       value=<c:out value="${lista.expedido}"/> >         
         <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >         
	 <input type="hidden" name="accionr"         value='RecetaLab' >
       </td>
     </form>
     -->
     <form name=formaRE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="siguiente"><a class="btn btn-info btn-xs" href="javascript:document.formaRE<c:out value="${contador.count}"/>.submit();"> Reconsulta</a></div>
          <input type="hidden" name="id_paciente"  value=<c:out value="${lista.id_paciente}"/> >
          <input type="hidden" name="id_empresa"   value=<c:out value="${lista.id_empresa}"/> >
          <input type="hidden" name="id_carpeta"   value=<c:out value="${lista.id_carpeta}"/> >
          <input type="hidden" name="accion"       value='Reservar' >
          <input type="hidden" name="sw"           value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>