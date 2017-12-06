<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
     <tr>
       <th colspan="3"><center>ACCION A REALIZAR AL PACIENTE CUADERNO INTEGRAL DEL MENOR DE 5 AÑOS</center></th>
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
 
 <table class="tabla"><tr>
<td><form name=formaC4 method=post action='<c:url value="/Cuaderno4.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaC4.submit();">Retornar</a></div></td>
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
  
 <table class="table table-striped table-bordered table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> TRATAMIENTO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaOdon}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>   
       <table class="table table-striped table-bordered table-condensed table-responsive">
       <tr>    
        <c:if test="${lista.tipo_egreso == 0}">
            <td>Tipo Control <font color="red">DENTRO</font></td> 
        </c:if>    
        <c:if test="${lista.tipo_egreso == 1}">
            <td>Tipo Control <font color="red">FUERA</font></td> 
        </c:if>      
        <td><c:out value="${lista.tipoconsulta}"/></td>      
       </tr>
        <c:if test="${lista.observa != '0'}">
       <tr>    
        <td>Desnutricion Global (P/E)</td>      
        <td><c:out value="${lista.observa}"/></td>      
       </tr>         
       </c:if> 
       <c:if test="${lista.dglobal != 'X'}">
       <tr>    
        <td>Desnutricion Aguda (P/T)</td>      
        <td><c:out value="${lista.dglobal}"/></td>      
       </tr>         
       </c:if> 
       <tr>    
        <td>Desnutricion Cronica (T/E)</td>      
        <td><c:out value="${lista.dcronica}"/></td>      
       </tr>         
     <c:if test="${tipo != '3'}">   
       <c:if test="${lista.suma1 == 1}">
       <tr>    
        <td>Consejeria Alimen. Compl. </td>      
        <td>Si</td>      
       </tr>     
       </c:if> 
       <c:if test="${lista.dhierro != 'X'}">
       <tr>    
        <td>Dosis Hierro</td>      
        <td><c:out value="${lista.dhierro}"/></td>      
        </tr>         
       </c:if> 
       <c:if test="${lista.dvitaa != 'X'}">
        <tr>    
         <td>Dosis Vitamina A</td>      
         <td><c:out value="${lista.dvitaa}"/></td>      
       </tr>         
       </c:if> 
       <c:if test="${lista.suma2 == 1}">
       <tr>            
        <td>NUTRIBEBE</td>      
        <td>Si</td>      
       </tr>             
       </c:if> 
       <c:if test="${lista.suma4 == 1}">
          <tr>            
          <td>Consej.Lactancia Materna</td>      
          <td>Si</td>      
          </tr>   
       </c:if>
       <c:if test="${lista.suma5 == 1}">
          <tr>            
          <td>Lactacia Mat. Exclusiva</td>      
          <td>Si</td>      
          </tr>   
       </c:if>
       <c:if test="${lista.lmexclu == 'P'}">
          <tr>            
          <td>Mebendazol</td>      
          <td>1ra Dosis</td>      
          </tr>   
       </c:if>
       <c:if test="${lista.lmexclu == 'S'}">
          <tr>            
          <td>Mebendazol</td>      
          <td>2da Dosis</td>      
          </tr>   
       </c:if>
       <c:if test="${lista.suma3 == 1}">
       <tr>            
        <td>Niño enfermo</td>      
         <td>Si</td>      
       </tr>            
       </c:if>
   
       <tr>            
        <td>Acciones Tomadas </td>      
        <td><c:out value="${lista.referido}"/></td>      
       </tr>
       <tr>            
           <td>Clasificacion</td>      
           <td style="color:blue"><c:out value="${lista.resultado}"/></td>      
        </tr>
       <c:if test="${lista.suma15 == 1}">
       <tr>            
        <td>Desarrollo Simple</td>      
         <td style="color:blue">Si</td>      
       </tr>            
       </c:if> 
       </c:if> <!-- Fin de 3er Nivel -->   
       <c:if test="${lista.suma30>0}">
         <tr><td>Referido a :<font color="blue"><c:out value="${lista.suma30}"/></font></td></tr>
       </c:if>
       <c:if test="${lista.suma31>0}">
         <tr><td>Contrareferido a :<font color="blue"><c:out value="${lista.suma31}"/></font></td></tr>
       </c:if>
       </table>
       </td>    
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno4.do"/>'>
       <td>     
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno" value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name="accion"          value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     </tr>
   </c:forEach>
