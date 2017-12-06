<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>


<table border=0>
<tr>
 <td>  
  <div style="font-size:15pt"> Medicamentos Recepcionados, Ajustes, Traspasos por fechas  </div>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> NRO </th>
    <th> FECHA </th>
    <th> NOMBRE EMPRESA/LINEA </th>
    <th> Fuente </th>
    <th> NUM </th> 
    <c:if test="${codesta == '200010'}"> 
            <th> Folio</th> 
    </c:if>
    <c:if test="${codesta != '200010'}"> 
            <th> Num.Corr<br>Maquina</th> 
    </c:if>
    <th> NIT</th>
    <th> MONTO </th>    
    <th> VER </th>
    <th> Imprimir </th>
    </tr>  
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
       <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/>_<font color="blue"><c:out value="${lista.id_pedido}"/></font></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/><font color="green"><b><fmt:formatDate value="${lista.fec_registro}" pattern=' HH:mm'/></b></font></td>      
       <td><c:out value="${lista.nombres}"/></td>  
        <c:if test="${lista.tipo == 'V'}"> 
            <td>Venta</td>  
       </c:if> 
       <c:if test="${lista.tipo == 'S'}"> 
            <td>Sumi</td>  
       </c:if>
       <c:if test="${lista.tipo == 'P'}"> 
           
            <td>Prog.
               <c:forEach var="listaprog" items="${listarProg}" >
                   <c:if test="${lista.id_persona == listaprog.id_programa}"> 
                        <font color="red"><c:out value="${listaprog.concentra}"/></font>
                   </c:if>
               </c:forEach>    
            </td>  
       </c:if>
       <td><c:out value="${lista.num_cladoc}"/></td> 
       <td align="center" style="font-size:14pt; color:blue;"><c:out value="${lista.id_factura}"/></td> 
       <td><c:out value="${lista.nit}"/></td> 
       <td align="right"><b><c:out value="${lista.precio_total}"/></b></td>      
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/VerRecibidos.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Ver Pedido</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="valor_1" value=<c:out value="${valor_1}"/> >           
         <input type="hidden" name="valor_2" value=<c:out value="${valor_2}"/> >                    
	 <input type="hidden" name="accion" value='mostrar' >
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>
     <form name=formaMRe<c:out value="${contador.count}"/> method=post action='<c:url value="/VerRecibidos.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-warning btn-xs" href="javascript:document.formaMRe<c:out value="${contador.count}"/>.submit();">Imprimir</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="valor_1" value=<c:out value="${valor_1}"/> >           
         <input type="hidden" name="valor_2" value=<c:out value="${valor_2}"/> >                    
	 <input type="hidden" name="accion" value='imprimir' >
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>
    </tr> 
   </c:forEach>

</table>

</td>
<td valign="top">

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3">DATOS EMPRESA/LINEA</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres:</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr> 
      <trstyle="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Numero Clave Documento:</td>    	      
        <td><c:out value = "${datos.num_cladoc}"/></td>
      </trstyle="font-size:10pt">
      <trstyle="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">NIT:</td>    	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>
      <trstyle="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Fecha:</td>    	      
        <td><fmt:formatDate value="${datos.fec_registro}" pattern='dd/MM/yyyy'/></td> 
      </tr>  
      <trstyle="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Costo Total:</td>    	      
        <td><c:out value = "${datos.precio_total}"/></td>
       </tr>  
   </table>
  </td>
  </tr>
   
</table>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> NRO </th>
    <th> MEDICAMENTO </th>
    <th> Forma<br>Far </th>
    <th> Concent </th>
    <th> Stock </th>
    <th> Costo </th>
    <th> Total </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:8pt" >
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>
       <td><c:out value="${listado.forma_far}"/></td>
       <td><c:out value="${listado.concentra}"/></td>
       <c:if test="${listado.entrada > 0}"> 
            <td align="right"><c:out value="${listado.entrada}"/></td>
            <td align="right"><c:out value="${listado.costo_unit}"/></td>                    
            <td align="right"><c:out value="${listado.precio_totalc}"/></td>               
       </c:if>          
       
       <c:if test="${listado.entrada == 0}"> 
            <td><c:out value="${listado.ajuste}"/></td>                        
            <td><c:out value="${listado.costo_unit}"/></td>                    
            <td><c:out value="${listado.precio_totala}"/></td>   
       </c:if>          
     </tr>  
   </c:forEach>

</table>
 
</td>
</tr>
</table>