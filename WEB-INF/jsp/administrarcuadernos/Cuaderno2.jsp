<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt"> 
    <th colspan="3" bgcolor="#F2F2F2">ACCION A REALIZAR AL PACIENTE CUADERNO PRENATAL-PARTO-PUERPERIO</th>
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
<td><form name=formaC2 method=post action='<c:url value="/Cuaderno2.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaC2.submit();">Retornar</a></div></td>
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
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaControlPre}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
     <td><table class="tabla">
       <c:if test="${lista.suma1 == 1}">
         <tr><td>Nueva antes del 5to mes</td></tr>
         <tr><td><font size="4pt" color="blue"><c:out value="${lista.tabletas}"/></font> Tab. Sulfato Ferroso Enbarazada</td></tr>
       </c:if> 
       <c:if test="${lista.suma2 == 1}">
         <tr><td>Nueva a partir del 5to mes</td></tr>
         <tr><td><font size="4pt" color="blue"><c:out value="${lista.tabletas}"/></font> Tab. Sulfato Ferroso Enbarazada</td></tr>
       </c:if> 
       <c:if test="${lista.suma3 == 1}">
         <tr><td>Repetidas</td></tr>      
       </c:if> 
       <c:if test="${lista.suma4 == 1}">
         <tr><td>4ta consulta prenatal</td></tr>      
       </c:if> 
       <c:if test="${lista.parto == 1}">
         <tr><td>Parto Vaginal<br>Vitamina A</td></tr>        
       </c:if>
       <c:if test="${lista.parto == 2}">
         <tr><td>Parto por Cesarea<br> Vitamina A</td></tr>         
       </c:if>
       <c:if test="${lista.parto == 3}">
         <tr><td>Proveedor <br>calificado</td></tr>        
       </c:if>
       <c:if test="${lista.parto == 4}">
         <tr><td>Personal salud <br>calificado</td></tr>         
       </c:if>
       <c:if test="${lista.parto == 5}">
         <tr><td>Parto por<br>Partera capacitada</td></tr>         
       </c:if>
       <c:if test="${lista.parto == 6}">
         <tr><td>Parto por<br>Partera empirica</td></tr>         
       </c:if>
       <c:if test="${lista.parto == 7}">
         <tr><td>Parto por<br>Otros</td></tr>         
       </c:if>
       <c:if test="${lista.controlpos == 1}">
         <tr><td>1er Control   posparto</td></tr>
       </c:if>
       <c:if test="${lista.controlpos == 2}">
         <tr><td>2do Control    o mas posparto</td></tr>
       </c:if>
       <c:if test="${lista.sexo == 1}">
         <tr><td>Sexo : Masculino</td></tr>         
       </c:if>
       <c:if test="${lista.sexo == 2}">
         <tr><td>Sexo : Femenino</td></tr>         
       </c:if>
       <c:if test="${lista.suma10>0}">
         <tr><td>Gramos : <c:out value="${lista.suma10}"/></td></tr>         
       </c:if>
       <c:if test="${lista.pap == 1}">
         <tr><td>Toma PAP</td></tr>
       </c:if>
       <c:if test="${lista.suma12 == 1}">
         <tr><td>IVAA</td></tr>
       </c:if>
       <c:if test="${lista.anestesia == 1}">
         <tr><td>Anestecia General</td></tr>
       </c:if>
       <c:if test="${lista.anestesia == 2}">
         <tr><td>Anestecia Regional</td></tr>
       </c:if>
       <c:if test="${lista.aborto == 1}">
         <tr><td>Aborto</td></tr>
       </c:if>
       <c:if test="${lista.aborto == 2}">
         <tr><td>Hemorragia en el parto o post - parto</td></tr>
       </c:if>
       <c:if test="${lista.aborto == 3}">
         <tr><td>Gestantes y puerperas con sepsis</td></tr>
       </c:if>
       <c:if test="${lista.sfpuerpera > 0}">
         <tr><td><font size="4pt" color="blue"><c:out value="${lista.tabletas}"/></font> Tab. Sulfato Ferroso Puerpera</td></tr>
       </c:if>
       <c:if test="${lista.suma30>0}">
         <tr><td>Referido a :<font color="blue"><c:out value="${lista.suma30}"/></font></td></tr>
       </c:if>
       <c:if test="${lista.suma31>0}">
         <tr><td>Contrareferido a :<font color="blue"><c:out value="${lista.suma31}"/></font></td></tr>
       </c:if>
     </table></td> 
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno2.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno" value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
   </c:forEach>
