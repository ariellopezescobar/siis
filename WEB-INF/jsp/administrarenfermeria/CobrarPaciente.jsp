<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="actualizar" method=post action='<c:url value="/CobrarPacienteEnfermeria.do"/>'>
<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3">DATOS PERSONALES COBRAR PACIENTE</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
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
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
     </tr>
     <tr>
        <td align="right" bgcolor="#F2F2F2">Numero Clave de Documento</td>
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=20 /></td>            
      </tr> 
   <tr>
        <td align="right" bgcolor="#F2F2F2">Rubro de Cobro  </td>      
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
        <td align="right" bgcolor="#F2F2F2">Concepto de Cobro  </td>      
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
        <td align="right" bgcolor="#F2F2F2"> Monto a Cobrar  </td>
        <td><input type="text" name="precio" size="20" maxlength="15" onblur='validar(precio,"9")' value=<c:out value="${precio}"/>></td>
   </tr>       
   </table>
  </td>
</table>
</center>
<center>
     <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.actualizar.accion.value='Terminar'">
</center>
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>    
    <input type="hidden" name='id_paciente'     value='<c:out value="${datos.id_paciente}"/>'>
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>    
    <input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>
    <input type="hidden" name="accion"          value='Continua' >
    <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
</form>

