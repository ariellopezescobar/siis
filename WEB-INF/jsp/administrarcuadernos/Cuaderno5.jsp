<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>ACCION A REALIZAR AL PACIENTE INTERNADO</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th colspan="3" bgcolor="#F2F2F2">DATOS DEL PACIENTE</th>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL - Nombres</td>
        <td><c:out value = "${datos.hcl}"/> - <c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/><font color="blue"><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</font></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>    
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td align="right" bgcolor="#F2F2F2">Factores de Riesgo</td>    	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
</table>
<table class="tabla" border="1"><tr>
<td><form name=formaC5 method=post action='<c:url value="/Cuaderno5.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaC5.submit();">Retornar</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td></tr>
  </table>
  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
 <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> TRATAMIENTO </th> 
    </tr>  
    </tr>
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <tr style="font-size:9pt">
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno5.do"/>'>
       <td>
         <div class=""><a href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/> </a></div>
         <input type="hidden" name="id_cuaderno"     value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name="nombres"         value='<c:out value="${nombres}"/>' >
         <input type="hidden" name="edad"            value='<c:out value="${edad}"/>' >
         <input type="hidden" name="id_sexo"         value='<c:out value="${id_sexo}"/>' >
         <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="accion"          value='Eliminar' > 
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
       <td>
       <table>
           <c:if test="${lista.ingreso==0}">
           <tr>
              <td>Tipo de Ingreso</td>
              <td>Referido</td>
           </tr>
           </c:if>
           <c:if test="${lista.ingreso==1}">
           <tr>
              <td>Tipo de Ingreso</td>
              <td>Expontaneo</td>
           </tr>
           </c:if>
           <tr>
              <td>Diagnostico Ingreso</td>
              <td><c:out value="${lista.diagnostico_ing}"/></td>
           </tr>
           <c:if test="${lista.cirugia==1}">
           <tr>
              <td>Cirugia</td>
              <td>Mediana</td>
           </tr>
           </c:if>
           <c:if test="${lista.cirugia==2}">
           <tr>
              <td>Cirugia</td>
              <td>Mayor</td>
           </tr>
           </c:if>
           <c:if test="${lista.anastecia==1}">
           <tr>
              <td>Anestecia</td>
              <td>General</td>
           </tr>
           </c:if>
           <c:if test="${lista.anastecia==2}">
           <tr>
              <td>Anestecia</td>
              <td>Regional</td>
           </tr>
           </c:if>
           <tr>
              <td>Situacion de Egreso</td>
              <td><c:out value="${lista.diagnostico}"/></td>
           </tr>
           <tr>
              <td>Dias de Estancia</td>
              <td><c:out value="${lista.diasi}"/></td>
           </tr>
           <tr>
              <td>Dias Cama Ocupada</td>
              <td><c:out value="${lista.diasc}"/></td>
           </tr>
           <c:if test="${lista.egreso==1}">
           <tr>
              <td>Diagnostico < de 5 años</td>
              <td>Diarrea</td>
           </tr>
           </c:if>
            <c:if test="${lista.egreso==2}">
           <tr>
              <td>Diagnostico < de 5 años</td>
              <td>Neumonia</td>
           </tr>
           </c:if>
            <c:if test="${lista.egreso==3}">
           <tr>
              <td>Diagnostico < de 5 años</td>
              <td>Otros</td>
           </tr>
           </c:if>
            <c:if test="${lista.tipo_egreso==1}">
           <tr>
              <td>Tipo Egreso</td>
              <td>Alta Medica</td>
           </tr>
           </c:if>
            <c:if test="${lista.tipo_egreso==2}">
           <tr>
              <td>Tipo Egreso</td>
              <td>Alta Solicitada</td>
           </tr>
           </c:if>
           <c:if test="${lista.fallecido==1}">
           <tr>
              <td>Fallecido</td>
              <td>Antes de 48 Horas</td>
           </tr>
           </c:if>
           <c:if test="${lista.fallecido==2}">
           <tr>
              <td>Fallecido</td>
              <td>Despues de 48 Horas</td>
           </tr>
           </c:if>
       </table>
       </td>
   
</table>
    </td>
    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno5.do"/>' >