</table>
    </td>
    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno2.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <input type="submit" name='accion' class="btn btn-warning btn-sm" value='Prenatal'>
  <input type="submit" name='accion' class="btn btn-info btn-sm" value='Parto Dentro'> 
  <input type="submit" name='accion' class="btn btn-info btn-sm" value='Parto Fuera'> 
  <input type="submit" name='accion' class="btn btn-success btn-sm" value='Puerperio'> 
  <input type="submit" name='accion' class="btn btn-success btn-sm" value='Parto Multiple'> 
  <input type="submit" name='accion' class="btn btn-info btn-sm" value='Perinatal'> 
  <tr>
    <th colspan="4"><center>TRATAMIENTO PACIENTE</center></th>
  </tr>
 <c:if test="${(accioncua == 'Prenatal')}">   
  <tr style="font-size:9pt">
   <td align="right"> No Embarazo<br>Actual</td>
   <td><SELECT NAME="nembarazo">
             <c:forEach var="numemba" items="${numemba}">
    	       <OPTION value="<c:out value="${numemba}"/>" <c:if test="${numemba == nemba}">selected</c:if>> 
	         <c:out value="${numemba}"/>
	     </c:forEach>
	   </SELECT></td>
   <td align="right">Tipo:
              <SELECT NAME="fuera">
                  <option value="0">Dentro</option>
                  <option value="1" >Fuera </option>
              </SELECT>	
              Semanas Gestacion
            </td>
   <td><SELECT NAME="semanas">
             <c:forEach var="nsemanas" items="${nsemanas}">
    	       <OPTION value="<c:out value="${nsemanas}"/>" <c:if test="${nsemanas == semges}">selected</c:if>> 
	         <c:out value="${nsemanas}"/>
	     </c:forEach>
             </SELECT></td>
  </tr>
   <tr style="font-size:9pt">
        <td align="right" colspan="2" align="right">F.U.M. (dd-mm-aaaa)</td>  
        <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia_fum}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes_fum}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio_fum}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	
   </tr>        	       

 <tr style="font-size:9pt"> 
   <td align="right" rowspan=3> Control Prenatal</td>
   <td align="right" rowspan=2> Nuevos</td>
   <td align="right"> Antes del 5to Mes</td>
   <c:if test="${(numpieza == '0')}">
       <td><input type=radio name="accioncurativa" value="1" checked></td>
   </c:if>
   <c:if test="${(numpieza > '0')}">
       <td><input type=radio name="accioncurativa" value="1" ></td>
   </c:if>
 </tr>
 <tr style="font-size:9pt">
   <td align="right"> A partir del 5to Mes</td>
   <td><input type=radio name="accioncurativa" value="2" ></td>
</tr>
<tr style="font-size:9pt">
   <td align="right"> Repetidos</td>
   <td align="right" align="right"> No de Control
          <SELECT NAME="numero" STYLE="color:red">
             <c:forEach var="ncontrol" items="${ncontrol}">
    	       <OPTION value="<c:out value="${ncontrol}"/>" <c:if test="${ncontrol == numpieza}">selected</c:if>> 
	         <c:out value="${ncontrol}"/>
	     </c:forEach>
             </SELECT></td>
           <c:if test="${(numpieza == '0')}">
               <td><input type=radio name="accioncurativa" value="3" ></td>
           </c:if>
           <c:if test="${(numpieza > '0')}">
               <td><input type=radio name="accioncurativa" value="3" checked></td>
           </c:if>          
 </tr>
<tr style="font-size:9pt">
    <td colspan=3 align="right">PAP <font color='red'>(*)</font> </td>
    <td><input type=checkbox name="pap" value="1" ></td>
 </tr> 
