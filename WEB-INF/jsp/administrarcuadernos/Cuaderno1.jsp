<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./mostrarForm.js">  </script>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <td width="50%" valign="top"> 
  <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>
       <th colspan="3"><center>DATOS DEL PACIENTE CONSULTA EXTERNA</center></th>
      </tr>  
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">No. HCL - Nombre Completo</td>    
        <td bgcolor="#F2F2F2"><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Fecha de Nacim. / Edad</td>    
        <td bgcolor="#F2F2F2"><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="4"> <c:out value="${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      <tr>    
        <td bgcolor="#F2F2F2">I.M.C.</td>    
	<td bgcolor="#F2F2F2"><font style="color:blue" size="3"><c:out value = "${imc}"/></font>[Kg/cm2]...Peso::<font style="color:blue" size="3"><c:out value = "${peso}"/></font>[Kg]...Talla::<font style="color:blue" size="3"><c:out value = "${talla}"/></font>[cm2]</td>      
      </tr>
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td bgcolor="#F2F2F2">Factores de Riesgo</td>          
            <td bgcolor="#F2F2F2" style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
</table>

<table class="tabla">
<tr>
<td><form name=formaC1 method=post action='<c:url value="/Cuaderno1.do"/>'>
     <td colspan="2">
      <div class="volver"><a class="btn btn-success" href="javascript:document.formaC1.submit();">Retornar</a></div></td>
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
  
   
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:10pt">
    <th> No </th>
    <th> RANGO EDAD </th>
    <th> TIPO </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:10pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
       Paciente      
       <c:if test="${lista.suma30 > 0}">
       <br><font color="blue">Referido a :<c:out value="${lista.suma30}"/></font>
       </c:if>
       <c:if test="${lista.suma31 > 0}">
       <br><font color="blue">Contrareferido a :<c:out value="${lista.suma31}"/></font>
       </c:if></td>
       <td><c:out value="${lista.tipoconsulta}"/></td>      
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno" value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </trv> 
   </c:forEach>
</table>
    </td>
    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno1.do"/>'>

<table class="formulario" border=1>
 <input type="submit" name='accion' class="btn btn-info" value='Enfer. Renales'>
 <input type="submit" name='accion' class="btn btn-info" value='Enfer. no Trasmisibles'> 
 <input type="submit" name='accion' class="btn btn-info" value='Diabetes'> 
 <input type="submit" name='accion' class="btn btn-info" value='Otros'> 
 <input type="submit" name='accion' class="btn btn-info" value='Todos'>
 <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
  <tr>
    <th colspan="5">TRATAMIENTO</th>
  </tr>
  <tr style="font-size:10pt">
        <td colspan=3 class="etiqueta">Tipo de Consulta <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="tipo">
              <option value="N">Nueva</option>
  	      <OPTION value="R" >Repetida </option>
          </SELECT>	
        </td>
 </tr> 
<c:if test="${not(enfer == 'renal') and not(enfer == 'Transmisible') and not(enfer == 'diabetes') and not(enfer == 'todos')}">      
<tr style="font-size:10pt">
  <td class="etiqueta" rowspan=4> Factores de Riesgo</td>
  <td class="etiqueta" colspan=2 > Sobre Peso</td>
  <td colspan=2><input type=checkbox name="speso" value="1" ></td>
</tr>
<tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 > Abuso <BR>de Alcohol</td>
   <td colspan=2><input type=checkbox name="alcohol" value="1" ></td>
</tr>
<tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 >Habito de Fumar</td>
   <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
</tr>
<tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 >Violencia Familiar</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>

