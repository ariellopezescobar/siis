<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>ACCION A REALIZAR AL PACIENTE CUADERNO N7</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top"> 
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th colspan="3" bgcolor="#F2F2F2"><center>DATOS DEL PACIENTE</center></th>
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

<table class="tabla"><tr>
<td><form name=formaCF method=post action='<c:url value="/Cuaderno7.do"/>'>
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
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> TRATAMIENTO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaOdon}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
     <td><table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
         <tr><td>Num. Pieza:<font style="font-size:12pt" color="blue"><c:out value = "${lista.numpieza}"/></font></td></tr>
       <c:if test="${lista.tipodent == 'P' }">  
         <tr><td>Pieza Dentaria:<font color="blue"> PERMANENTE</font></td></tr>
       </c:if>
       <c:if test="${lista.tipodent == 'T' }">  
         <tr><td>Pieza Dentaria: <font color="blue">TEMPORARIA</font></td></tr>
       </c:if>
       <c:if test="${lista.tipoconsulta == 'N' }">  
         <tr><td>Pieza Consulta: <font color="blue">NUEVA</font></td></tr>
       </c:if> 
       <c:if test="${lista.tipoconsulta == 'R' }">  
         <tr><td>Pieza Consulta: <font color="blue">REPETIDA</font></td></tr>
       </c:if>   
       <c:if test="${lista.exodoncia == 1 and lista.tipo == 'A'}">
         <tr><td>Exodoncia</td></tr>      
       </c:if>
       <c:if test="${lista.exodoncia == 1 and lista.tipo == 'B'}">
         <tr><td>Alveolitis</td></tr>      
       </c:if> 
       <c:if test="${lista.exodoncia == 1 and lista.tipo == 'C'}">
         <tr><td>Trat. Absceso Periapical Agudo</td></tr>      
       </c:if> 
       <c:if test="${lista.restauracion == 1  and lista.tipo == 'A'}">
         <tr><td>Restauracion : AMALGAMA</td></tr>      
       </c:if>
       <c:if test="${lista.restauracion == 1  and lista.tipo == 'B'}">
         <tr><td>Restauracion : R. FOTOCURABLE</td></tr>      
       </c:if> 
       <c:if test="${lista.restauracion == 1  and lista.tipo == 'C'}">
         <tr><td>Restauracion : R. AUTOCURABLE</td></tr>      
       </c:if> 
       <c:if test="${lista.restauracion == 1  and lista.tipo == 'D'}">
         <tr><td>Restauracion : IONOMETRO</td></tr>      
       </c:if>
       <c:if test="${lista.restauracion == 1  and lista.tipo == 'E'}">
         <tr><td>Restauracion : PRAT-TRA</td></tr>      
       </c:if> 
       <c:if test="${lista.periodoncia == 1 and (lista.tipo == 'A' or lista.tipo == 'D' or lista.tipo == 'E' )}">
         <tr><td>Periodoncia Tractetomia</td></tr>      
       </c:if> 
       <c:if test="${lista.periodoncia == 1 and lista.tipo == 'B'}">
         <tr><td>Periodoncia Gingivectomia</td></tr>      
       </c:if> 
       <c:if test="${lista.periodoncia == 1 and lista.tipo == 'C'}">
         <tr><td>Cirugia Maxilo Facial</td></tr>      
       </c:if> 
       <c:if test="${lista.cirugia == 1}">
         <tr><td>Cirugia</td></tr>      
       </c:if> 
       <c:if test="${lista.endodoncia == 1  and lista.tipo == 'A'}">
         <tr><td>Endodoncia Pulpotomia</td></tr>      
       </c:if>
       <c:if test="${lista.endodoncia == 1  and (lista.tipo == 'B' or lista.tipo == 'C' or lista.tipo == 'D' )}">
         <tr><td>Endodoncia Trat. Conducto</td></tr>      
       </c:if>
       <c:if test="${lista.rayosx == 1 }">
         <tr><td>Rayos X</td></tr>      
       </c:if>
       <c:if test="${lista.preventiva == 1}">
         <tr><td>Preventiva</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'A'}">
         <tr><td>Otras : PULIDO</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'B'}">
         <tr><td>Otras : DESGASTE SELECTIVO</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'C'}">
         <tr><td>Otras : ANALGECIA</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'D'}">
         <tr><td>Otras : RETIRO PUNTOS</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'E'}">
         <tr><td>Otras : OBTURACION TEMPORAL</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'F'}">
         <tr><td>Otras : PREPARACION CAVIDAD</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'G'}">
         <tr><td>Otras : CONSULTA ODONTOLIGICA</td></tr>      
       </c:if>
       <c:if test="${lista.otras == 1 and lista.tipo == 'H'}">
         <tr><td>Otras ACCIONES</td></tr>      
       </c:if>
       <c:if test="${lista.auto==1}">
         <tr><td>Embarazada</td></tr>      
       </c:if>  
       <c:if test="${lista.auto==2}">
         <tr><td>Puerpera</td></tr>      
       </c:if>  
       </table></td>   
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno7.do"/>'>
       <td><br><br>   
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno" value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
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

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno7.do"/>' >

  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="5"><center>TRATAMIENTO</center></th>
  </tr>
   <tr style="font-size:9pt">
        <td colspan=3 align="right">Pieza Dentaria </td>
        <td >
          <SELECT NAME="pieza">
              <option value="P">Permanente</option>
  	      <OPTION value="T" >Temporaria </option>
          </SELECT>
          Pieza No.
	 <SELECT NAME="numpieza">
            <c:forEach var="piezas" items="${npieza}">
  	      <OPTION value="<c:out value="${piezas}"/>"> 
	        <c:out value="${piezas}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
         <td>
         </td>
   </tr> 
   <tr style="font-size:9pt">
        <td colspan=4  align="right">Primera Consulta  </td>
        <td><input type=checkbox name="primera" value="1" ></td>
    </tr> 
    <tr style="font-size:9pt">
        <td colspan=3  align="right">Tipo de Consulta  </td>
        <td colspan=2>
          <SELECT NAME="tipo">
              <option value="N">Nueva</option>
  	      <OPTION value="R" >Repetida </option>
          </SELECT>
          <c:if test="${datos.edad>14 and datos.id_tipo_sexo==1}">
                 <font size="1pt"><b>Estado Gest.</b></font>
                 <c:if test="${embara=='embara'}">
                  <SELECT NAME="emba">
                      <OPTION value="1">Embarazada</OPTION>
                      <OPTION value="2">Puerperio</OPTION>
                      <OPTION value="0" >-Ninguno--</OPTION>
                  </SELECT> 
                 </c:if>
                 <c:if test="${embara=='puerpera'}">
                  <SELECT NAME="emba">
                      <OPTION value="2">Puerperio</OPTION>
                      <OPTION value="1">Embarazada</OPTION>
                      <OPTION value="0" >-Ninguno--</OPTION>
                  </SELECT> 
                 </c:if>
                 <c:if test="${embara!='embara' and embara!='puerpera'}">
                  <SELECT NAME="emba">
                      <OPTION value="0" >-Ninguno--</OPTION>
                      <OPTION value="1">Embarazada</OPTION>
                      <OPTION value="2">Puerperio</OPTION>
                  </SELECT> 
                 </c:if>
           </c:if> 
        </td>
 </tr>     