</table>
    </td>
    <td width="50%" valign="top">
 <c:if test="${tipo == '4'}">
  <form name="adicionar3" method="POST" action='<c:url value="/Cuaderno4.do"/>' >   
  <table class="formulario" border=1>
   <input class="btn btn-warning btn-sm" type="submit" name='accion' value='Niño Sano'>
   <input class="btn btn-success btn-sm" type="submit" name='accion' value='Niño Enfermo'> 
   <input class="btn btn-info btn-sm" type="submit" name='accion' value='AIEPII'>    
   <tr>
      <th colspan="6">TRATAMIENTO</th>
   </tr>
    <c:if test="${(accion4 == 'Niño Enfermo')}"> 
       <tr>
            <td colspan=3 class="etiqueta">Tipo de Consulta  </td>
            <td colspan=3>
              <SELECT NAME="tipo">
                  <option value="N">Nueva</option>
                  <option value="R" >Repetida </option>
              </SELECT>	
            </td>
     </tr>
  <tr>
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,25)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>
   <tr>
    <td class="etiqueta" > Retornado<br>a:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,25)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
  </c:if>    
  
  <c:if test="${(accion4 == 'Niño Sano')}">   
      <tr>
            <td colspan=3 class="etiqueta">Tipo de Consulta  </td>
            <td colspan=3>
              <SELECT NAME="tipo">
                  <option value="N">Nueva</option>
                  <option value="R" >Repetida </option>
              </SELECT>	
              <SELECT NAME="fuera">
                  <option value="0">Dentro</option>
                  <option value="1" >Fuera </option>
              </SELECT>	
            </td>
     </tr> 
     <tr>
        <td colspan=3 class="etiqueta" style="color:blue">Desnutricion Global (Peso/Edad) </td>
        <td colspan=2 style="color:blue">
          <SELECT NAME="dgloba" style="color:blue">
              <option value="N" <c:if test="${pesoedad == 'N'}">selected</c:if> >Nutricion normal </option>
              <option value="L" <c:if test="${pesoedad == 'L'}">selected</c:if> >Bajo Peso</option>
  	      <option value="G" <c:if test="${pesoedad == 'G'}">selected</c:if> >Desnutricion grave</option>
          </SELECT>	
        </td>
     </tr>     
     <tr>
        <td colspan=3 class="etiqueta">Desnutricion Aguda (Peso/Talla) </td>
        <td colspan=2>
          <SELECT NAME="dglobal">
              <option value="O" <c:if test="${nutricion == 'O'}">selected</c:if> >Obesidad </option>
              <option value="S" <c:if test="${nutricion == 'S'}">selected</c:if> >Sobrepeso</option>
  	      <option value="N" <c:if test="${nutricion == 'N'}">selected</c:if> >Nutricion normal </option>
              <!-- se elimino Leve 23/07/2013-->
  	      <option value="M" <c:if test="${nutricion == 'M'}">selected</c:if> >Desnutricion moderada</option>
              <option value="G" <c:if test="${nutricion == 'G'}">selected</c:if> >Desnutricion grave</option>
          </SELECT>	
        </td>
     </tr>     
     <tr>
        <td colspan=3 class="etiqueta">Desnutricion Cronica (Talla/Edad) </td>
        <td colspan=2>
          <SELECT NAME="dcronica">
              <option value="N" <c:if test="${tallaedad == 'N'}">selected</c:if> >Talla normal</option>
              <option value="L" <c:if test="${tallaedad == 'L'}">selected</c:if> >Talla baja </option>
  	   </SELECT>	
        </td>
     </tr>
    <tr>
    <td class="etiqueta" > Referido<br>de:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,25)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>  
   <tr>
   <td class="etiqueta" > Referido<br>a:</td>
   <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
   <td colspan=3><SELECT NAME="id_hospital">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab" items="${listarestab}">
    	      <option value="<c:out value="${estab.cod_esta}"/>" <c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab.establecimiento,0,25)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="ref" value="" size="30" maxlength="50" > 
    </td>
   </tr>
   
   <tr>
    <td class="etiqueta" > Retornado<br>a:</td>
    <td class="etiqueta"> Establecimiento ::<br>Observación ::</td>
    <td colspan=3><SELECT NAME="id_hospital2">
            <option value="0">-- seleccione --
       	    <c:forEach var="estab2" items="${listarestabC}">
    	      <option value="<c:out value="${estab2.cod_esta}"/>" <c:if test="${estab2.cod_esta == cod_esta}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(estab2.establecimiento,0,25)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>
         <br><input type="text" name="cref" value="" size="30" maxlength="50" > 
   </td>
  </tr>
   </c:if>
     <tr>
  </tr> 
 </table>
    <center>
        <input type="submit" name='accion' class="aceptar" value='Agregar'>  
        <input type="submit" name='accion' class="cancelar" value='Terminar'>  
    </center>  
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
        <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
        <input type="hidden" name='accion4'         value='<c:out value="${accion4}"/>'>
   </table>
   </form> 
    </td>
  </tr>
  </c:if><!-- fin de solo 3 nivel-->
  
