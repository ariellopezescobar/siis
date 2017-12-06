<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>


 <div style="font-size:15pt"> Cobrar a Paciente sin HCL </div>
<br>
<form name="actualizar" method=post action='<c:url value="/CobrarNPaciente.do"/>'>
<table class="formulario" width="600" align="center">
   <tr>
    <th colspan="3">DATOS PERSONALES PACIENTE SIN HISTORIA CLINICA</th>
  </tr>
  <tr>
  <td width="100%" valign="top">
  <table class="formulario" width="100%">
      <tr>
        <td class="etiqueta">Nombre Completo</td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>"maxlength=50 onblur='validar(nombres,"A")'/></td>
      </tr>
      <tr>
        <td class="etiqueta">Numero Clave de Documento</td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="num_cladoc" readonly value="<c:out value = "${num_cladoc}"/>" maxlength=20 /></td>            
      </tr>  
      <tr>
        <td class="etiqueta">No. Otro Comprobante(Reconsulta)</td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="nit" value="0" maxlength=20 /></td>            
      </tr>  
   <tr>
        <td class="etiqueta">Rubro de Cobro <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_rubro" onchange="javascript:document.actualizar.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarRubros}">
	      <OPTION value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>> 
	        <c:out value="${estado.rubro}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>    
   </tr>    
  <tr>
        <td class="etiqueta">Concepto de Cobro <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_costo" onchange="javascript:document.actualizar.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCostos}">
	      <OPTION value="<c:out value="${estado.id_costo}"/>" <c:if test="${estado.id_costo == id_costo}">selected</c:if>> 
	        <c:out value="${estado.costo}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>        
   </tr> 
   <tr>
        <td class="etiqueta"> Monto a Cobrar <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="precio" size="20" maxlength="15" onblur='validar(precio,"9")' value=<c:out value="${precio}"/>></td>
   </tr>       
   </table>  
  </td>
</table>
<center>
     <input type="submit" class="siguiente" value='Siguiente' onclick="document.actualizar.accion.value='Terminar'">    
</center>
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name="accion"          value='Continua' >
    <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
</form>