<tr style="font-size:9pt">
   <td  width=10 rowspan=3> 1 </td>
   <td  width=20 rowspan=13> Acciones Curativas</td>
   <td  rowspan=3 align="right"> Cirugia Bucal Menor</td>
   <td > Exodoncia</td>
   <td><input type=radio name="accioncurativa" value="1"  ></td>
</tr>
  <tr style="font-size:9pt">
    <td >Tratamiento Alveolitis</td>
    <td><input type=radio name="accioncurativa" value="2" ></td>
  </tr>
  <tr style="font-size:9pt">
    <td >Trat.Absceso periapical agudo</td>
    <td><input type=radio name="accioncurativa" value="3" ></td>
  </tr>
<tr style="font-size:9pt">
   <td  rowspan=5> 2 </td>   
   <td  rowspan=5 align="right"> Restauraciones</td>
   <td > Amalgama</td>
   <td><input type=radio name="accioncurativa" value="4" ></td>
</tr>
<tr style="font-size:9pt">
   <td > Resina Fotocurable</td>
   <td><input type=radio name="accioncurativa" value="5" ></td>
</tr>
<tr style="font-size:9pt">
   <td > Resina Autocurable</td>
   <td><input type=radio name="accioncurativa" value="6" ></td>
</tr>
<tr style="font-size:9pt">
   <td > Ionomero</td>
   <td><input type=radio name="accioncurativa" value="7" ></td>