<c:if test="${tipo != '4'}">
<form name="adicionar" method="POST" action='<c:url value="/Cuaderno4.do"/>' >
<table class="formulario" border=1>
  <input type="submit" class="btn btn-primary" name='accion' value='Niño Sano'>
  <input type="submit" class="btn btn-success" name='accion' value='Niño Enfermo'> 
  <input type="submit" class="btn btn-warning" name='accion' value='Desarrollo'> 
 <!-- <input type="submit" name='accion' value='Desarrollo Simple'> -->
  <input type="submit" class="btn btn-info" name='accion' value='AIEPII'> 
  <tr>
    <th colspan="5">TRATAMIENTO : <c:out value = "${accion4}"/></th>
  </tr>
 <c:if test="${(accion4 == 'Niño Enfermo')}"> 
     <tr>
            <td colspan=3 class="etiqueta">Tipo de Consulta  </td>
            <td colspan=3>
              <SELECT NAME="tipo">
                  <option value="N">Nueva</option>
                  <option value="R" >Repetida </option>
              </SELECT>	
              <SELECT NAME="fuera">
                  <option value="0">Dentro</option>
                  <option value="1" >Fuera </option>
              </SELECT>	
            </td>
     </tr>
     <c:if test="${codesta== '400010'}">
      <tr>
        <td colspan=3 class="etiqueta"> Chispitas </td>
        <td colspan=2>
          <SELECT NAME="dhierro">
              <option value="X">Ninguno</option>
              <option value="P">Dosis: Chispitas</option>
          </SELECT>	
        </td>
     </tr>   
     </c:if>
     <c:if test="${codesta!= '400010'}">
     <tr>
        <td colspan=3 class="etiqueta">Dosis Hierro (Frascos)<br> Chispitas </td>
        <td colspan=2>
          <SELECT NAME="dhierro">
              <option value="X">Ninguno</option>
              <option value="P">Dosis: Chispitas</option>
              <option value="S">2años: 3Frascos Hierro</option>
              <option value="T">3a5años: 4Frascos Hierro</option>
          </SELECT>	
        </td>
     </tr> 
    </c:if>
 <tr>
        <td colspan=3 class="etiqueta">Dosis Vitamina A </td>
        <td colspan=2>
          <SELECT NAME="dvitaa">
              <option value="X">Ninguno</option>
              <option value="U">6 a 11 meses(Dosis Unica)</option>
              <option value="P">1a5años: 1ra. Dosis</option>
  	      <option value="S">1a5años: 2da. Dosis</option>
             
          </SELECT>	
        </td>
 </tr>
 <tr>
        <td colspan=3 class="etiqueta">Dosis Mebendazol de 1 a < 5 años</td>
        <td colspan=2>
          <SELECT NAME="lmexclu">
              <option value="X">Ninguno</option>
              <option value="P">Primera Dosis</option>
              <option value="S">Segunda Dosis</option>
          </SELECT>	
        </td>
 </tr>  
 <tr>
   <td class="etiqueta" colspan=3 >NUTRIBEBE (Alimento <br>complementario de 6 meses a < 23 meses)</td>
   <td><input type=checkbox name="suma2" value="1" ></td>   
 </tr>
 <tr>
   <td class="etiqueta" colspan=3> ATLU</td>
   <td><input type=checkbox name="desesti5" value="5" ></td>   
 </tr>
 <tr>
   <td class="etiqueta" colspan=3> ZINC</td>
   <td><input type=checkbox name="desesti6" value="6" ></td>   
 </tr>
 <tr>
   <td class="etiqueta" colspan=3> ACIDO FOLICO</td>
   <td><input type=checkbox name="desesti8" value="8" ></td>   
 </tr>
 
