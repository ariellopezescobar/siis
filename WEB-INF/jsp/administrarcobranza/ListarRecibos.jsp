<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ListarRecibos.do"/>' >
 <center>
  <table class="table table-striped table-condensed table-responsive">
    <tr>
      <th  bgcolor="#F2F2F2"><center>BUSQUEDA DE DATOS RECIBIDOS</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
           <table class="table table-striped table-condensed table-responsive">   
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio  </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final  </td> 
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
               <tr>
                <td align="right" bgcolor="#F2F2F2">Rubro de Cobro </td>     
                <td>
                  <SELECT NAME="id_rubro" onchange="javascript:document.actualizar.submit();">
                    <option value="0">-- T O D O S --
                    <c:forEach var="estado" items="${listarRubros}">
                      <OPTION value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>> 
                        <c:out value="${estado.rubro}"/>
                      </option>
                    </c:forEach>
                   </SELECT>	
                </td>       
               </tr>      
	    </table>
            
        </fieldset>
      </td>
    </tr>
  </table>
   </center>
     <center>
        <input type="submit" name="boton" class="btn btn-info" value="Plan de Pagos">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
       <input type="submit" name="boton" class="btn btn-primary" value="Buscar">
     </center>
    </form>        
   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
      <th bgcolor="#F2F2F2"> NRO </th>
      <th bgcolor="#F2F2F2"> FECHA </th>
      <th bgcolor="#F2F2F2"> Num.<br>Recet. </th>
      <th bgcolor="#F2F2F2"> RUBRO </th>
      <th bgcolor="#F2F2F2"> Num.<br> Comp </th>
      <th bgcolor="#F2F2F2"> NIT<br>Cliente</th>
      <th bgcolor="#F2F2F2"> PACIENTE </th>
      <th bgcolor="#F2F2F2"> MONTO </th>
      <c:if test="${permiso=='5' or permiso=='1'}">
          <th bgcolor="#F2F2F2"> Usua </th>
          <th bgcolor="#F2F2F2"> MODIFICAR </th>
          <th bgcolor="#F2F2F2"> ELIMINAR </th>
      </c:if>    
      <th bgcolor="#F2F2F2"> IMPRIMIR </th>
      </tr>
   <tr>
   
  <c:forEach var="lista" items="${listaCobros}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>&nbsp;<font color="green"><fmt:formatDate value="${lista.fec_registro}" pattern='HH:mm'/></font></td>
       <td align="center"><c:out value="${lista.id_factura}"/></td>
       <c:forEach var="listaRubro" items="${listaRubros}" >
          <c:if test="${listaRubro.id_rubro == lista.id_rubro }">
              <td style="color:blue"><c:out value="${listaRubro.rubro}"/></td>
          </c:if>
       </c:forEach>   
       <td align="right"><c:out value="${lista.num_cladoc}"/></td>
       <td align="right"><c:out value="${lista.nit}"/></td>      
       <td><c:out value="${lista.nombres}"/></td>
       <td align="right"><c:out value="${lista.precio_total}"/></td>
    <c:if test="${permiso=='5' or permiso=='1'}">  
     <td align="right" style="color:blue"><c:out value="${lista.id_persona}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>' >
         <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>' >
         <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>' >
         <input type="hidden" name="expedido"      value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="id_estado"     value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>' >
         <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="id_reservacion"value='<c:out value="${lista.id_carpeta}"/>' >
         <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>' >
         <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>' >
         <input type="hidden" name="id_persona"    value='<c:out value="${lista.id_persona}"/>' >         
         <input type="hidden" name="id_rubro"         value='<c:out value="${lista.id_rubro}"/>' > 
         <input type="hidden" name="accioncob"          value='Modificar'>
	 <input type="hidden" name="sw"              value='2'>
       </td>
     </form>
     <form name=formaEli<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarRecibos.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaEli<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>' >
         <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>' >
         <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>' >
         <input type="hidden" name="expedido"      value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="id_estado"     value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>' >
         <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="id_reservacion"value='<c:out value="${lista.id_carpeta}"/>' >
         <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>' >
         <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>' >
         <input type="hidden" name="id_persona"    value='<c:out value="${lista.id_persona}"/>' >         
         <input type="hidden" name="id_rubro"      value='<c:out value="${lista.id_rubro}"/>' > 
         <input type="hidden" name="accion"        value='EliminarReb'>
	 <input type="hidden" name="sw"            value='2'>
       </td>
     </form>
     </c:if>
     <form name=formaII<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarRecibos.do"/>'>
       <td>     
         <div class="imprimir"><a href="javascript:document.formaII<c:out value="${contador.count}"/>.submit();">Imprimir</a></div>
  	 <input type="hidden" name="id_pedido"        value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="id_paciente"      value='<c:out value="${lista.id_paciente}"/>' > 
         <input type="hidden" name="id_rubro"         value='<c:out value="${lista.id_rubro}"/>' > 
         <input type="hidden" name="nombres"          value='<c:out value="${lista.nombres}"/>' > 
         <input type="hidden" name="precio"           value='<c:out value="${lista.precio_total}"/>' > 
         <input type="hidden" name="numcla"           value='<c:out value="${lista.num_cladoc}"/>' > 
         <input type="hidden" name="nit"              value='<c:out value="${lista.nit}"/>' > 
         <input type="hidden" name="accion"           value='Imprimir'>
	 <input type="hidden" name="sw"               value='2'>
       </td>
     </form>
    <tr>    
   </c:forEach>
  </table>

   <c:if test="${plan=='Plan de Pagos'}">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
          <th bgcolor="#F2F2F2"> No. </th>
          <th bgcolor="#F2F2F2"> HCL </th>
          <th bgcolor="#F2F2F2"> Fecha </th>
          <th bgcolor="#F2F2F2"> NOMBRE </th>
          <th bgcolor="#F2F2F2"> Ver </th>
      </tr>  
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <tr style="font-size:9pt">
           <td><c:out value="${contador.count}"/></td>
           <td><c:out value="${lista.id_carpeta}"/></td>
           <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>&nbsp;<font color="green"><fmt:formatDate value="${lista.fec_registro}" pattern='HH:mm:ss'/></font></td>
           <td><c:out value="${lista.nombres}"/></td>
           <form name=formaEimp<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteResumen.do"/>'>
         <td>     
           <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEimp<c:out value="${contador.count}"/>.submit();"> Ver</a></div>
           <input type="hidden" name="id_paciente"     value='<c:out value="${lista.id_paciente}"/>'>
           <input type="hidden" name="id_historial"    value='<c:out value="${lista.id_pais}"/>'>
           <input type="hidden" name="accion"          value='Plan de Pagos2' >
         </td>
        </form>
       </tr>   
     </c:forEach>    
</table>
</c:if>
 
<%@ include file="../Inferior.jsp" %>