<tr style="font-size:9pt">
   <td align="right" colspan=2 >Preeclampsia severa Eclampsia</td>
   <td align="right"><SELECT NAME="eclam">
              <option value="0" >--Selecione--</option>
              <option value="1" >Preeclampsia severa</option>
  	      <OPTION value="2">Eclampsia</option>
          </SELECT></td>
</tr>

<tr style="font-size:9pt">
   <td align="right" rowspan=1 colspan=2> Hemorragias primera mitad del <BR>embarazo (< 22 sem) - Sepsis </td>
   <td><SELECT NAME="aborto">
              <option value="0" >--Selecione--</option>
              <option value="1" >Hemorragia termino en aborto</option>
  	      <option value="2">Hemorragia en el parto o post - parto</option>
              <option value="3">Gestantes y puerperas con sepsis</option>
          </SELECT></td>   
</tr>
<tr style="font-size:9pt">
   <td align="right" colspan=3 >ALIMENTO COMPLEMENTARIO <BR>(Mujeres embarazadas desnutridas)</td>
   <td><input type=checkbox name="alimcomp" value="1" ></td>
</tr>
<tr style="font-size:9pt">
   <td colspan=2 align="right" >  Toma Muestra PAP No.</td>
   <td align="right">
          <SELECT NAME="respap">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>
     <input type="text" name="numepap" value="<c:out value="${numpap}"/>" size="1" maxlength="1" align="right">
    </td>
   <td><input type=checkbox name="pap" value="1" ></td>
</tr>  
<tr style="font-size:9pt">
   <td colspan=2 align="right" >  Muestra IVAA No.</td>
   <td align="right">
          <SELECT NAME="resivaa">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>
	<input type="text" name="numeivaa" value="0" size="1" maxlength="1" align="right">
    </td>
   <td><input type=checkbox name="ivaa" value="1" ></td>
</tr>   
<tr style="font-size:9pt">
   <td align="right" colspan=3 >Exámen clínico de mama <BR>(sospechoso de nódulo neoplásico)</td>
   <td><input type=checkbox name="mama" value="1" ></td>
</tr>

 <tr style="font-size:9pt">
    <td  align="right" rowspan=1> SULFATO <BR>FERROSO</td>
    <td align="right" colspan= >Embarazadas que <BR>Recibieron 90 tabletas </td>
    <td align="right"><input type="text" name="tabletas" value="90" maxlength=3 size=3></td>
    <td><input type=radio name="sfembarazada" value="1" ></td>
  </tr>
</c:if>

<c:if test="${(accioncua == 'Parto')}">
  <tr style="font-size:9pt">
   <td align="right"> No de Embarazo</td>
   <td><SELECT NAME="nembarazo">
             <c:forEach var="numemba" items="${numemba}">
    	       <OPTION value="<c:out value="${numemba}"/>" <c:if test="${numemba == nemba}">selected</c:if>> 
	         <c:out value="${numemba}"/>
	     </c:forEach>
	   </SELECT></td>
   <td align="right"> Semanas de Gestacion</td>
   <td><SELECT NAME="semanas">
             <c:forEach var="nsemanas" items="${nsemanas}">
    	       <OPTION value="<c:out value="${nsemanas}"/>" <c:if test="${nsemanas == semges}">selected</c:if>> 
	         <c:out value="${nsemanas}"/>
	     </c:forEach>
             </SELECT></td>
  </tr>
    <tr style="font-size:9pt">
        <td align="right" colspan="2" align="right">F.U.M. (dd-mm-aaaa)</td>  
        <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia_fum}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes_fum}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio_fum}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	
   </tr>        	
<tr style="font-size:9pt">
   <td align="right" colspan=3 >Hemorragia en el parto o post parto</td>
   <td><input type=checkbox name="hemo" value="1" ></td>   
</tr>
<tr style="font-size:9pt">
   <td align="right" rowspan=12> PARTO <BR>EN SERVICIO</td>
   <td align="right" rowspan=2> Tipo de Parto</td>
   <td align="right"> Vaginal</td>
   <td><input type=radio name="accioncurativa" value="5" checked></td>