<tr>
   <td class="etiqueta" > Mortalidad</td>
   <td colspan=4><SELECT NAME="refer">
              <option value="1">Muerte Neonatal tardia (7-27 dias)</option>
  	      <OPTION value="2" >Muerte Menor 28 dias por sepsis </option>
              <OPTION value="3" >Muerte Menor 28 dias por asfixia perinatal </option>
              <OPTION value="4" >Muerte de 28 dias a menor 1 año</option>
              <OPTION value="5" >Muerte Menor 5 años por Diarrea </option>
              <OPTION value="6" >Muerte Menor 5 años por Neumonia </option>
              <OPTION value="7" >Muerte Menor 5 años Desnutricion aguda grave </option>
              <OPTION value="8" >Muerte Menor 5 años por otras cusas </option>
          </SELECT>	
    </td>
   </tr>
  <tr>
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
   

  <tr>
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
   <tr>
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
 
 </c:if>
 
 <c:if test="${(accion4 == 'Niño Sano')}"> 
     <tr>
           <td colspan=3 class="etiqueta">Tipo de Consulta  </td>
            <td colspan=3>
              <SELECT NAME="tipo">
                  <option value="N">Nueva</option>
                  <option value="R" >Repetida </option>
              </SELECT>	
              <SELECT NAME="fuera">
                  <option value="0">Dentro</option>
                  <option value="1" >Fuera </option>
              </SELECT>	
            </td>
    </tr>
    <tr>
        <td colspan=3 class="etiqueta" style="color:blue">Desnutricion Global (Peso/Edad) </td>
        <td colspan=2 style="color:blue">
          <SELECT NAME="dgloba" style="color:blue">
              <option value="N" <c:if test="${pesoedad == 'N'}">selected</c:if> >Nutricion normal </option>
              <option value="L" <c:if test="${pesoedad == 'L'}">selected</c:if> >Bajo Peso</option>
  	      <option value="G" <c:if test="${pesoedad == 'G'}">selected</c:if> >Desnutricion grave</option>
          </SELECT>	
        </td>
   </tr>     
    <tr>
        <td colspan=3 class="etiqueta">Desnutricion Aguda (Peso/Talla) </td>
        <td colspan=2>
          <SELECT NAME="dglobal">
              <option value="O" <c:if test="${nutricion == 'O'}">selected</c:if> >Obesidad </option>
              <option value="S" <c:if test="${nutricion == 'S'}">selected</c:if> >Sobrepeso</option>
  	      <option value="N" <c:if test="${nutricion == 'N'}">selected</c:if> >Nutricion normal </option>
              <!-- se elimino Leve 23/07/2013-->
  	      <option value="M" <c:if test="${nutricion == 'M'}">selected</c:if> >Desnutricion moderada</option>
              <option value="G" <c:if test="${nutricion == 'G'}">selected</c:if> >Desnutricion grave</option>
          </SELECT>	
        </td>
 </tr>     
 <tr>
        <td colspan=3 class="etiqueta">Desnutricion Cronica (Talla/Edad) </td>
        <td colspan=2>
          <SELECT NAME="dcronica">
              <option value="N" <c:if test="${tallaedad == 'N'}">selected</c:if> >Talla normal</option>
              <option value="L" <c:if test="${tallaedad == 'L'}">selected</c:if> >Talla baja </option>
  	   </SELECT>	
        </td>
 </tr>   
  
 <c:if test="${codesta== '400010'}">
      <tr>
        <td colspan=3 class="etiqueta"> Chispitas </td>
        <td colspan=2>
          <SELECT NAME="dhierro">
              <option value="X">Ninguno</option>
              <option value="P">Dosis: Chispitas</option>
          </SELECT>	
        </td>
     </tr>   
     </c:if>
     <c:if test="${codesta!= '400010'}">
     <tr>
        <td colspan=3 class="etiqueta">Dosis Hierro (Frascos)<br> Chispitas </td>
        <td colspan=2>
          <SELECT NAME="dhierro">
              <option value="X">Ninguno</option>
              <option value="P">Dosis: Chispitas</option>
              <option value="S">2años: 3Frascos Hierro</option>
              <option value="T">3a5años: 4Frascos Hierro</option>
          </SELECT>	
        </td>
     </tr> 
    </c:if>
    
    
 <tr>
        <td colspan=3 class="etiqueta">Dosis Vitamina A </td>
        <td colspan=2>
          <SELECT NAME="dvitaa">
              <option value="X">Ninguno</option>
              <option value="U">6 a 11 meses(Dosis Unica)</option>
              <option value="P">1a5años: 1ra. Dosis</option>
  	      <option value="S">1a5años: 2da. Dosis</option>
             
          </SELECT>	
        </td>
  </tr>
  <tr>
        <td colspan=3 class="etiqueta">Dosis Mebendazol de 1 a < 5 años</td>
        <td colspan=2>
          <SELECT NAME="lmexclu">
              <option value="X">Ninguno</option>
              <option value="P">Primera Dosis</option>
              <option value="S">Segunda Dosis</option>
          </SELECT>	
        </td>
  </tr>  
 <tr>
   <td class="etiqueta" colspan=3 >Consejeria en Lactancia Materna</td>
   <td><input type=checkbox name="suma4" value="1" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3 >Lactancia Materna Exclusiva</td>
   <td><input type=checkbox name="suma5" value="1" ></td>   
