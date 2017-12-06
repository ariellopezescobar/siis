<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3">ACCION A REALIZAR AL PACIENTE CUADERNO N3</th>
  </tr>
  <tr>
    <td width="50%" valign="top"> 
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th colspan="3" bgcolor="#F2F2F2">DATOS DEL PACIENTE</th>
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
<td><form name=formaC3 method=post action='<c:url value="/Cuaderno3.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaC3.submit();">Retornar</a></div></td>
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
    <th bgcolor="#F2F2F2"> ACCIONES </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaPrev}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>  
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <c:if test="${lista.orientacion ==1}">  
         <tr>      
            <td>Orientacion</td>
            <td><b>SI</td>
         </tr>
       </c:if>   
       <c:if test="${lista.tipoconsulta =='N'}">  
         <tr>      
            <td>Tipo</td>
            <td><b>NUEVA</td>
         </tr>
       </c:if> 
       <c:if test="${lista.tipoconsulta =='C'}">  
         <tr>      
            <td>Tipo</td>
            <td><b>CONTINUA</td>
         </tr>
       </c:if> 
       <c:if test="${lista.diu == 1}">
         <tr>      
            <td>Metodo</td>
            <td><b>DIU</td>
         </tr>
       </c:if> 
       <c:if test="${lista.inyectable == 1}">
         <tr>      
            <td>Metodo</td>
            <td><b>Inyectable</td>
         </tr>  
       </c:if> 
       <c:if test="${lista.condon == 1}">
         <tr>      
            <td>Metodo</td>
            <td><b>Condon</td>
         </tr>  
       </c:if> 
       <c:if test="${lista.pildora == 1}">
         <tr>      
            <td>Metodo</td>
            <td><b>Pildora</td>
         </tr>  
       </c:if> 
       <c:if test="${lista.pildora == 2}">
         <tr>      
            <td>Metodo</td>
            <td><b>Pildora Emergencia</td>
         </tr>  
       </c:if> 
       <c:if test="${lista.aqv == 1}">
         <tr>
            <td>Metodo</td>
            <td><b>AQV</td>      
         </tr>  
       </c:if>
       <c:if test="${lista.otras == 1}">
         <tr>
            <td>Metodo</td>
            <td><b>OTRO</td>      
         </tr>  
       </c:if>
       <c:if test="${lista.otras == 5}">
         <tr>
            <td>Metodo</td>
            <td><b>Condon Femenino</td>      
         </tr>  
       </c:if>
        <c:if test="${lista.otras == 6}">
         <tr>
            <td>Metodo</td>
            <td><b>Implante Subcutaneo</td>      
         </tr>  
       </c:if>
       <c:if test="${lista.mnatural == 1}">
        <tr>
           <td>Metodo</td>
           <td><b> MELA</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.mnatural == 2}">
        <tr>
           <td>Metodo</td>
           <td><b> RITMO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.mnatural == 3}">
        <tr>
           <td>Metodo</td>
           <td><b> DIAS FIJOS</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.insumos > 0}">
         <tr>      
            <td>Nº Insumos</td>
            <td align="center"><b><c:out value="${lista.insumos}"/></td>   
         </tr>  
       </c:if> 
       <c:if test="${lista.pap == 1}">
        <tr>
           <td>PAP</td>
           <td><b> Realizado</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma2 == 1}">
        <tr>
           <td>PAP</td>
           <td><b> NEGATIVO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma2 == 2}">
        <tr>
           <td>PAP</td>
           <td><b> POSITIVO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma3 == 1}">
        <tr>
           <td>IVAA</td>
           <td><b> Realizado</td>      
        </tr>  
       </c:if>
        <c:if test="${lista.suma5 == 1}">
        <tr>
           <td>IVAA</td>
           <td><b> NEGATIVO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma5 == 2}">
        <tr>
           <td>IVAA</td>
           <td><b> POSITIVO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma6 == 1}">
        <tr>
           <td>Examen de MAMA</td>
           <td><b> Realizado</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma7 == 1}">
        <tr>
           <td>Examen mama</td>
           <td><b> NEGATIVO</td>      
        </tr>  
       </c:if>
       <c:if test="${lista.suma7 == 2}">
        <tr>
           <td>Examen mama</td>
           <td><b> POSITIVO</td>      
        </tr>  
       </c:if>
    </table>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno3.do"/>'>
       <td><br><br>     
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno" value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>

    </td>

    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno3.do"/>' >

  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>TRATAMIENTO</center></th>
  </tr>
   <tr style="font-size:9pt">
        <td colspan=2 class="etiqueta">Orientacion  </td>
        <td><input type=checkbox name="orientacion" value="1" ></td>
    </tr> 
    <tr>
        <td  class="etiqueta">Tipo de Consulta  </td>
        <td colspan=2>
          <SELECT NAME="tipo">
              <option value="C" >Continua</option>
  	      <OPTION value="N">Nueva</option>
          </SELECT>
	  <SELECT NAME="fuera">
                  <option value="0">Dentro</option>
                  <option value="1" >Fuera </option>
          </SELECT>
        </td>
 </tr>