</tr>
<tr style="font-size:9pt">
   <td align="right"> Cesarea</td>
   <td><input type=radio name="accioncurativa" value="6" ></td>
</tr>
<tr style="font-size:9pt">
   <td align="right" rowspan=2> Tipo de Anestesia</td>
   <td align="right"> General</td>
    <td><input type=radio name="general" value="1" ></td>   
</tr>
<tr style="font-size:9pt">
   <td align="right"> Local o Regional</td>
   <td><input type=radio name="general" value="2" ></td>   
</tr>
<tr style="font-size:9pt">
        <td  align="right">Sexo <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="sexo">
              <option value="1">Masculino</option>
  	      <OPTION value="2" >Femenino </option>
          </SELECT>	
        </td>
  </tr>      
  <tr style="font-size:9pt">
        <td  align="right">Peso <font color='red'>(*)</font> </td> 
        <td align="left" colspan="2"><input type="text" name="peso" value="3000" maxlength=4 size=4>gr.</td>	        
  </tr> 
  <tr style="font-size:9pt">
        <td  align="right">Estado <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="estado">
  	      <OPTION value="V" >Nacido Vivo </option>
              <option value="M">Nacido Muerto</option>
          </SELECT>	
        </td>
 </tr> 
 <tr style="font-size:9pt">
   <td align="right"  >Lactanca Materna Inmediata</td>
   <td colspan=2><input type=checkbox name="lmi" value="1" ></td>
 </tr>
  <tr style="font-size:9pt">
   <td align="right"  >RN con apego precoz</td>
   <td colspan=2><input type=checkbox name="raa" value="1" ></td>
 </tr>
  <tr style="font-size:9pt">
   <td align="right"  >Atención de beneficio al BJA</td>
   <td colspan=2><input type=checkbox name="bono" value="1" ></td>
 </tr>
<tr style="font-size:9pt">   
   <td align="right" rowspan=2> CONTROL <BR>POST-PARTO</td>
   <td align="right" > RN con visita de control en 48 hrs siguientes al nacimiento</td>
   <td ><input type=checkbox name="rn48" value="1" ></td>  
</tr>
<tr style="font-size:9pt">
   <td align="right"> Mujeres con visita de control en las 48 hrs siguientes al parto</td>
   <td ><input type=checkbox name="mujer48" value="1" ></td>
</tr>

</c:if>

<c:if test="${(accioncua == 'Multiple')}">
  <tr>
    <th colspan="4">PARTO MULTIPLE</th>
  </tr>  
   <tr style="font-size:9pt">
   <td align="right"> No de Embarazo</td>
   <td><SELECT NAME="nembarazo">
             <c:forEach var="numemba" items="${numemba}">
    	       <OPTION value="<c:out value="${numemba}"/>" <c:if test="${numemba == nemba}">selected</c:if>> 
	         <c:out value="${numemba}"/>
	     </c:forEach>
	   </SELECT></td>
   <td align="right"> Semanas de Gestacion</td>
   <td><SELECT NAME="semanas">
             <c:forEach var="nsemanas" items="${nsemanas}">
    	       <OPTION value="<c:out value="${nsemanas}"/>" <c:if test="${nsemanas == semges}">selected</c:if>> 
	         <c:out value="${nsemanas}"/>
	     </c:forEach>
             </SELECT></td>
  </tr>
    <tr style="font-size:9pt">
        <td align="right" colspan="2" align="right">F.U.M. (dd-mm-aaaa)</td>  
        <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia_fum}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes_fum}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio_fum}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	
   </tr>        	
 <tr style="font-size:9pt">
   <td align="right" colspan=3 >Hemorragia en el parto o post parto</td>
   <td><input type=checkbox name="hemo" value="1" ></td>   
</tr>
 <tr style="font-size:9pt">
   <td align="right" rowspan=7> PARTO <BR>EN SERVICIO</td>
   <td align="right" rowspan=2> Tipo de Parto</td>
   <td align="right"> Vaginal</td>
   <td><input type=radio name="accioncurativa" value="5" checked></td>
</tr>
 <tr style="font-size:9pt">
   <td align="right"> Cesarea</td>
   <td><input type=radio name="accioncurativa" value="6" ></td>