<tr style="font-size:10pt">
   <td class="etiqueta" > Mortalidad </td>
   <td class="etiqueta" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referencias</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Pac. ref. recibidos por el establecimiento</option>
  	      <OPTION value="2" >Pac. ref. a otros establecimiento </option>
              <OPTION value="3" >PCD ref. a Unid. Calificacion. Discapacidad </option>
              <OPTION value="4" >Pac. contraref. al establecimiento </option>
              <OPTION value="5" >Pac. ref. comunidad o medicina tradicional </option>
              <OPTION value="6" >Pac. ref. a medicina tradicional </option>
          </SELECT>	
    </td>
   </tr>
      
    
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>

   <tr style="font-size:10pt">
    <td class="etiqueta" > Referido <br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
  
</c:if>
<c:if test="${enfer == 'renal'}">  
  <tr style="font-size:10pt">
     <td class="etiqueta" rowspan=22> ENFERMADADES RENALES<br><br><br><br><br><br>FACTORES DE RIESGO<br>IDENTIFICADOS</td>
     <td class="etiqueta" colspan=2 >Enfermedad Autoinmune</td>
     <td colspan=2><input type=checkbox name="auto" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Infeccion Urinaria</td>
     <td colspan=2><input type=checkbox name="urinaria" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Enfermedad Sistemica</td>
     <td colspan=2><input type=checkbox name="sistemica" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Hipertension Arterial</td>
     <td colspan=2><input type=checkbox name="arterial" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Diabetes</td>
     <td colspan=2><input type=checkbox name="diabetes" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Glomerulopatias</td>
     <td colspan=2><input type=checkbox name="glome" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Anormalidad Tracto Urinario</td>
     <td colspan=2><input type=checkbox name="tracto" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Lupus Eritromatoso</td>
     <td colspan=2><input type=checkbox name="lupus" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Litiasis</td>
     <td colspan=2><input type=checkbox name="litiasis" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Nooplasias</td>
     <td colspan=2><input type=checkbox name="nooplasia" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Exposicion Nefrotoxicos</td>
     <td colspan=2><input type=checkbox name="nefro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Obesidad</td>
     <td colspan=2><input type=checkbox name="speso" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
  <td class="etiqueta" colspan=2 >Dislipidemia</td>
     <td colspan=2><input type=checkbox name="disli" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Tabaquismos</td>
     <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 > Abuso <BR>de Alcohol</td>
   <td colspan=2><input type=checkbox name="alcohol" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >HCL Fam. Enf. Renal Cronica</td>
     <td colspan=2><input type=checkbox name="frenal" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Niño Bajo Peso</td>
     <td colspan=2><input type=checkbox name="bajopeso" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Niño Prematuro</td>
     <td colspan=2><input type=checkbox name="prematuro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Eritrocitosis</td>
     <td colspan=2><input type=checkbox name="eritro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Antecedentes Insuf. Renal Aguda</td>
     <td colspan=2><input type=checkbox name="renal" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Tuberculosis</td>
     <td colspan=2><input type=checkbox name="tuberculo" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Otro</td>
     <td colspan=2><input type=checkbox name="otro" value="1" ></td>
  </tr>
   <tr style="font-size:10pt">
   <td class="etiqueta" > Mortalidad </td>
   <td class="etiqueta" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referencias</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Pac. ref. recibidos por el establecimiento</option>
  	      <OPTION value="2" >Pac. ref. a otros establecimiento </option>
              <OPTION value="3" >PCD ref. a Unid. Calificacion. Discapacidad </option>
              <OPTION value="4" >Pac. contraref. al establecimiento </option>
              <OPTION value="5" >Pac. ref. comunidad o medicina tradicional </option>
              <OPTION value="6" >Pac. ref. a medicina tradicional </option>
          </SELECT>	
    </td>
   </tr>
      
    
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>
 
   <tr style="font-size:10pt">
    <td class="etiqueta" > Referido <br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
  
