<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3">ACCION A REALIZAR AL PACIENTE CUADERNO REHABILITACION INTEGRAL</th>
  </tr>
  <tr>
    <td width="50%" valign="top"> 
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th align="right" bgcolor="#F2F2F2" colspan="2">DATOS DEL PACIENTE</th>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Sexo</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>          
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Edad</td>         
        <td><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</td>
      </tr>  
</table>

<table class="tabla" border="1"><tr>
<td><form name=formaCF method=post action='<c:url value="/CuadernoFisio.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaCF.submit();">Retornar</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td></tr>
  </table>
  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> ACCION </th>
    <th bgcolor="#F2F2F2"> TIPO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
       <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <c:if test="${lista.suma1 == 1}">
           <tr><td>Consulta</td></tr>
       </c:if>   
       <c:if test="${lista.suma2 == 1}">
           <tr><td>Vendaje</td></tr>
       </c:if> 
       <c:if test="${lista.suma3 == 1}">
           <tr><td>Electroterapia</td></tr>
       </c:if> 
       <c:if test="${lista.suma4 == 1}">
           <tr><td>Ultrasonoterapia</td></tr>
       </c:if> 
       <c:if test="${lista.suma5 == 1}">
           <tr><td>Laserterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma6 == 1}">
           <tr><td>Magnetoterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma7 == 1}">
           <tr><td>Masoterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma8 == 1}">
           <tr><td>Mecanoterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma9 == 1}">
           <tr><td>Calor Profundo</td></tr>
       </c:if>
       <c:if test="${lista.suma10 == 1}">
           <tr><td>Luminoterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma11 == 1}">
           <tr><td>Calor Superficial</td></tr>
       </c:if>
       <c:if test="${lista.suma12 == 1}">
           <tr><td>Electroanalesia</td></tr>
       </c:if>
       <c:if test="${lista.suma13 == 1}">
           <tr><td>Kinesio Respiratoria</td></tr>
       </c:if>
       <c:if test="${lista.suma14 == 1}">
           <tr><td>Cinesioterapia</td></tr>
       </c:if>
       <c:if test="${lista.suma15 == 1}">
           <tr><td>Terapia del Lenguaje</td></tr>
       </c:if>
       <c:if test="${lista.suma16 == 1}">
           <tr><td>Psicomotricidad</td></tr>
       </c:if>
       <c:if test="${lista.suma17 == 1}">
           <tr><td>Tecnicas Neurologicas Especiales</td></tr>
       </c:if>
       <c:if test="${lista.suma18 == 1}">
           <tr><td>Tecnicas Kinesicas Especiales</td></tr>
       </c:if>
       <c:if test="${lista.suma19 == 1}">
           <tr><td>Terapia Ocupacional</td></tr>
       </c:if>
       <c:if test="${lista.suma20 == 1}">
           <tr><td>Personas Discapacidad</td></tr>
       </c:if>
       <c:if test="${lista.suma21 == 1}">
           <tr><td>Hidroteparapia</td></tr>
       </c:if>
       <c:if test="${lista.suma22 == 1}">
           <tr><td>Estimulacion temprana</td></tr>
       </c:if>
       <c:if test="${lista.suma23 == 1}">
           <tr><td>Hidrocinesiterapia (piscina T.)</td></tr>
       </c:if>
       <c:if test="${lista.suma24 == 1}">
           <tr><td>Evaluacion Kinesica</td></tr>
       </c:if>
       <c:if test="${lista.suma25 == 1}">
           <tr><td>Tanque de Remolino</td></tr>
       </c:if>
       <c:if test="${lista.suma26 == 1}">
           <tr><td>Psicologia</td>
       </c:if>
       
      </table>
       </td>
       <td align="center"><font color="blue" size="5"><b><c:out value="${lista.tipoconsulta}"/></b></font></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/CuadernoFisio.do"/>'>
       <td><br>    
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno"     value='<c:out value="${lista.id_cuaderno}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="accion"          value='Eliminar'>
         <input type="hidden" name="sw1"             value='1'>
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
    </td>
    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/CuadernoFisio.do"/>' >

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
 <tr>
    <th colspan="7"><center>TRATAMIENTO</center></th>
  </tr>
  <tr style="font-size:9pt">
        <td colspan=4 class="etiqueta">Tipo de Consulta  </td>
        <td colspan=2>
          <SELECT NAME="tipo">
              <option value="N">Nueva</option>
  	      <option value="R" >Repetida </option>
          </SELECT>
	  No. Secion
        </td>
        <td colspan=2><SELECT NAME="nsecion">
             <c:forEach var="ncontrol" items="${ncontrol}">
    	       <OPTION value="<c:out value="${ncontrol}"/>" <c:if test="${ncontrol == numpieza}">selected</c:if>> 
	         <c:out value="${ncontrol}"/>
	     </c:forEach>
	   </SELECT></td>
 </tr>  