</tr>
 <tr style="font-size:9pt">
   <td align="right" rowspan=2> Tipo de Anestesia</td>
   <td align="right"> General</td>
    <td><input type=radio name="general" value="1" ></td>   
</tr>
 <tr style="font-size:9pt">
   <td align="right"> Local o Regional</td>
   <td><input type=radio name="general" value="2" ></td>   
</tr>
 <tr style="font-size:9pt">
        <td  align="right">Sexo <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="sexo">
              <option value="1">Masculino</option>
  	      <OPTION value="2" >Femenino </option>
          </SELECT>	
        </td>
  </tr>      
  <tr style="font-size:9pt">
        <td  align="right">Peso <font color='red'>(*)</font> </td> 
        <td align="left" colspan="2"><input type="text" name="peso" value="3000" maxlength=4 size=4>gr.</td>	
        
 </tr> 
  <tr style="font-size:9pt">
        <td  align="right">Estado <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="estado">
  	      <OPTION value="V" >Nacido Vivo </option>
              <option value="M">Nacido Muerto</option>
          </SELECT>	
        </td>
 </tr> 
 <tr style="font-size:9pt">   
   <td align="right" rowspan=1> CONTROL <BR>POST-PARTO</td>
   <td align="right" colspan=2> 1er. Control</td>
   <td><input type=radio name="controlpos" value="1" checked></td>   
</tr>
</c:if>

<c:if test="${(accioncua == 'Parto2')}">
   <tr style="font-size:9pt">
   <td align="right"> No de Embarazo</td>
   <td><SELECT NAME="nembarazo">
             <c:forEach var="numemba" items="${numemba}">
    	       <OPTION value="<c:out value="${numemba}"/>" <c:if test="${numemba == nemba}">selected</c:if>> 
	         <c:out value="${numemba}"/>
	     </c:forEach>
	   </SELECT></td>
   <td align="right"> Semanas de Gestacion</td>
   <td><SELECT NAME="semanas">
             <c:forEach var="nsemanas" items="${nsemanas}">
    	       <OPTION value="<c:out value="${nsemanas}"/>" <c:if test="${nsemanas == semges}">selected</c:if>> 
	         <c:out value="${nsemanas}"/>
	     </c:forEach>
             </SELECT></td>
  </tr>
    <tr style="font-size:9pt">
        <td align="right" colspan="2" align="right">F.U.M. (dd-mm-aaaa)</td>  
        <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia_fum}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes_fum}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio_fum}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	
   </tr>        	
 <tr style="font-size:9pt">
   <td align="right" colspan=3 >Hemorragia en el parto o post parto</td>
   <td><input type=checkbox name="hemo" value="1" ></td>   
</tr>
 <tr style="font-size:9pt">
   <td align="right" rowspan=5> PARTO EN<BR> DOMICILIO</td>
   <td align="right">Atenciol del Parto</td>
   <td colspan=2>
          <SELECT NAME="tparto">
              <option value="3">Proveedor calificado</option>
              <option value="4">Personal de Salud</option>
              <option value="5">Partera Capacitada</option>
  	      <OPTION value="6" >Partera Empírica </option>
              <option value="7">Por Otros</option>
          </SELECT>	
        </td>
</tr>
 <tr style="font-size:9pt">
        <td  align="right">Sexo <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="sexo">
              <option value="1">Masculino</option>
  	      <OPTION value="2" >Femenino </option>
          </SELECT>	
        </td>
  </tr>      
  <tr style="font-size:9pt">
        <td  align="right">Peso <font color='red'>(*)</font> </td> 
        <td align="left" colspan="2"><input type="text" name="peso" value="3000" maxlength=4 size=4>gr.</td>	        
  </tr>      
  <tr style="font-size:9pt">
        <td  align="right">Estado <font color='red'>(*)</font> </td>
        <td colspan=2>
          <SELECT NAME="estado">
  	      <OPTION value="V" >Nacido Vivo </option>
              <option value="M">Nacido Muerto</option>
          </SELECT>	
        </td>
 </tr>
 <tr style="font-size:9pt">   
   <td align="right" rowspan=1> CONTROL <BR>POST-PARTO</td>
   <td align="right" colspan=1> 1er. Control</td>
   <td><input type=radio name="controlpos" value="1" checked></td>   
