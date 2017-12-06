<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="actualizar" method=post action='<c:url value="/CobrarPaciente1.do"/>'>
<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3"><center>DATOS PERSONALES PACIENTE EN COBRANZA </center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres Usuario::</td>    
        <td><div class="form-inline"><input class="form-control" type="text" name="nombres"  value='<c:out value="${nombres}"/>' size="40" maxlength="40" onblur='validar(nombres,"A9")'></div></td>
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">N.I.T./C.I. Usuario::</td>    
        <td><div class="form-inline"><input class="form-control" type="text" name="ciu"  value='<c:out value="${carnet}"/>' size="20" maxlength="20" onblur='validar(ciu,"9")'></div></td>
      </tr>
      <tr>
        <td  align="right" bgcolor="#F2F2F2">Numero Clave de Documento::</td>
        <td><div class="form-inline"><c:out value = "${num_cladoc}"/></div></td>            
      </tr>  
  <c:if test="${(sw == 5)}">    
      <tr>
         <td >Rubro de Cobro::</td>    
        <td><c:out value = "ENFERMERIA"/></td>
        <div class="form-inline"><input class="form-control" type="hidden" name="id_rubro" value="5"></div>   
      </tr>
    </c:if> 
  <c:if test="${(sw == 3)}">    
      <tr>
         <td  align="right" bgcolor="#F2F2F2">Rubro de Cobro::</td>    
        <td><c:out value = "ODONTOLOGIA"/></td> 
        <div class="form-inline"><input class="form-control" type="hidden" name="id_rubro" value="3"></div>
      </tr>
    </c:if>
  <c:if test="${not(sw == 5 or sw == 3)}">
     <tr>
        <td  align="right" bgcolor="#F2F2F2">No. Otro Comprobante(Reconsulta)::</td>
        <td><div class="form-inline"><input class="form-control" type="text" name="nit" value="0" maxlength=20 /></div></td>            
     </tr>  
   <tr>
        <td  align="right" bgcolor="#F2F2F2">Rubro de Cobro::</td>      
        <td>
          <SELECT NAME="id_rubro" onchange="javascript:document.actualizar.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarRubros}">
	      <option value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>>
	        <c:out value="${estado.rubro}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>       
   </tr>      
  <tr>
        <td  align="right" bgcolor="#F2F2F2">Concepto de Cobro::</td>      
        <td>
          <SELECT NAME="id_costo" onchange="javascript:document.actualizar.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCostos}">
	      <option value="<c:out value="${estado.id_costo}"/>" <c:if test="${estado.id_costo == id_costo}">selected</c:if>>
	        <c:out value="${estado.costo}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>        
   </tr>
 </c:if>
 <c:if test="${(sw == 5 or sw == 3)}">    
     <tr>
        <td  align="right" bgcolor="#F2F2F2"> Monto a Cobrar::</td>
        <td><div class="form-inline"><input class="form-control" type="text" name="precio" size="20" maxlength="15" readonly onblur='validar(precio,"9")' value=<c:out value="${precio}"/>></div></td>
     </tr>   
  </c:if> 
  <c:if test="${not(sw == 5 or sw == 3)}"> 
      <tr>
        <td  align="right" bgcolor="#F2F2F2"> Monto a Cobrar::</td>
        <td><div class="form-inline"><input class="form-control" type="text" name="precio" size="20" maxlength="15" onblur='validar(precio,"9")' value=<c:out value="${precio}"/>></div></td>
     </tr> 
  </c:if> 
   </table>
  </td>
</table>
<center>
     <c:if test="${Factura == 2}"> 
        <input type="submit" class="btn btn-success" value='c/Factura' onclick="document.actualizar.accion.value='Factura'">
     </c:if> 
     <input type="submit" class="btn btn-warning btn-lg" value='c/Recibo' onclick="document.actualizar.accion.value='Recibo'">
     <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.actualizar.accion.value='Terminar'">
</center>
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>    
    <input type="hidden" name='id_costo'        value='<c:out value="${id_costo}"/>'>    
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>    
    <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
    <input type="hidden" name='medico'          value='<c:out value="${medico}"/>'>
    <input type="hidden" name='num_cladoc'      value='<c:out value="${num_cladoc}"/>'>
    <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
    <input type="hidden" name='fecprueba'       value='2017-07-09 Codigo Control'>
    <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
    <input type="hidden" name="accion"          value='Continua'>
    <input type="hidden" name="sw"              value='<c:out value="${sw}"/>'>
    <input type="hidden" name="swe"              value='<c:out value="${swe}"/>'>
    <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>'>
</form>
</center>