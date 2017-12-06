<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <table class="formulario">
   <tr>
     <th colspan="3">ACCION A REALIZAR AL PACIENTE CUADERNO VACUNAS</th>
   </tr>
   <tr>
     <td width="50%" valign="top"> 
   <table class="formulario" width="100%">
      <tr>
       <th colspan="3">DATOS DEL PACIENTE</th>
      </tr>  
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Sexo</td>
        <td class="etiqueta">::</td>	
        <c:if test="${datos.id_tipo_sexo==1}">      
           <td>FEMENINO</td>
        </c:if>
        <c:if test="${datos.id_tipo_sexo==2}">      
           <td>MASCULINO</td>
        </c:if>
        
      </tr> 
      <tr>    
        <td class="etiqueta">Edad</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</td>
      </tr>
 </table>
 <table class="tabla" border="1"><tr>
<td><form name=formaCV method=post action='<c:url value="/Vacunas.do"/>'>
     <td colspan="2">
      <div class="volver"><a href="javascript:document.formaCV.submit();">Retornar</a></div></td>
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
 <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> TRATAMIENTO </th>
    <th> ELIMMMINAR </th>
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
       <table>
       <c:if test="${lista.tipo_egreso=='0'}"> 
          <tr>    
              <td>Tipo</td>     
              <td>DENTRO</td>  
           </tr>
       </c:if>            
       <c:if test="${lista.tipo_egreso=='1'}"> 
          <tr>    
              <td>Tipo</td>     
              <td>FUERA</td>  
           </tr>
       </c:if>            
       <c:if test="${lista.polio=='P' or lista.polio=='S' or lista.polio=='T'}"> 
          <tr>    
              <td>Polio</td>     
              <td><c:out value="${lista.polio}"/></td>  
           </tr>
        </c:if> 
        <c:if test="${lista.polio=='C'}"> 
          <tr>    
              <td>Polio</td>     
              <td>1er Refuerzo</td>  
           </tr>
        </c:if> 
        <c:if test="${lista.polio=='Q'}"> 
          <tr>    
              <td>Polio</td>     
              <td>2do Refuerzo</td>  
           </tr>
        </c:if> 
        <c:if test="${lista.penta=='P' or lista.penta=='S' or lista.penta=='T'}">
           <tr>    
              <td>Pentavalente</td>     
              <td><c:out value="${lista.penta}"/></td>  
           </tr>
         </c:if>    
         <c:if test="${lista.penta=='C'}">
           <tr>    
              <td>Pentavalente</td>     
              <td>1er Refuerzo</td>  
           </tr>
         </c:if>  
         <c:if test="${lista.penta=='Q'}">
           <tr>    
              <td>Pentavalente</td>     
              <td>2do Refuerzo</td>  
           </tr>
         </c:if>  
         <c:if test="${lista.anti=='P' or lista.anti=='S' or lista.anti=='T'}"> 
           <tr>    
              <td>Antirotavirus</td>     
              <td><c:out value="${lista.anti}"/></td>  
           </tr>
         </c:if>
         <c:if test="${lista.bacterias=='P' or lista.bacterias=='S' or lista.bacterias=='T'}"> 
           <tr>    
              <td>Neumococica</td>     
              <td><c:out value="${lista.bacterias}"/></td>  
           </tr>
         </c:if>
         <c:if test="${lista.bcg=='1'}"> 
           <tr>    
              <td>BCG</td>     
              <td><c:out value="${lista.bcg}"/></td>  
           </tr>
         </c:if>
         
         <c:if test="${lista.cancero>='1'}">
            <tr>    
              <td>D.P.T.</td>     
              <td><c:out value="${lista.cancero}"/></td>  
           </tr> 
         </c:if>
         <c:if test="${lista.srp>='1'}">
            <tr>    
              <td>S.R.P.</td>     
              <td><c:out value="${lista.srp}"/></td>  
           </tr> 
         </c:if>
         <c:if test="${lista.fama=='1' or lista.fama=='2'}">   
            <tr>    
              <td>F. Amarilla</td>     
              <td><c:out value="${lista.fama}"/></td>  
           </tr> 
         </c:if> 
         <c:if test="${lista.auto=='1' or lista.auto=='2' or lista.auto=='3'}">
            <tr>    
              <td>Hepatitis</td>     
              <td><c:out value="${lista.auto}"/></td>  
           </tr> 
         </c:if>  
         <c:if test="${lista.rhumana==1}">
            <tr>    
              <td>Rabia Humana</td>     
              <td><c:out value="${lista.rhumana}"/></td>  
           </tr> 
         </c:if>  
         <c:if test="${lista.cancer=='1' or lista.cancer=='2'}">
            <tr>    
              <td>Influenza AH1N1</td>     
              <td><c:out value="${lista.cancer}"/></td>  
           </tr> 
         </c:if>    
         <c:if test="${datos.id_tipo_sexo==1 and (lista.mujerdt=='P' or lista.mujerdt=='S' or lista.mujerdt=='T' or lista.mujerdt=='C' or lista.mujerdt=='Q')}">  
           <tr>    
              <td>Mujer 6-59 años D.T.</td>     
              <td><c:out value="${lista.mujerdt}"/></td>  
           </tr>  
         </c:if>   
         <c:if test="${datos.id_tipo_sexo==2 and (lista.mujerdt=='P' or lista.mujerdt=='S' or lista.mujerdt=='T' or lista.mujerdt=='4' or lista.mujerdt=='Q')}">  
           <tr>    
              <td>Hombres 6-59 años D.T.</td>     
              <td><c:out value="${lista.mujerdt}"/></td>  
           </tr>  
         </c:if>
        <c:if test="${fn:length(lista.dvitaa)>1}">
            <tr>    
              <td>Otras Vacunas</td>     
              <td><c:out value="${lista.dvitaa}"/></td>  
           </tr> 
         </c:if> 
       </table>
       </td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Vacunas.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno"     value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name="nombres"         value="<c:out value="${nombres}"/>" >         
         <input type="hidden" name="edad"            value="<c:out value="${edad}"/>" >         
         <input type="hidden" name="id_sexo"         value="<c:out value="${id_sexo}"/>" >                  
         <input type="hidden" name="sw"              value="<c:out value="${sw}"/>" >                  
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="accion"          value='Eliminar' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
   </c:forEach>
 </table>
    </td>
    <td width="50%" valign="top">

 <form name="adicionar" method="POST" action='<c:url value="/Vacunas.do"/>' >
 <table class="formulario" border=1>
  <tr>
    <th colspan="5">TRATAMIENTO</th>
  </tr>
  
  
 <tr>
   <td class="etiqueta" rowspan=14> Vacunas</td>
   <td class="etiqueta" > TIPO</td>
        <td colspan=2><SELECT NAME="tipo">
  	      <option value="0">DENTRO </option>
              <option value="1">FUERA</option>
        </SELECT></td>
 </tr>
 <tr>
   
   <td class="etiqueta" > Polio</td>
        <td colspan=2><SELECT NAME="polio">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
              <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
              <option value="C">1er Refuerzo</option>
              <option value="Q">2do Refuerzo</option>
        </SELECT></td>
 </tr>
 <tr>
   <td class="etiqueta" > Pentavalente</td>
        <td colspan=2><SELECT NAME="penta">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
  	      <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
              <option value="C">1er Refuerzo</option>
              <option value="Q">2do Refuerzo</option>
        </SELECT></td>
 </tr>
 <tr>
   <td class="etiqueta" > Antirotavirus</td>
        <td colspan=2><SELECT NAME="anti">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
  	      <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
          </SELECT></td>
 </tr>
 <tr>
   <td class="etiqueta" > Neumococica</td>
        <td colspan=2><SELECT NAME="neumo">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
  	      <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
          </SELECT></td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=2 > BCG</td>
   <td ><input type=checkbox name="bcg" value="1" ></td>
 </tr>
  <tr>
   <td class="etiqueta" > D.P.T.</td>
       <td colspan=2><SELECT NAME="dpt">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
              <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
              <option value="C">4. Cuarta</option>      
              <option value="Q">5. Quinta</option> 
          </SELECT></td>  
 </tr>
 <tr>
   <td class="etiqueta" colspan=2>SRP</td>
   <td><input type=checkbox name="srp" value="1" ></td>
 </tr>
 <tr>
   <td class="etiqueta" > D.T.</td>
       <td colspan=2><SELECT NAME="mujerdt">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
  	      <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
              <option value="C">4. Cuarta</option>
              <option value="Q">5. Quinta</option>
          </SELECT></td>  
 </tr>
 <tr>
   <td class="etiqueta" colspan=2> F. Amarilla</td>
   <td><input type=checkbox name="fama" value="1" ></td>
 </tr>
  <tr>
   <td class="etiqueta" >Influenza AH1N1</td>
       <td colspan=2><SELECT NAME="influenza">
  	      <option value="N">Ninguno </option>
              <option value="1">1. Primera</option>
              <option value="2">2. Segunda</option>
       </SELECT></td>  
 </tr>
 
 <tr>
   <td class="etiqueta" > Hepatitis "B"</td>
       <td colspan=2><SELECT NAME="hepatitis">
  	      <option value="N">Ninguno </option>
              <option value="P">1. Primera</option>
  	      <option value="S">2. Segunda</option>
              <option value="T">3. Tercera</option>
          </SELECT></td>  
 </tr>
 <tr>
   <td class="etiqueta" colspan=2> Rabia Humana</td>
   <td><input type=checkbox name="rhumana" value="1" ></td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=2> Rabia Animal</td>
   <td><input type=checkbox name="rcanina" value="1" ></td>
 </tr>
 <tr>
   <td class="etiqueta" colspan=2> Otras Vacunaciones</td>
   <td><input type=text name="dvitaa" value="" size="20" maxlength="20"></td>
 </tr>


 </table>  
 <center>
   <input type="submit" name='accion' class="aceptar" value='Agregar'>  
   <input type="submit" name='accion' class="cancelar" value='Terminar'>  
 </center> 
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
 <input type="hidden" name="nombres"         value="<c:out value="${nombres}"/>" >         
 <input type="hidden" name="edad"            value="<c:out value="${edad}"/>" >         
 <input type="hidden" name="id_sexo"         value="<c:out value="${id_sexo}"/>" >         
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name="sw"         value="<c:out value="${sw}"/>" >                  
 </form>
 </td>
  </tr>
 </table>