</tr>
</c:if>
<c:if test="${(accioncua == 'Puerperio')}">
   <tr style="font-size:9pt">
    <td align="right" rowspan=2> CONTROL <BR>POST-PARTO</td>
    <td align="right" colspan=2 > 1er. Control</td>
    <td><input type=radio name="controlpos" value="1" ></td>   
  </tr>
   <tr style="font-size:9pt">
      <td align="right" colspan=2 > 2do. o mas</td>
    <td><input type=radio name="controlpos" value="2" checked></td> 
  </tr>
   <tr style="font-size:9pt">
    <td align="right" rowspan=1> SULFATO <BR>FERROSO</td>
    <td align="right" colspan= >Puerperas que <BR>Recibieron 90 tabletas </td>
    <td align="right"><input type="text" name="tabletas" value="90" maxlength=3 size=3></td>
    <td><input type=radio name="sfembarazada" value="2" ></td>
  </tr>
   <tr style="font-size:9pt">
    <td align="right" colspan=3 >Vitamina "A" (Puerperas)</td>
    <td><input type=checkbox name="vitamina" value="1" ></td>
  </tr>
   <tr style="font-size:9pt">
   <td colspan=2 align="right" >  Toma Muestra PAP No.</td>
   <td align="right">
          <SELECT NAME="respap">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>
     <input type="text" name="numepap" value="<c:out value="${numpap}"/>" size="1" maxlength="1" align="right">
    </td>
   <td><input type=checkbox name="pap" value="1" ></td>
</tr>  
 <tr style="font-size:9pt">
   <td colspan=2 align="right" >  Muestra IVAA No.</td>
   <td align="right">
          <SELECT NAME="resivaa">
              <option value="0" >--Selecione--</option>
              <option value="1" >Negativo</option>
  	      <OPTION value="2">Positivo</option>
          </SELECT>
	<input type="text" name="numeivaa" value="0" size="1" maxlength="1" align="right">
    </td>
   <td><input type=checkbox name="ivaa" value="1" ></td>
</tr>   
 <tr style="font-size:9pt">
   <td align="right" colspan=3 >Exámen clínico de mama <BR>(sospechoso de nódulo neoplásico)</td>
   <td><input type=checkbox name="mama" value="1" ></td>
</tr>

   <tr style="font-size:9pt">
    <td align="right" rowspan=2 colspan=2>Complicaciones como<BR> causa básica de muerte</td>
    <td align="right" > Materna</td>
    <td><input type=checkbox name="muertemat" value="1" ></td>
  </tr>
   <tr style="font-size:9pt">
   <td align="right" > Recien Nacido (Menor de 7 dias)</td>
   <td><input type=checkbox name="muertern" value="1" ></td>
</tr>
</c:if>
 <tr style="font-size:9pt">
   <td align="right" > Mortalidad </td>
   <td align="right" > Todas las cusas > 5 años</td>
   <td colspan=2><input type=checkbox name="violencia" value="1" ></td>
</tr>
   <tr style="font-size:9pt">
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
 
 <tr style="font-size:9pt">
   <td align="right" > Referido<br>a:</td>
   <td align="right"> Establecimiento ::<br>Observación ::</td>
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
    <tr style="font-size:9pt">
    <td align="right" > Retornado<br>a:</td>
    <td align="right"> Establecimiento ::<br>Observación ::</td>
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
 <input type="submit" name='accion' class="btn btn-success" value='Agregar'>  
 <input type="submit" name='accion' class="btn btn-danger" value='Terminar'>  
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
 <input type="hidden" name='accioncua'       value='<c:out value="${accioncua}"/>'>  
 </center>
 </form>
  </td>
  </tr>