</tr>
 <tr>
   <td class="etiqueta" colspan=3 >Consejería en alimentación complementaria <br> (6 meses a < de 2 años)</td>
   <td><input type=checkbox name="suma1" value="1" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3 >NUTRIBEBE (Alimento <br>complementario de 6 meses a < 23 meses)</td>
   <td><input type=checkbox name="suma2" value="1" ></td>   
</tr>

<tr>
   <td class="etiqueta" colspan=3> Desarrollo y estimulacion del niño<br> (Motibilidad Gruesa)</td>
   <td><input type=checkbox name="desesti1" value="1" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> Desarrollo y estimulacion del niño<br> (Motibilidad Fina)</td>
   <td><input type=checkbox name="desesti2" value="2" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> Desarrollo y estimulacion del niño<br> (Audicion y Lenguaje)</td>
   <td><input type=checkbox name="desesti3" value="3" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> Desarrollo y estimulacion del niño<br> (Personal y Social)</td>
   <td><input type=checkbox name="desesti4" value="4" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> ATLU</td>
   <td><input type=checkbox name="desesti5" value="5" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> ZINC</td>
   <td><input type=checkbox name="desesti6" value="6" ></td>   
</tr>
<tr>
   <td class="etiqueta" colspan=3> ACIDO FOLICO</td>
   <td><input type=checkbox name="desesti8" value="8" ></td>   
</tr>

</c:if>
 