</c:if>
<c:if test="${enfer == 'Transmisible'}">  
  <tr style="font-size:10pt">
     <td class="etiqueta" rowspan=15> ENFERMADADES<br>NO<br> TRASMISIBLES<br><br><br>FACTOR DE <br>RIESGO<br><br><br>DISCAPACIDAD <br>MENTAL<br></td>
     <td class="etiqueta" colspan=2 >Mortalidad Todas las Causas</td>
     <td colspan=2><input type=checkbox name="mortalidad" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cardiovasculares</td>
     <td colspan=2><input type=checkbox name="cardio" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Reumaticas</td>
     <td colspan=2><input type=checkbox name="reuma" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cancer Cervico Uterino</td>
     <td colspan=2><input type=checkbox name="cancer" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cancer Otros</td>
     <td colspan=2><input type=checkbox name="cancero" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Diabetis Mellitus I-II</td>
     <td colspan=2><input type=checkbox name="diabetes" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Hipertensión Arterial Sistémica <br>en mayores de 5 años </td>
     <td colspan=2><input type=checkbox name="arterial" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Sobrepeso en mayores <br>de 5 años</td>
     <td colspan=2><input type=checkbox name="speso" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 > Abuso <BR>de Alcohol</td>
     <td colspan=2><input type=checkbox name="alcohol" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Habito de Fumar</td>
     <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 >Violencia Familiar</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Episodios depresivos<br> /ansiedad </td>
     <td colspan=2><input type=checkbox name="depre" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Epilepsia /Convulsiones<br> /Ataques</td>
     <td colspan=2><input type=checkbox name="epilepsia" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Trastornos de comportamiento /consumo<br> de sustancias psicotrópicas</td>
     <td colspan=2><input type=checkbox name="psico" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=3 >Personas con Discapacidad</td>
     <td ><input type=checkbox name="discapa" value="1" ></td>
  </tr> 
  <tr style="font-size:10pt">
   <td class="etiqueta" > Mortalidad </td>
   <td class="etiqueta" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referencias</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Pac. ref. recibidos por el establecimiento</option>
  	      <OPTION value="2" >Pac. ref. a otros establecimiento </option>
              <OPTION value="3" >PCD ref. a Unid. Calificacion. Discapacidad </option>
              <OPTION value="4" >Pac. contraref. al establecimiento </option>
              <OPTION value="5" >Pac. ref. comunidad o medicina tradicional </option>
              <OPTION value="6" >Pac. ref. a medicina tradicional </option>
          </SELECT>	
    </td>
   </tr>
      
    
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>

   <tr style="font-size:10pt">
    <td class="etiqueta" > Referido <br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>

</c:if>
<c:if test="${enfer == 'diabetes'}">  
  <tr style="font-size:10pt">
     <td class="etiqueta" rowspan=12> <br><br>DIABETES<br>MELLITUS<br> <br><br></td>
     <td class="etiqueta" colspan=2 >HbA </td>
     <td colspan=2><input type="text" name="hba" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >GFR</td>
     <td colspan=2><input type="text" name="gfr" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Creatinina</td>
     <td colspan=2><input type="text" name="creatinina" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Colesterol</td>
     <td colspan=2><input type="text" name="colesterol" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Peso </td>
     <td colspan=2><input type="text" name="peso" value="<c:out value = "${peso}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >I.M.C. </td>
     <td colspan=2><input type="text" name="imc" value="<c:out value = "${imc}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 > Presion</td>
     <td colspan=2><input type="text" name="presion" value="<c:out value = "${presion}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Examen de Pies</td>
     <td colspan=2><input type=checkbox name="pies" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Examen de ojos </td>
     <td colspan=2><input type=checkbox name="ojos" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Consejos sobre su Dieta</td>
     <td colspan=2><input type=checkbox name="dieta" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Consejos sobre Ejercicios</td>
     <td colspan=2><input type=checkbox name="ejercicios" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Habito de Fumar</td>
     <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
  </tr> 
  <tr style="font-size:10pt">
   <td class="etiqueta" colspan=3> Observaciones</td>
   <td colspan=2><input type="text" name="observa" value="" maxlength=100 ></td>