</table>

     <div class="titulo" align="center"> RESUMEN HISTORIA CLINICA PERINATAL</div> 
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr style="font-size:9pt">
         <th align="center" style="font-size:15" colspan="13">CONSULTAS PRENATALES</th>
      </tr>
       <tr style="font-size:9pt">
         <th bgcolor="#F2F2F2"> FECHA </th>
         <th bgcolor="#F2F2F2"> PESO </th>
         <th bgcolor="#F2F2F2"> TALLA </th>
         <th bgcolor="#F2F2F2"> F.U.M. </th>
         <th bgcolor="#F2F2F2"> Semanas<br>Gestacion</th> 
         <th bgcolor="#F2F2F2"> No.<br>Embarazo</th> 
         <th bgcolor="#F2F2F2"> PA </th>    
         <th  bgcolor="#F2F2F2" width="600"> Signos de alarma, examenes, tratamientos</th>
         <th bgcolor="#F2F2F2"> Controles <br>Pretatales</th>
         <th bgcolor="#F2F2F2"> Nro Control <br>Pretatal</th>
         <th bgcolor="#F2F2F2"> Sulf.Ferrozo <br>Embarazada</th>
         <th bgcolor="#F2F2F2"> Tipo <br>Parto</th>
         <th bgcolor="#F2F2F2"> Controles <br>Postparto</th>
         <th bgcolor="#F2F2F2"> Sulf.Ferrozo <br>Puerpera</th>
      </tr>
         <c:forEach var="listac2" items="${listac2}" varStatus="contador">
         <tr style="font-size:9pt"> 
           <td><fmt:formatDate value="${listac2.fechap}" pattern='dd/MM/yyyy'/></td>  
           <td><c:out value="${listac2.peso}"/></td>
           <td><c:out value="${listac2.talla}"/></td>
           <td><fmt:formatDate value="${listac2.fum}" pattern='dd/MM/yy'/></td> 
           <td align="center"><c:out value="${listac2.semanas}"/></td> 
           <td align="center"><c:out value="${listac2.nembarazo}"/></td> 
           <td><c:out value="${listac2.pa}"/></td> 
           <td><c:out value="${listac2.diagnostico}" escapeXml="false"/></td>
           <c:if test="${listac2.suma1==1}">
               <td>Antes 5to.Mes</td>
           </c:if>
           <c:if test="${listac2.suma2==1}">
               <td>Despues 5to.Mes</td>
           </c:if>
           <c:if test="${listac2.suma3==1 and listac2.suma4==0}">
               <td>Control Repetido</td>
           </c:if>
           <c:if test="${listac2.suma3==1 and listac2.suma4==1}">
               <td>Control Repetido<br>4to Control</td>
           </c:if>
           <c:if test="${listac2.suma1==0 and listac2.suma2==0 and listac2.suma3==0 and listac2.suma4==0}">
               <td>.</td>
           </c:if>
           <td><c:out value="${listac2.numpieza}"/></td> 
           <c:if test="${listac2.sfembarazada==1}">
               <td align="center"><c:out value="${listac2.tabletas}"/></td>
           </c:if>
           <c:if test="${listac2.sfembarazada==0}">
               <td align="center">.</td>
           </c:if>
           <c:if test="${listac2.parto==1}">
               <td>Parto<br> Vaginal</td>
           </c:if>
           <c:if test="${listac2.parto==2}">
               <td>Parto<br> Cesarea</td>
           </c:if>
           <c:if test="${listac2.parto==3}">
               <td>Parto Dom.<br>Pers.Salud</td>
           </c:if>
           <c:if test="${listac2.parto==4}">
               <td>Partera<br> Capacitada</td>
           </c:if>
           <c:if test="${listac2.parto==0}">
               <td>.</td>
           </c:if> 
           <c:if test="${listac2.controlpos==1}">
               <td>1er Control<br>Postparto</td>
           </c:if>
           <c:if test="${listac2.controlpos==2}">
               <td>2do. Control<br>Postparto o mas</td>
           </c:if>
           <c:if test="${listac2.controlpos==0}">
               <td>.</td>
           </c:if>
           <c:if test="${listac2.sfpuerpera==1}">
               <td align="center"><c:out value="${listac2.tabletas}"/></td>
           </c:if>
           <c:if test="${listac2.sfpuerpera==0}">
               <td align="center">.</td>
           </c:if>
         </tr>  
         </c:forEach>
    </table>  