<tr style="font-size:9pt">
  <td class="etiqueta" colspan=2 > Consulta Externa</td>
  <td colspan=2><input type=checkbox name="consulta" value="1" ></td>
   <td class="etiqueta" colspan=2 >Vendaje Neuromuscular</td>
   <td colspan=2><input type=checkbox name="vendaje" value="1" ></td>
 </tr>
 <tr style="font-size:9pt">
   <td class="etiqueta" colspan=2 >Electroterapia</td>
   <td colspan=2><input type=checkbox name="electro" value="1" ></td>
   <td class="etiqueta" colspan=2 > Ultrasonotarapia</td>
   <td colspan=2><input type=checkbox name="ultra" value="1" ></td>
 </tr>
 <tr style="font-size:9pt">
   <td class="etiqueta" colspan=2 > Laserterapia</td>
   <td colspan=2><input type=checkbox name="laser" value="1" ></td>
   <td class="etiqueta" colspan=2 > Magnetoterapia</td>
   <td colspan=2><input type=checkbox name="magne" value="1" ></td>
 </tr>
 <tr style="font-size:9pt">
   <td class="etiqueta" colspan=2 >Masoterapia</td>
   <td colspan=2><input type=checkbox name="maso" value="1" ></td>
   <td class="etiqueta" colspan=2 >Mecanoterapia</td>
   <td colspan=2><input type=checkbox name="mecano" value="1" ></td>
  </tr>
 <tr style="font-size:9pt">
  <td class="etiqueta" colspan=2 > Calor Superficial</td>
  <td colspan=2><input type=checkbox name="termo" value="1" ></td>
   <td class="etiqueta" colspan=2 > Calor Profundo</td>
   <td colspan=2><input type=checkbox name="calorprof" value="1" ></td>
 </tr>
  <tr style="font-size:9pt">
   <td class="etiqueta" colspan=2 > Luninoterapia</td>
   <td colspan=2><input type=checkbox name="lumino" value="1" ></td>
   <td class="etiqueta" colspan=2 > Electroanalgesia</td>
   <td colspan=2><input type=checkbox name="electroana" value="1" ></td>
 </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Kinesio Respiratoria</td>
     <td colspan=2><input type=checkbox name="respira" value="1" ></td>
     <td class="etiqueta" colspan=2 >Cinesiterapia</td>
     <td colspan=2><input type=checkbox name="cinesi" value="1" ></td>
  </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Terapia del lenguaje</td>
     <td colspan=2><input type=checkbox name="lenguaje" value="1" ></td>
     <td class="etiqueta" colspan=2 >Psicomotricidad</td>
     <td colspan=2><input type=checkbox name="psico" value="1" ></td>
  </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Tecnicas Neurologicas Especiales</td>
     <td colspan=2><input type=checkbox name="tecneuro" value="1" ></td>
     <td class="etiqueta" colspan=2 >Trabajo Ocupacional</td>
     <td colspan=2><input type=checkbox name="to1" value="1" ></td>
  </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Tecnicas Kinesicas Especiales</td>
     <td colspan=2><input type=checkbox name="teckine" value="1" ></td>
     <td class="etiqueta" colspan=2 >Personas con Discapacidad</td>
     <td colspan=2><input type=checkbox name="discapacidad" value="1" ></td>
  </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Hidroterapia</td>
     <td colspan=2><input type=checkbox name="hidro" value="1" ></td>
     <td class="etiqueta" colspan=2 >Estimulacion Temprana</td>
     <td colspan=2><input type=checkbox name="estimulacion" value="1" ></td>
  </tr>
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Hidrocinesiterapia (piscina T.)</td>
     <td colspan=2><input type=checkbox name="hidrocine" value="1" ></td>
     <td class="etiqueta" colspan=2 >Evaluacion Kinesica</td>
     <td colspan=2><input type=checkbox name="evaluacion" value="1" ></td>
  </tr>  
  <tr style="font-size:9pt">
     <td class="etiqueta" colspan=2 >Tanque de Remolino</td>
     <td colspan=2><input type=checkbox name="tanque" value="1" ></td>
     <td class="etiqueta" colspan=2 >Psicologia</td>
     <td colspan=2><input type=checkbox name="psicolo" value="1" ></td>
  </tr>
 <tr style="font-size:9pt">
   <td class="etiqueta" colspan=4> Referido a:<br>Establecimiento/Localidad <br>(Público, Privado, ONGs, Cajas)</td>
   <td colspan=4><input type="text" name="ref" value="" size="40" maxlength=50 ></td>
 </tr>
</table>

<center>
   <input type="submit" name='accion' class="btn btn-success" value='Agregar'>  
    <input type="submit" name='accion' class="btn btn-danger" value='Terminar'>  
</center>  

<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
<input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
  
</form>

  </td>
  </tr>
   
</table>