<c:if test="${(accion4 == 'Desarrollo')}"> 
     
   <tr>
        <tr>
           <td class="etiqueta" colspan="2">Anemia::</td>
           <td>No<input type=radio name="anemia" value="2" checked>Si<input type=radio name="anemia" value="0" ></td>
        </tr>
    </tr>
     <tr>
          <td class="etiqueta" colspan="2">Edema::</td>
          <td>No<input type=radio name="edema" value="2" checked>Si<input type=radio name="edema" value="0" ></td>
     </tr>    
     <tr>
          <td class="etiqueta" colspan="2">Emaciacion Visible::</td>
          <td>No<input type=radio name="emacia" value="2" checked>Si<input type=radio name="emacia" value="0" ></td>
     </tr>    
 <c:forEach var="lista1" items="${listam1}" begin="0" end="0" varStatus="contador">
      <tr>
        <td><font size="1"><c:out value = "${lista1.id_cuaderno}"/><br>Motricidad<br>Gruesa</font></td>   
        <td class="etiqueta">
           <textarea name="subjetivo" rows="1" cols="20" style="width:300" maxlength="50"><c:out value = "${lista1.registro}" escapeXml="False"/></textarea>
           <img src="./imagenes/aiepi/<c:out value = "${lista1.accion}"/>" />
        </td>
        <td> 
            <SELECT NAME="lista1">
                    <option value="2"> 2-Verde </option>
                    <option value="1"> 1-Amarillo </option>
                    <option value="0"> 0-Rojo </option> 
              </SELECT>         
        </td>
        <input type="hidden" name='v1' value='<c:out value="${lista1.id_cuaderno}"/>'>
      </tr>
  </c:forEach>  
  <c:forEach var="lista1" items="${listam1}" begin="1" end="1" varStatus="contador">
      <tr>
        <td><font size="1"><c:out value = "${lista1.id_cuaderno}"/><br>Motricidad<br>Fina</font></td>      
        <td class="etiqueta">
           <textarea name="subjetivo" rows="1" cols="20" style="width: 300"><c:out value = "${lista1.registro}" escapeXml="False"/></textarea>
           <img src="./imagenes/aiepi/<c:out value = "${lista1.accion}"/>" />
        </td>
        <td>  
            <SELECT NAME="lista2">
                    <option value="2"> 2-Verde </option>
                    <option value="1"> 1-Amarillo </option>
                    <option value="0"> 0-Rojo </option> 
              </SELECT>         
        </td>
        <input type="hidden" name='v2' value='<c:out value="${lista1.id_cuaderno}"/>'>
      </tr>
  </c:forEach>  
  <c:forEach var="lista1" items="${listam1}" begin="2" end="2" varStatus="contador">
      <tr>
        <td><font size="1"><c:out value = "${lista1.id_cuaderno}"/><br>Audicion<br>Lenguaje</font></td> 
        <td class="etiqueta">
           <textarea name="subjetivo" rows="1" cols="20" style="width: 300"><c:out value = "${lista1.registro}" escapeXml="False"/></textarea>
           <img src="./imagenes/aiepi/<c:out value = "${lista1.accion}"/>" />
        </td>
        <td> 
            <SELECT NAME="lista3">
                    <option value="2"> 2-Verde </option>
                    <option value="1"> 1-Amarillo </option>
                    <option value="0"> 0-Rojo </option> 
              </SELECT>         
        </td>  
        <input type="hidden" name='v3' value='<c:out value="${lista1.id_cuaderno}"/>'>
      </tr>
  </c:forEach> 
  <c:forEach var="lista1" items="${listam1}" begin="3" end="3" varStatus="contador">
      <tr>
        <td><font size="1"><c:out value = "${lista1.id_cuaderno}"/><br>Personal<br>Social</font></td> 
        <td class="etiqueta">
           <textarea name="subjetivo" rows="1" cols="20" style="width: 300"><c:out value = "${lista1.registro}" escapeXml="False"/></textarea>
           <img src="./imagenes/aiepi/<c:out value = "${lista1.accion}"/>" />
        </td>
        <td> 
            <SELECT NAME="lista4">
                    <option value="2"> 2-Verde </option>
                    <option value="1"> 1-Amarillo </option>
                    <option value="0"> 0-Rojo </option> 
              </SELECT>         
        </td>
        <input type="hidden" name='v4' value='<c:out value="${lista1.id_cuaderno}"/>'>
      </tr>
  </c:forEach> 
  <c:forEach var="lista1" items="${listam1}" begin="4" end="4" varStatus="contador">
      <tr>
        <td><font size="1"><c:out value = "${lista1.id_cuaderno}"/><br></font></td> 
        <td class="etiqueta">
           <textarea name="subjetivo" rows="1" cols="20" style="width: 300"><c:out value = "${lista1.registro}" escapeXml="False"/></textarea>
           <img src="./imagenes/aiepi/<c:out value = "${lista1.accion}"/>" />
        </td>
        <td>  
            <SELECT NAME="lista5">
                    <option value="2"> 2-Verde </option>
                    <option value="1"> 1-Amarillo </option>
                    <option value="0"> 0-Rojo </option> 
              </SELECT>         
        </td>
        <input type="hidden" name='v5' value='<c:out value="${lista1.id_cuaderno}"/>'>
      </tr>
  </c:forEach> 
 </c:if>

  
 
  <tr>
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
<input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
<input type="hidden" name='accion4'         value='<c:out value="${accion4}"/>'>
  