<tr style="font-size:9pt">
   <td class="etiqueta" rowspan=2> Metodos Anticonceptivos</td>
   <td class="etiqueta" > DIU</td>
   <td><input type=radio name="accioncurativa" value="1" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Inyectable Trimestral</td>
   <td><input type=radio name="accioncurativa" value="2" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" rowspan=7> Metodos Anticonceptivos Modernos</td>
   <td class="etiqueta" > Condon<input type="text" name="insumos" value="12" size="2" maxlength="2" align="right"></td>
   <td><input type=radio name="accioncurativa" value="3" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" >  Condon Femenino<input type="text" name="insumos2" value="3" size="2" maxlength="2" align="right"></td>
   <td><input type=radio name="accioncurativa" value="11" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Pildora<input type="text" name="insumos3" value="3" size="2" maxlength="2" align="right"></td>
   <td><input type=radio name="accioncurativa" value="4" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Implante Subcutaneo</td>
   <td><input type=radio name="accioncurativa" value="12" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Pildora Emergencia</td>
   <td><input type=radio name="accioncurativa" value="5" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > AQV</td>
   <td><input type=radio name="accioncurativa" value="6" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Otros Metodos</td>
   <td><input type=radio name="accioncurativa" value="7" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" rowspan=3>  Metodos Naturales</td> 
   <td class="etiqueta" > MELA</td>
   <td><input type=radio name="accioncurativa" value="8" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Ritmo</td>
   <td><input type=radio name="accioncurativa" value="9" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Dias Fijos</td>
   <td><input type=radio name="accioncurativa" value="10" ></td>
</tr> 
<tr style="font-size:9pt">
   <td colspan=2 class="etiqueta" >  Toma Muestra PAP No.<input type="text" name="numepap" value="<c:out value="${numpap}"/>" size="1" maxlength="1" align="right"></td>
   <td><input type=checkbox name="pap" value="1" ></td>
</tr>    
<tr style="font-size:9pt">
   <td class="etiqueta" >  Resultado PAP </td>
   <td colspan=2>
          <SELECT NAME="respap">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>	
    </td>
</tr>
<tr style="font-size:9pt">
   <td colspan=2 class="etiqueta" >  Muestra IVAA No.<input type="text" name="numeivaa" value="0" size="1" maxlength="1" align="right"></td>
   <td><input type=checkbox name="ivaa" value="1" ></td>
</tr>    
<tr style="font-size:9pt">
   <td class="etiqueta" >  Resultado IVAA </td>
   <td colspan=2>
          <SELECT NAME="resivaa">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>	
    </td>
</tr>
<tr style="font-size:9pt">
   <td colspan=2 class="etiqueta" >  Exámen clínico de mama (sospechoso de nódulo neoplásico)</td>
   <td><input type=checkbox name="mama" value="1" ></td>
</tr>
<tr style="font-size:9pt">
   <td class="etiqueta" > Resultado estudio mamaográficos </td>
   <td colspan=2>
          <SELECT NAME="resmama">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>	
    </td>
</tr>
</table>

<center>
<input type="submit" name='accion' class="btn btn-success" value='Agregar'>  
<input type="submit" name='accion' class="btn btn-danger" value='Terminar'>  
  
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
<input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
<input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</center>  
</form>

  </td>
  </tr>
   
</table>