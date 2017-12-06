<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./mostrarForm.js">  </script>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <th colspan="3">ACCION A REALIZAR AL PACIENTE CUADERNO EMERGENCIAS</th>
  </tr>
  <tr>
    <td width="50%" valign="top"> 
    <table class="table table-striped table-bordered table-condensed table-responsive" >
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
<td><form name=formaC1 method=post action='<c:url value="/Cemergencias.do"/>'>
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
    <th> NRO </th>
    <th> RANGO EDAD </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:10pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
         <table class="table table-striped table-bordered table-condensed table-responsive" >
           <tr><td><c:if test="${lista.suma1 == 1}">
           Menor de 5 años     
           </c:if> 
           <c:if test="${lista.suma2 == 1}">
           Persona de 5 a 9 años      
           </c:if> 
           <c:if test="${lista.suma3 == 1}">
           Persona de 10 a 20 años      
           </c:if> 
           <c:if test="${lista.suma4 == 1}">
           Persona de 21 a 59 años      
           </c:if> 
           <c:if test="${lista.suma5 == 1}">
           Persona de 60 años o mas      
           </c:if>
           <c:if test="${lista.suma30 > 0}">
           <br><font color="blue">Referido a :<c:out value="${lista.suma30}"/></font>
           </c:if>
           <c:if test="${lista.suma31 > 0}">
           <br><font color="blue">Contrareferido a :<c:out value="${lista.suma31}"/></font>
           </c:if></td>
           <td align="center"> <font color="blue"><b><c:out value="${lista.tipoconsulta}"/></b></font></td>
           </tr>
           
           <c:if test="${lista.suma1==0}">
              <tr><td>Situacion Ingreso </td><td>Buena</td></tr>
           </c:if>
           <c:if test="${lista.suma1==1}">
              <tr><td>Situacion Ingreso </td><td>Regular</td></tr>
           </c:if>
           <c:if test="${lista.suma1==2}">
              <tr><td>Situacion Ingreso </td><td>Mala</td></tr>
           </c:if>
           <c:if test="${lista.suma1==3}">
              <tr><td>Situacion Ingreso </td><td>Muerto</td></tr>
           </c:if>
           
           <c:if test="${lista.servicio==1}">
              <tr><td>Motivo Ingreso </td><td>Enfermedad</td></tr>
           </c:if>
           <c:if test="${lista.servicio==2}">
              <tr><td>Motivo Ingreso </td><td>Hecho de Transito</td></tr>
           </c:if>
           <c:if test="${lista.servicio==3}">
              <tr><td>Motivo Ingreso </td><td>Accidente</td></tr>
           </c:if>
           
           <c:if test="${lista.violencia==1}">
              <tr><td>Violencia</td><td>Intrafamiliar</td></tr>
           </c:if>
           <c:if test="${lista.violencia==2}">
              <tr><td>Violencia</td><td>Sexual</td></tr>
           </c:if>
           <c:if test="${lista.violencia==3}">
              <tr><td>Violencia</td><td>Fisica</td></tr>
           </c:if>
           <c:if test="${lista.violencia==4}">
              <tr><td>Violencia</td><td>Psicologia</td></tr>
           </c:if>
           <c:if test="${lista.violencia==5}">
              <tr><td>Violencia</td><td>Descuido</td></tr>
           </c:if>
           
           <c:if test="${lista.suma2==0}">
              <tr><td>Tipo Egreso</td><td>Alta Medica</td></tr>
           </c:if>
           <c:if test="${lista.suma2==1}">
              <tr><td>Tipo Egreso</td><td>Alta Solicitada</td></tr>
           </c:if>
           <c:if test="${lista.suma2==2}">
              <tr><td>Tipo Egreso</td><td>Fuga</td></tr>
           </c:if>
           <c:if test="${lista.suma2==3}">
              <tr><td>Tipo Egreso</td><td>Fallecido</td></tr>
           </c:if>
                 
       </table></td> 
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cemergencias.do"/>'>
       <td>     
         <div class="btn btn-danger btn-xs"><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
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
    </tr> 
   </c:forEach>
</table>
    </td>
    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cemergencias.do"/>'>