</tr>
<tr style="font-size:9pt">
   <td > PRAT - TRA</td>
   <td><input type=radio name="accioncurativa" value="8" ></td>
</tr>
<tr style="font-size:9pt">
   <td  rowspan=5> 3 </td>
   <td  rowspan=5 align="right"> Especialidades</td>
   <td > Periodoncia Tartrectomia
          <c:if test="${cod_esta != '400009'}">
             <SELECT NAME="periot">
                 <option value="A">1ºS</option>
                 <option value="D">2ºS </option>
                 <option value="E">3ºS </option>
             </SELECT>
           </c:if>
         
       </td>
   <td><input type=radio name="accioncurativa" value="9" ></td>
</tr>
<tr style="font-size:9pt">
   <td > Periodoncia Gingivectomia simple
         <c:if test="${cod_esta != '400009'}">
             <SELECT NAME="periog">
                 <option value="B">CPQ</option>
                 <option value="F">RCQ </option>
              </SELECT>
           </c:if>
         </td>
   <td><input type=radio name="accioncurativa" value="10" /></td>
</tr>
<tr style="font-size:9pt">
   <td > Cir. Maxilo-Facial</td>
   <td><input type=radio name="accioncurativa" value="11" /></td>
</tr>
<tr style="font-size:9pt">
   <td > Endodoncia Pulpotomia</td>
   <td><input type=radio name="accioncurativa" value="12" ></td>
</tr>
<tr style="font-size:9pt">
   <td > Endodoncia Trat. conducto
           <c:if test="${cod_esta != '400009'}">
             <SELECT NAME="tratcon">
                 <option value="B">TC</option>
                 <option value="C">LC</option>
                 <option value="D">AC</option>
               </SELECT> 
           </c:if>
          </td>
   <td><input type=radio name="accioncurativa" value="13" ></td>
</tr>
<tr style="font-size:9pt">
   <td > 4 </td>
   <td  colspan=2 align="right"> Rayos X</td>
   <td >
          <SELECT NAME="tiporayo">
             <OPTION value="D" selected>Dentro</option>
             <OPTION value="F">Fuera</option>
          </SELECT>	      
    </td>
   <td><input type=radio name="accioncurativa" value="14" ></td>
</tr>
<tr style="font-size:9pt">
   <td  rowspan=4> 5 </td>
   <td  rowspan=4 align="right"> Acciones Preventivas</td>
   <td align="right"> Fluorinización</td>
   <td><select name="tiposervi">
     <option value="D" selected>Dentro Servicio </option>
     <option value="F">Fuera Servicio</option>
   </select></td>
   <td><input type=radio name="accioncurativa" value="15" ></td>
</tr>
<tr style="font-size:9pt">
   <td colspan=2 align="right"> Profilaxis</td>
   <td><input type=radio name="accioncurativa" value="16" ></td>
</tr>
<tr style="font-size:9pt">
   <td align="right">Aplicacon Sellantes</td>
   <td><select name="tiposervi">
     <option value="D" selected>Dentro Servicio </option>
     <option value="F">Fuera Servicio</option>
   </select></td>
   <td><input type=radio name="accioncurativa" value="17" ></td>
