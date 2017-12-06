<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionaestab" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>CONFIGURE DATOS DEL ESTABLECIMIENTO Y RESPONSABLE</center></th>
  </tr>
  <tr>
    <td valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="3"><font size=2><center>DATOS DEMOGRAFICOS ESTABLECIMIENTO</center></font></th>
      </tr>	
      <tr>
        <td align="right" bgcolor="#F2F2F2"> SEDES Departamento  </td>
        <td>
          <SELECT NAME="id_departamento" onchange="javascript:document.adicionaestab.submit();">
            <option value="0">-- seleccione --
   	    <c:forEach var="dpto" items="${listaDepartamentos}">
	      <option value="<c:out value="${dpto.id_departamento}"/>"<c:if test="${dpto.id_departamento == id_departamento}">selected</c:if>> 
	        <c:out value="${dpto.departamento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
      <tr>
        <td align="right" bgcolor="#F2F2F2">Red  </td>
        <td>
          <SELECT NAME="id_red" onchange="javascript:document.adicionaestab.submit();">
            <option value="0">-- seleccione --
	    <c:forEach var="red" items="${listaRed}">
	      <option value="<c:out value="${red.id_red}"/>"<c:if test="${red.id_red == id_red}">selected</c:if>> 
	        <c:out value="${red.red}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Municipio  </td>
        <td>
          <SELECT NAME="id_localidad" onchange="javascript:document.adicionaestab.submit();">
            <option value="0">-- seleccione --
	    <c:forEach var="prov" items="${listaMuni}">
	      <option value="<c:out value="${prov.id_localidad}"/>"<c:if test="${prov.id_localidad == id_localidad}">selected</c:if>> 
	        <c:out value="${prov.localidad}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Establecimiento  </td>
        <td>
          <SELECT NAME="cod_esta">
            <option value="0">-- seleccione --  
            <c:forEach var="estab" items="${listaEstab}">
	      <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
	        <c:out value="${estab.establecimiento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
     <tr>
      <td align="right" bgcolor="#F2F2F2"> Responsable Establecimiento  </td>	      
      <td>
        <SELECT NAME="id_persona">
	  <option value="0">-- seleccione --
	    <c:forEach var="emp" items="${listarPersonas}">
	      <option value="<c:out value="${emp.id_persona}"/>" <c:if test="${emp.id_persona == id_persona}"> selected </c:if>>
                <c:out value="${emp.nombres}"/>
	      </option>
	    </c:forEach>
        </SELECT>
      </td>
    </tr> 
    </table>
    </td>
  </tr>
  
 <tr>
    <th colspan="3"><center>CONFIGURACION PARA LA FACTURACION COMPUTARIZADA</center></th>
  </tr> 
  <tr>
    <td>
    <table class="formulario" width="100%">
      <tr>
        <td align="right" bgcolor="#F2F2F2">Direccion </td>
        <td><input type="text" name="direccion" value="<c:out value = "${direccion}"/>" maxlength=30 size="50" onblur='validar(direccion1,"A9")'/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Datos Telefono</td>
        <td><input type="text" name="tele1" value="<c:out value = "${tele1}"/>" maxlength=30 size="50" onblur='validar(tele1,"A9")'/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Datos Otro </td>
        <td><input type="text" name="tele2" value="<c:out value = "${tele2}"/>" maxlength=30 size="50" onblur='validar(tele2,"A9")'/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">NIT Institución </td>
        <td><input type="text" name="nit" value="<c:out value = "${nit}"/>" maxlength=15 onblur='validar(nit,"9")'/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Emision de Comprobantes</td>
        <td>
            <SELECT NAME="tipodoc" onchange="javascript:document.adicionaestab.submit();">
                 <c:if test="${id_tipo=='0'}">  
                      <option value="0" selected> Manual </option>
                      <option value="1" > Recibos</option>
                      <option value="2" > Facturas </option>
                  </c:if>
                  <c:if test="${id_tipo=='1'}">  
                      <option value="0" > Manual </option>
                      <option value="1" selected> Recibos </option>
                      <option value="2" > Facturas </option>
                  </c:if>
                  <c:if test="${id_tipo=='2'}">  
                       <option value="0">Manual</option>
                       <option value="1" >Recibos </option>
                       <option value="2" selected>Facturas </option>
                  </c:if>
                
             </SELECT>
        </td>
      </tr>
    <c:if test="${id_tipo == '2'}">   
      <tr>
        <td align="right" bgcolor="#F2F2F2">Num. Autorización</td>
        <td><input type="text" name="num_auto" value="<c:out value = "${num_auto}"/>"maxlength=20 onblur='validar(num_auto,"9")'/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Num. Factura</td>
        <td><input type="text" name="num_fact" value="<c:out value = "${num_fact}"/>"maxlength=20 onblur='validar(num_fact,"9")'/>
      </td>            
      </tr>    
       <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha Limite Factura  </td>    
        <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	                 
      </tr> 
      <tr>
        <td align="right" bgcolor="#F2F2F2">Llave Dosificación </td> 
        <td align="right" bgcolor="#F2F2F2">
           <textarea name="llave" rows="4" cols="30" style="width: 100%" >
               <c:out value = "${llave}" escapeXml="False"/>
           </textarea>
        </td>
      </tr> 
   </c:if>   
    </table>
  <tr>
    <th colspan="3"><center>MARGENES REPORTES / OTROS</center></th>
  </tr> 
  <tr>
    <td>
     <table class="formulario" width="100%">
        <tr>
           <td colspan="2" style="font-size:10pt">SIAL Maximo:</td>
           <td colspan="2"><input type="text" name="maximo" value="<c:out value = "${maximo}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
           <td colspan="2" style="font-size:10pt">SIAL Minimo:</td>
           <td colspan="2"><input type="text" name="minimo" value="<c:out value = "${minimo}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
        </tr>
        <tr>
           <td style="font-size:10pt">Izquierda:</td>
           <td><input type="text" name="izquierda" value="<c:out value = "${izquierda}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
           <td style="font-size:10pt">Derecha:</td>
           <td><input type="text" name="derecha" value="<c:out value = "${derecha}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
           <td style="font-size:10pt">Superior:</td>
           <td><input type="text" name="superior" value="<c:out value = "${superior}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
           <td style="font-size:10pt">Inferior:</td>
           <td><input type="text" name="inferior" value="<c:out value = "${inferior}"/>" maxlength="3" size="3" onblur='validar(nit,"9")'/></td>
        </tr>
    </td>
  </tr>
  </table>
  </tr>
   <tr>
   
  </tr>
</table>
<center>
  <input type="submit" class="btn btn-primary" value='Guardar' onclick="document.adicionaestab.accion.value='Guardar';
                                                                      document.adicionaestab.action='<c:url value="/NuevoEstab.do"/>'"></td>
</center>
  <input type="hidden" name='accion1' value=''>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
  <input type="hidden" name='id_persona' value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='recargado' value='Si'>
</form>