<table class="formulario" border=1>
  <tr>
    <th colspan="5">TRATAMIENTO</th>
  </tr>
  <td colspan=3 class="etiqueta">Tipo de Ingreso <font color='red'>(*)</font> </td>
  <td colspan=2>
      <SELECT NAME="tingreso">
          <option value="E" <c:if test="${lista.ingreso==1}">selected</c:if>>Expontaneo</option>
          <option value="R" <c:if test="${lista.ingreso==0}">selected</c:if>>Referido</option>
      </SELECT>
  </td>
 <tr>
   <td class="etiqueta" colspan=3> Diagnostico de Ingreso</td>
   <td class="etiqueta" colspan="2">
           <textarea name="dingreso" rows="5" cols="30" style="width: 80%" readonly>
               <c:out value = "${CieI}" escapeXml="False"/>
           </textarea>
   </td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Cirugia <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="cirugia">
              <option value="N" <c:if test="${lista.cirugia==0}">selected</c:if>>Ninguno</option>
              <option value="M" <c:if test="${lista.cirugia==1}">selected</c:if>>Mediana</option>
              <option value="Y" <c:if test="${lista.cirugia==2}">selected</c:if>>Mayor</option>
          </SELECT>
        </td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Anastecia <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="anastecia">
              <option value="N" <c:if test="${lista.anastecia==0}">selected</c:if>>Ninguno</option>
              <option value="G" <c:if test="${lista.anastecia==1}">selected</c:if>>General</option>
              <option value="R" <c:if test="${lista.anastecia==2}">selected</c:if>>Regional</option>
          </SELECT>
        </td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=3> Diagnostico de Egreso</td>
   <td class="etiqueta" colspan="2">
           <textarea name="degreso" rows="5" cols="30" style="width: 80%" readonly>
               <c:out value = "${CieE}" escapeXml="False"/>
           </textarea>
   </td>
 </tr>
 <tr><td class="etiqueta" colspan=3> Fecha de Ingreso</td>
   <td colspan=2><SELECT NAME="diai">
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
   </td></tr>
 <tr>
   <td class="etiqueta" colspan=3> Fecha de Egreso</td>
   <td colspan=2><SELECT NAME="diae">
             <c:forEach var="dias" items="${dias}">
    	       <option value="<c:out value="${dias}"/>" <c:if test="${dias == diae}">selected</c:if>> 
	         <c:out value="${dias}"/></option></c:forEach></SELECT>
	<SELECT NAME="mese">
             <c:forEach var="meses" items="${meses}">
    	       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mese}">selected</c:if>> 
	         <c:out value="${meses}"/></option></c:forEach></SELECT>
	<SELECT NAME="anioe">
             <c:forEach var="anios" items="${anios}">
    	       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anioe}">selected</c:if>> 
	         <c:out value="${anios}"/></option></c:forEach></SELECT>
        <SELECT NAME="horae">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == horae}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoe">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minutoe}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>         
   </td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=3> Dias de Estancia</td>
   <td ><input type="text" name="diasi" value="<c:out value = "${diasInter}"/>" size="3" maxlength=3>
   <td><input type="submit" name='accion' value='Cambiar'></td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Diagnostico Egreso <5 años <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="emenor5">
              <option value="G" <c:if test="${lista.egreso==0}">selected</c:if>>Ninguno</option>
              <option value="D" <c:if test="${lista.egreso==1}">selected</c:if>>Diarrea</option>
              <option value="N" <c:if test="${lista.egreso==2}">selected</c:if>>Neumonia</option>
              <option value="O" <c:if test="${lista.egreso==3}">selected</c:if>>Otros</option>
          </SELECT>
        </td>
 </tr>
<tr>
        <td colspan=3 class="etiqueta">Tipo de Egreso <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="tipoegreso">
              <option value="G" <c:if test="${lista.tipo_egreso==0}">selected</c:if>>Alta Medica</option>
              <option value="D" <c:if test="${lista.tipo_egreso==1}">selected</c:if>>Alta Solicitada</option>
              <option value="N" <c:if test="${lista.tipo_egreso==2}">selected</c:if>>Fuga</option>
              <option value="F" <c:if test="${lista.tipo_egreso==2}">selected</c:if>>Fallecido</option>
          </SELECT>
        </td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Fallecido<font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="fallecido">
              <option value="G" <c:if test="${lista.fallecido==0}">selected</c:if>>Ninguno</option>
              <option value="A" <c:if test="${lista.fallecido==1}">selected</c:if>>Antes 48 Horas</option>
              <option value="M" <c:if test="${lista.fallecido==2}">selected</c:if>>Mayor 48 Horas</option>
          </SELECT>
        </td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Fallecidos menor de 5 años<font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="fallecidom5">
              <option value="G" <c:if test="${lista.fallecidom5==0}">selected</c:if>>Ninguno</option>
              <option value="R" <c:if test="${lista.fallecidom5==1}">selected</c:if>>RN: menor 7 dias</option>
              <option value="A" <c:if test="${lista.fallecidom5==2}">selected</c:if>>Muerte < 1 año</option>
              <option value="D" <c:if test="${lista.fallecidom5==3}">selected</c:if>>Diarrea</option>
              <option value="N" <c:if test="${lista.fallecidom5==4}">selected</c:if>>Neumonia</option>
              <option value="T" <c:if test="${lista.fallecidom5==5}">selected</c:if>>Desnutricion</option>
              <option value="O" <c:if test="${lista.fallecidom5==6}">selected</c:if>>Otras Causas</option>
          </SELECT>
        </td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=3 > Muerte Materna</td>
   <td colspan=2><input type=radio name="mmaterna" value="1" ></td>
</tr>
<tr>
   <td class="etiqueta" colspan=3 > Otras Causas > 5 años</td>
   <td colspan=2><input type=radio name="mmaterna" value="2" ></td>
</tr>
 <tr>
   <td class="etiqueta" colspan=3> Referido a:</td>
   <td colspan=2><input type="text" name="ref" value="<c:out value = "${lista.referido}"/>" maxlength="50" size="50"></td>
</tr>
<tr>
   <td class="etiqueta" colspan=3> Retornado de:</td>
   <td colspan=2><input type="text" name="cref" value="<c:out value = "${lista.contraref}"/>" maxlength="50" size="50"></td>
</tr>
</table>  
</c:forEach>
<center>
 <input type="submit" name='accion' class="btn btn-success" value='Agregar'>
 <!--<input type="submit" name='accion' class="cancelar" value='Terminar'>-->
</center>
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
 <input type="hidden" name="nombres"         value="<c:out value="${nombres}"/>" >
 <input type="hidden" name="edad"            value="<c:out value="${edad}"/>" >
 <input type="hidden" name="id_sexo"         value="<c:out value="${id_sexo}"/>" >
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
 <input type="hidden" name='CieE2'           value='<c:out value="${CieE2}"/>' >
 <input type="hidden" name='CieI1'           value='<c:out value="${CieI1}"/>' >
 <input type="hidden" name="sw"              value="<c:out value="${sw}"/>" >
 </form>
  </td>
  </tr>
</table>