<table class="table table-striped table-bordered table-condensed table-responsive" >
 
  <tr style="font-size:10pt">
    <th colspan="5" align="center"><center>TRATAMIENTO EN EMERGENCIAS</center></th>
  </tr>
  <tr style="font-size:10pt">
        <td colspan=3 align="right">Tipo de Consulta  </td>
        <td colspan=2>
          <SELECT NAME="tipo">
              <option value="N">Nueva</option>
  	      <OPTION value="R" >Repetida </option>
          </SELECT>	
        </td>
 </tr> 

 <tr style="font-size:10pt">
        <td colspan=3 align="right">Situacion de Ingreso  </td>
        <td colspan=2>
          <SELECT NAME="tingreso">
              <OPTION value="0">Buena </option>
  	      <OPTION value="1">Regular </option>
              <OPTION value="2">Mala </option>
              <OPTION value="3">Muerto </option>
          </SELECT>	
        </td>
 </tr>    
 <tr style="font-size:10pt">
        <td colspan=3 align="right">Motivo de Ingreso  </td>
        <td colspan=2>
          <SELECT NAME="motivo">
              <OPTION value="0">Sin definir </option>
  	      <OPTION value="1">Enfermedad</option>
              <OPTION value="2">Hecho Transito </option>
              <OPTION value="3">Accidente</option>
          </SELECT>	
        </td>
 </tr>    
  <tr style="font-size:10pt">
        <td colspan=3 align="right">Tipo Violencia  </td>
        <td colspan=2>
          <SELECT NAME="violencia">
              <OPTION value="0">Sin violenca </option>
  	      <OPTION value="1">Intrafamiliar</option>
              <OPTION value="2">Sexual </option>
              <OPTION value="3">Fisica</option>
              <OPTION value="4">Psicologia</option>
              <OPTION value="5">Descuido</option>
          </SELECT>	
        </td>
 </tr>    
 
  <tr style="font-size:10pt">
      <td colspan=3 align="right">Tipo de Egreso </td>
        <td colspan=2>
          <SELECT NAME="tipoegreso">
              <option value="0">Alta Medica</option>
              <option value="1">Alta Solicitada</option>
              <option value="2">Fuga</option>
              <option value="3">Fallecido</option>
          </SELECT>
        </td>
       
 </tr>    
  
 <tr style="font-size:10pt">
        <td colspan=3 align="right">Causas de Fallecimiento </td>
        <td colspan=2>
          <SELECT NAME="fallecido">
              <option value="0">Ninguno</option>
              <option value="1">de R.N. Menor de 7 dias</option>
  	      <OPTION value="2">de 7 dias a Menor 5 años</option>
              <OPTION value="3">Por Diarrea en < 5 años</option>
              <option value="4">Desnutricion Grave < 5 años</option>
              <option value="5">Por Neumonia en < 5 años</option>
  	      <OPTION value="6">Por otras causas en < 5 años</option>
              <option value="7">Por otras causas en >= 5 años</option>
              <option value="8">Muerte Materna</option>
          </SELECT>	
        </td>
 </tr>   
  <tr style="font-size:10pt">
   <td align="right" > Mortalidad </td>
   <td align="right" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
  <tr style="font-size:10pt">
   <td align="right" > Referencias</td>
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
   <td align="right" > Referido<br>a:</td>
   <td align="right" > Establecimiento ::<br>Observación ::</td>
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
    <td class="etiqueta" > Retornado<br>a:</td>
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



</table>
<center>
    <input type="submit" name='accion' class="btn btn-primary btn-lg" value='Agregar'>  
    <input type="submit" name='accion' class="btn btn-success btn-lg" value='Terminar'>  
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

 <div class="titulo" align="center"> RESUMEN HISTORIA EMERGENCIAS</div> 
     <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>
         <th align="center" style="font-size:15" colspan="28">CONSULTAS    PREVIAS</th>
      </tr>
      <tr style="font-size:10pt">
         <th> FECHA </th>
         <th> Nuevo/<br>Repetido </th>
         <th> PESO </th>
         <th> TALLA </th>
         <th> PA </th>
         <th> Hba </th>
         <th> GFR </th>   
      </tr>
         <c:forEach var="listac" items="${listac1xx}" varStatus="contador">
           <!-- ********** Esto es para el efecto ************ -->
         <tr  style="font-size:10pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
           <!-- ********** Fin  efecto ************ -->  
           <td><fmt:formatDate value="${listac.fechap}" pattern='dd/MM/yyyy'/></td>  
           <td><c:out value="${listac.tipoconsulta}"/></td>
           <td><c:out value="${listac.peso}"/></td>
           <td><c:out value="${listac.talla}"/></td>
           <td><c:out value="${listac.pa}"/></td> 
           <td><c:out value="${listac.aspecto}"/></td>
           <td><c:out value="${listac.bacterias}"/></td>
         </tr>  
         </c:forEach>
    </table>  
