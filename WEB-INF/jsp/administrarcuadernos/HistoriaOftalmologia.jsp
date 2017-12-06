<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
     <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Fecha de nac.</td>    
        <td class="etiqueta">::</td>
        <td><c:out value="${fec_nacimiento}"/></td>
    	<td style="color:blue" align="right"><b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                 
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td style="font-size:9pt"><b><c:out value = "${datos.direccion}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color:blue>Ocupacion:</font><c:out value = "${datos.ocupacion}"/></b></td>
      </tr>
   </table>
  </td>
  </tr>
</table>

<form name="adicionoftal" method="POST">
 <table class="formulario">
  <tr>
    <th colspan="3">HISTORIA OFTALMOLOGICA</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
     <tr>    
        <td class="etiqueta">Situacion</td>    
        <td class="etiqueta">::</td>
        <td colspan="4"><input type="text" name="situa" value="" size="84" maxlength="80" ></td> 
      </tr>
      <tr>
       <td class="etiqueta">A.P.</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="ap" value="" size="35" maxlength="30" ></td> 
        <td class="etiqueta">A.F.</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="af" value="" size="35" maxlength="30" ></td> 
      </tr>
      <tr>    
        <td class="etiqueta">Krod</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="krod" value="" size="35" maxlength="30" ></td> 
        <td class="etiqueta">O.S.</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="os" value="" size="35" maxlength="30" ></td> 
      </tr>
      <tr>    
        <td class="etiqueta">Lensometro</td>    
        <td class="etiqueta">::</td>
        <td colspan="4"><input type="text" name="lensometro" value="" size="84" maxlength="80" ></td> 
      </tr>
   </table>
  </td>
  </tr>
  <tr>
   <td width="100%" valign="top">
    <table class="formulario" width="100%">
     <tr>
        <th>AGUDEZA VISUAL</th>
        <th>N.C.</th>
        <th>P.H.</th>
        <th>C.C.</th>
        <th>N.C.</th>
        <th>C.I.</th>
     </tr>   
     <tr>    
        <td class="etiqueta">OJO DERECHO:</td>    
        <td><input type="text" name="ncd" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="phd" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="ccd" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="mcd" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="cid" value="" size="8" maxlength="8" ></td> 
      </tr>
      <tr>    
        <td class="etiqueta">OJO IZQUIERDO:</td>    
        <td><input type="text" name="nci" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="phi" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="cci" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="mci" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="cii" value="" size="8" maxlength="8" ></td> 
      </tr>
      <tr>
        <th>REFRACCCION</th>
        <th>ESFERA</th>
        <th>CILINDRO</th>
        <th>EJE</th>
        <th>ADD.</th>
        <th>PD.</th>
     </tr>   
     <tr>    
        <td class="etiqueta">OJO DERECHO:</td>    
        <td><input type="text" name="esferad" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="cilindrod" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="ejed" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="addd" value="" size="8" maxlength="8" ></td> 
        <td><input type="text" name="pdd" value="" size="8" maxlength="8" ></td> 
      </tr>
      <tr>    
        <td class="etiqueta">OJO IZQUIERDO:</td>    
        <td><input type="text" name="esferai" value="" size="8" maxlength="30" ></td> 
        <td><input type="text" name="cilindroi" value="" size="8" maxlength="30" ></td> 
        <td><input type="text" name="ejei" value="" size="8" maxlength="30" ></td> 
        <td><input type="text" name="addi" value="" size="8" maxlength="30" ></td> 
        <td><input type="text" name="pdi" value="" size="8" maxlength="30" ></td> 
      </tr>
      <tr>
        <th colspan="3">KERAT DERECHA</th>
        <th colspan="3">KERAT IZQUIERDA</th>
      </tr>  
      <tr>    
        <td colspan="3"><input type="text" name="keratd" value="" size="45" maxlength="50" ></td> 
        <td colspan="3"><input type="text" name="kerati" value="" size="45" maxlength="50" ></td> 
      </tr>
      <tr>
        <th colspan="3">DX</th>
        <th colspan="3">RX</th>
      </tr>  
      <tr>        
        <td colspan="3"><input type="text" name="dx" value="" size="45" maxlength="50" ></td> 
        <td colspan="3"><input type="text" name="rx" value="" size="45" maxlength="50" ></td> 
      </tr>
    </table>   
    </td>
  </tr>
</table>


<center>
  <input type="submit" class="siguiente" value='Guardar' onclick="document.adicionoftal.accion.value='Guardar';
                                                                      document.adicionoftal.action='<c:url value="/Oftalmologia.do"/>'"></td>
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_consultorio'      value='<c:out value="${id_consultorio}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_oftal'            value='<c:out value="${id_oftal}"/>'>
    <input type="hidden" name='accion'              value='<c:out value="${accion}"/>'>
</form>

<table class="tabla" border="1"><tr>
 <td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div class="volver"><a href="javascript:document.formaL1.submit();">Retornar</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
 </tr>
  </table>
  
  
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> MEDICO </th>
    <th> CONSULTORIO </th>
    <th> SUBJETIVO </th>        
    <th> OBJETIVO </th>        
    <th> DIAGNOSTICO </th>   
    <th> PLAN DE ACCION </th>   
    <th> CIE10 </th>  
    <th> RECETA </th>        
    </tr>  
</table>