</tr>

 <tr style="font-size:10pt">
   <td class="etiqueta" > Mortalidad </td>
   <td class="etiqueta" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referencias</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Pac. ref. recibidos por el establecimiento</option>
  	      <OPTION value="2" >Pac. ref. a otros establecimiento </option>
              <OPTION value="3" >PCD ref. a Unid. Calificacion. Discapacidad </option>
              <OPTION value="4" >Pac. contraref. al establecimiento </option>
              <OPTION value="5" >Pac. ref. comunidad o medicina tradicional </option>
              <OPTION value="6" >Pac. ref. a medicina tradicional </option>
          </SELECT>	
    </td>
   </tr>
      
    
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>
 
   <tr style="font-size:10pt">
    <td class="etiqueta" > Referido <br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
  
</c:if>
<c:if test="${enfer == 'todos'}">  
  <tr style="font-size:10pt">
     <td class="etiqueta" rowspan=44> ENFERMADADES<br>NO<br> TRASMISIBLES<br><br><br>FACTOR DE <br>RIESGO<br><br><br>DISCAPACIDAD <br>MENTAL<br></td>
     <td class="etiqueta" colspan=2 >HbA </td>
     <td colspan=2><input type="text" name="hba" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >GFR</td>
     <td colspan=2><input type="text" name="gfr" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Creatinina</td>
     <td colspan=2><input type="text" name="creatinina" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Colesterol</td>
     <td colspan=2><input type="text" name="colesterol" value="0" maxlength="3" size="5"></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Peso </td>
     <td colspan=2><input type="text" name="peso" value="<c:out value = "${peso}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >I.M.C. </td>
     <td colspan=2><input type="text" name="imc" value="<c:out value = "${imc}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 > Presion</td>
     <td colspan=2><input type="text" name="presion" value="<c:out value = "${presion}"/>" maxlength="3" size="5" readonly></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Examen de Pies</td>
     <td colspan=2><input type=checkbox name="pies" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Examen de ojos </td>
     <td colspan=2><input type=checkbox name="ojos" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Consejos sobre su Dieta</td>
     <td colspan=2><input type=checkbox name="dieta" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Consejos sobre Ejercicios</td>
     <td colspan=2><input type=checkbox name="ejercicios" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Habito de Fumar</td>
     <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
  </tr> 
  <tr style="font-size:10pt">
   <td class="etiqueta" colspan=2> Observaciones</td>
   <td colspan=2><input type="text" name="observa" value="" maxlength=100 ></td>
  </tr>

  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cardiovasculares</td>
     <td colspan=2><input type=checkbox name="cardio" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Reumaticas</td>
     <td colspan=2><input type=checkbox name="reuma" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cancer Cervico Uterino</td>
     <td colspan=2><input type=checkbox name="cancer" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Cancer Otros</td>
     <td colspan=2><input type=checkbox name="cancero" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Diabetis Mellitus I-II</td>
     <td colspan=2><input type=checkbox name="diabetes" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Hipertensión Arterial Sistémica <br>en mayores de 5 años </td>
     <td colspan=2><input type=checkbox name="arterial" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Sobrepeso en mayores <br>de 5 años</td>
     <td colspan=2><input type=checkbox name="speso" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 > Abuso <BR>de Alcohol</td>
     <td colspan=2><input type=checkbox name="alcohol" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Habito de Fumar</td>
     <td colspan=2><input type=checkbox name="fuma" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" colspan=2 >Violencia Familiar</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Episodios depresivos<br> /ansiedad </td>
     <td colspan=2><input type=checkbox name="depre" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Epilepsia /Convulsiones<br> /Ataques</td>
     <td colspan=2><input type=checkbox name="epilepsia" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Trastornos de comportamiento /consumo<br> de sustancias psicotrópicas</td>
     <td colspan=2><input type=checkbox name="psico" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Personas con Discapacidad</td>
     <td colspan=2><input type=checkbox name="discapa" value="1" ></td>
  </tr> 
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Enfermedad Autoinmune</td>
     <td colspan=2><input type=checkbox name="auto" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Infeccion Urinaria</td>
     <td colspan=2><input type=checkbox name="urinaria" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Enfermedad Sistemica</td>
     <td colspan=2><input type=checkbox name="sistemica" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Glomerulopatias</td>
     <td colspan=2><input type=checkbox name="glome" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Anormalidad Tracto Urinario</td>
     <td colspan=2><input type=checkbox name="tracto" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Lupus Eritromatoso</td>
     <td colspan=2><input type=checkbox name="lupus" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Litiasis</td>
     <td colspan=2><input type=checkbox name="litiasis" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Nooplasias</td>
     <td colspan=2><input type=checkbox name="nooplasia" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Exposicion Nefrotoxicos</td>
     <td colspan=2><input type=checkbox name="nefro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
  <td class="etiqueta" colspan=2 >Dislipidemia</td>
     <td colspan=2><input type=checkbox name="disli" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >HCL Fam. Enf. Renal Cronica</td>
     <td colspan=2><input type=checkbox name="frenal" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Niño Bajo Peso</td>
     <td colspan=2><input type=checkbox name="bajopeso" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Niño Prematuro</td>
     <td colspan=2><input type=checkbox name="prematuro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Eritrocitosis</td>
     <td colspan=2><input type=checkbox name="eritro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Antecedentes Insuf. Renal Aguda</td>
     <td colspan=2><input type=checkbox name="renal" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Tuberculosis</td>
     <td colspan=2><input type=checkbox name="tuberculo" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
     <td class="etiqueta" colspan=2 >Otro</td>
     <td colspan=2><input type=checkbox name="otro" value="1" ></td>
  </tr>
  <tr style="font-size:10pt">
        <td class="etiqueta">Medicamento <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_medicamento">
            <option value="0">-- seleccione --
       	    <c:forEach var="med" items="${listarMedicamentos}">
    	      <option value="<c:out value="${med.id_medicamento}"/>" <c:if test="${med.id_medicamento == id_medicamento}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(med.medicamento,0,25)}"/></font><font size="2pt">[<c:out value="${fn:substring(med.forma_far,0,15)}"/>]</font><font color="blue"><c:out value="${fn:substring(med.concentra,0,15)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
      
    <tr style="font-size:10pt">
   <td class="etiqueta" > Mortalidad </td>
   <td class="etiqueta" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referencias</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Pac. ref. recibidos por el establecimiento</option>
  	      <OPTION value="2" >Pac. ref. a otros establecimiento </option>
              <OPTION value="3" >PCD ref. a Unid. Calificacion. Discapacidad </option>
              <OPTION value="4" >Pac. contraref. al establecimiento </option>
              <OPTION value="5" >Pac. ref. comunidad o medicina tradicional </option>
              <OPTION value="6" >Pac. ref. a medicina tradicional </option>
          </SELECT>	
    </td>
   </tr>
      
    
  <tr style="font-size:10pt">
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>
   
   <tr style="font-size:10pt">
    <td class="etiqueta" > Referido <br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,22)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
  