</tr>
<tr style="font-size:9pt">
   <td align="right"> Aplicacion Cariostaticos</td>
   <td><select name="tiposervi">
     <option value="D" selected>Dentro Servicio </option>
     <option value="F">Fuera Servicio</option>
   </select></td>
   <td><input type=radio name="accioncurativa" value="18" ></td>
</tr>
<tr style="font-size:9pt">
   <td > 6</td>
   <td  colspan=2 align="right"> Educacion en Salud Oral</td>
   <td><select name="tiposervi">
     <option value="D" selected>Dentro Servicio </option>
     <option value="F">Fuera Servicio</option>
   </select></td>
   <td><input type=radio name="accioncurativa" value="19" ></td>
</tr>
<tr style="font-size:9pt">
   <td  rowspan=4> 7 </td>
   <td colspan=2 align="right"> Otras Acciones</td>
   <td colspan=1>
          <SELECT NAME="otras">
             <OPTION value="0" selected>---Seleccione--- </option>
             <OPTION value="A">A.Pulido </option>
             <OPTION value="B">B.Desgaste selectivo</option>
             <OPTION value="C">C.Analgesia</option>
             <OPTION value="D">D.Retiro de Puntos</option>
             <OPTION value="E">E.Obturacion Temporal</option>
             <OPTION value="F">F.Preparacion cavidad aislado</option>
             <OPTION value="G">G.Consulta Odontologica</option>
             <OPTION value="H">H.Otras Acciones</option>
          </SELECT>	      
    </td>
    <td><input type=radio name="accioncurativa" value="20" ></td>
 </tr>
 <tr style="font-size:9pt">
   <td  colspan=2 align="right"> Referencias</td>
   <td colspan=2><input type="text" name="ref" value="" maxlength=50 size="40"></td>
 </tr>
 <tr style="font-size:9pt">
  <td  colspan=2 align="right"> Contrareferencias</td>
   <td colspan=2><input type="text" name="cref" value="" maxlength=50 size="40"></td>
 </tr>
 <tr style="font-size:9pt">
  <td  colspan=2 align="right"> Tratamiento</td>
   <td colspan=2><input type="text" name="tratamiento" value="" maxlength=200 size="40"></td>
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
<input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
  
</form>

  </td>
  </tr>
</table>
 
<c:if test="${tipo_medico == '2' }">
       
 <div style="font-size:15pt"> HISTORIA CLINICA ODONTOLOGICA</div>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PIEZA </th>
    <th bgcolor="#F2F2F2"> CIE10 </th> 
    <th bgcolor="#F2F2F2"> EDAD </th> 
    <th bgcolor="#F2F2F2"> Tipo<br> Pieza </th> 
    <th bgcolor="#F2F2F2"> EXODONCIA </th> 
    <th bgcolor="#F2F2F2"> RESTAURACION </th>
    <th bgcolor="#F2F2F2"> CIRUGIA </th>
    <th bgcolor="#F2F2F2"> PERIODONCIA </th>    
    <th bgcolor="#F2F2F2"> ENDODONCIA </th> 
    <th bgcolor="#F2F2F2"> TRATAMIENTO </th>
    </tr>  
   <c:forEach var="lista" items="${listaAten}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy'/></td>
        <td><c:out value="${lista.numpieza}"/></td>   
       <td><c:out value="${lista.dglobal}"/></td>   
       <td><c:out value="${lista.edad}"/></td>  
       <td><c:out value="${lista.tipodent}"/></td> 
       <td><c:out value="${lista.exodoncia}"/></td> 
       <td><c:out value="${lista.restauracion}"/></td> 
       <td><c:out value="${lista.cirugia}"/></td> 
       <td><c:out value="${lista.periodoncia}"/></td> 
       <td><c:out value="${lista.endodoncia}"/></td> 
       <td><c:out value="${lista.resultado}"/></td> 
     </tr>  
   </c:forEach>
 </table>
</c:if>