</form>
</c:if>
  </td>
  </tr>
   
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Tipo </th> 
    <th bgcolor="#F2F2F2"> PESO </th> 
    <th bgcolor="#F2F2F2"> TALLA </th> 
    <th bgcolor="#F2F2F2"> EDAD </th> 
    <th bgcolor="#F2F2F2"> SEXO </th> 
    <th bgcolor="#F2F2F2"> PESO/<br>EDAD </th> 
    <th bgcolor="#F2F2F2"> PESO/<br>TALLA </th> 
    <th bgcolor="#F2F2F2"> TALLA/<br>EDAD </th> 
    <th bgcolor="#F2F2F2"> Puntaj </th>
    <th bgcolor="#F2F2F2"> Clasifi<br>cacion </th> 
    <th bgcolor="#F2F2F2"> Diagnostico </th> 
    <th bgcolor="#F2F2F2"> Accion </th> 
    <th bgcolor="#F2F2F2"> Imprimir </th>
    <th bgcolor="#F2F2F2"> Imprimir </th>
    </tr>  
   <c:forEach var="lista" items="${listaAten}" varStatus="contador">
    <tr style="font-size:9pt"> 
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       
       <td align="center"><c:out value="${lista.tipoconsulta}"/></td>
       <td><c:out value="${lista.peso}"/></td>
       <td><c:out value="${lista.talla}"/></td>
       <td><font color="blue"  size="2pt"><c:out value="${lista.edad}"/></font>.a<font color="blue" size="2pt"><c:out value="${lista.mes}"/></font>.m<font color="blue" size="2pt"><c:out value="${lista.dia}"/></font>.d</td>   
       <c:if test="${lista.id_tipo_sexo == '1'}">
        <td align="center">F</td>
     </c:if>  
     <c:if test="${lista.id_tipo_sexo == '2'}">
        <td align="center">M</td>
     </c:if>
       <td align="center"><c:out value="${lista.observa}"/></td> 
       <td align="center"><c:out value="${lista.dglobal}"/></td>   
       <td align="center"><c:out value="${lista.dcronica}"/></td>   
       <td align="center"><c:out value="${lista.numpieza}"/></td> 
       <td align="center"><c:out value="${lista.resultado}"/></td> 
       <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>   
       <td><c:out value="${lista.accion}" escapeXml="False"/></td> 
       <c:if test="${lista.suma15 == '1'}">
       <form name=formaImS<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno4.do"/>'>
       <td>
         <div><a class="btn btn-info" href="javascript:document.formaImS<c:out value="${contador.count}"/>.submit();">DesSimple</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${lista.id_laboratorio}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>      
  	 <input type="hidden" name='accion'          value='imprimirSimple' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
     </c:if>
     <c:if test="${lista.suma15 != '1'}">
     <td align="center">.</td>    
     </c:if>
     <form name=formaIm<c:out value="${contador.count}"/> method=post action='<c:url value="/Aiepi.do"/>'>
       <td>
         <div><a class="btn btn-info" href="javascript:document.formaIm<c:out value="${contador.count}"/>.submit();">Aiepii</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${lista.id_laboratorio}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>      
  	 <input type="hidden" name='accion'          value='imprimir' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>