</c:if>
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
<input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
  
</form>

  </td>
  </tr>
   
</table>

 <div class="titulo" align="center"> RESUMEN HISTORIA ENFERMEDADES NO TRANSMISIBLES</div> 
 
     <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>
         <th align="center" style="font-size:15" colspan="28">CONSULTAS    PREVIAS</th>
      </tr>
      <tr  style="font-size:10pt">
         <th bgcolor="#F2F2F2"> FECHA </th>
         <th bgcolor="#F2F2F2"> Nuevo/<br>Repetido </th>
         <th bgcolor="#F2F2F2"> PESO </th>
         <th bgcolor="#F2F2F2"> TALLA </th>
         <th bgcolor="#F2F2F2"> PA </th>
         <th bgcolor="#F2F2F2"> Hba </th>
         <th bgcolor="#F2F2F2"> GFR </th>
         <th bgcolor="#F2F2F2"> Creati<br>tinina </th>
         <th bgcolor="#F2F2F2"> Coles<br>terol </th>
         <th bgcolor="#F2F2F2"> I.M.C. </th>
         <th bgcolor="#F2F2F2"> Examen<br>Pies </th>
         <th bgcolor="#F2F2F2"> Examen<br>Ojos </th>
         <th bgcolor="#F2F2F2"> Consejos<br>Dieta </th>
         <th bgcolor="#F2F2F2"> Consejos<br>Ejercicios</th>
         <th bgcolor="#F2F2F2"> Observa-<br>ciones</th>
         <th bgcolor="#F2F2F2"> Cardio-<br>vasculares </th>
         <th bgcolor="#F2F2F2"> Reuma-<br>ticas </th>
         <th bgcolor="#F2F2F2"> Cancer<br>Cervis<br>Uterino </th>
         <th bgcolor="#F2F2F2"> Cancer<br> Otros </th>
         <th bgcolor="#F2F2F2"> Diabetes<br>Mellitus </th>
         <th bgcolor="#F2F2F2"> Hiper-<br>tension </th>
         <th bgcolor="#F2F2F2"> Sobre-<br>peso </th>
         <th bgcolor="#F2F2F2"> Abuso<br>Alcohol </th>
         <th bgcolor="#F2F2F2"> Habito<br>Fumar </th>
         <th bgcolor="#F2F2F2"> Depre-<br>sion </th>
         <th bgcolor="#F2F2F2"> Epile-<br>psia </th>
         <th bgcolor="#F2F2F2"> Trastornos<br>Mentales </th>
         <th bgcolor="#F2F2F2"> Disca-<br>pacidad </th>
         
      </tr>
         <c:forEach var="listac" items="${listac1}" varStatus="contador">
           <!-- ********** Esto es para el efecto ************ -->
         <tr  style="font-size:10pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
           <!-- ********** Fin  efecto ************ -->  
           <td><fmt:formatDate value="${listac.fechap}" pattern='dd/MM/yyyy HH:mm'/></td>  
           <td><c:out value="${listac.tipoconsulta}"/></td>
           <td><c:out value="${listac.peso}"/></td>
           <td><c:out value="${listac.talla}"/></td>
           <td><c:out value="${listac.pa}"/></td> 
           <td><c:out value="${listac.aspecto}"/></td>
           <td><c:out value="${listac.bacterias}"/></td>
           <td><c:out value="${listac.bilirrubina}"/></td>
           <td><c:out value="${listac.cantidad}"/></td>
           <td><c:out value="${listac.cetonas}"/></td>
           <td><c:out value="${listac.aqv}"/></td>
           <td><c:out value="${listac.bcg}"/></td>
           <td><c:out value="${listac.condon}"/></td>
           <td><c:out value="${listac.controlpos}"/></td>
           <td><c:out value="${listac.observa}"/></td>
           <td><c:out value="${listac.cardio}"/></td>
           <td><c:out value="${listac.reuma}"/></td>
           <td><c:out value="${listac.cancer}"/></td>
           <td><c:out value="${listac.cancero}"/></td>
           <td><c:out value="${listac.diabetes}"/></td>
           <td><c:out value="${listac.arterial}"/></td>
           <td><c:out value="${listac.speso}"/></td>
           <td><c:out value="${listac.alcohol}"/></td>
           <td><c:out value="${listac.fuma}"/></td>
           <td><c:out value="${listac.depre}"/></td>
           <td><c:out value="${listac.epilepsia}"/></td>
           <td><c:out value="${listac.psico}"/></td>
           <td><c:out value="${listac.discapa}"/></td>
         </tr>  
         </c:forEach>
    </table>  
