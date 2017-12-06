<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div class="form-inline" style="font-size:15pt"><center> Medicamentos Entregado por fechas</center></div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
<tr style="font-size:8pt">
 <td>  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> No </th>
    <th> Est. </th>
    <th> FECHA </th>
    <th> Est </th>
    <th> NOMBRE PACIENTE </th>
    <th> Tipo </th>
    <th> NUM </th>
    <th> Monto </th> 
    <th> Prescriptor </th>
    <th> VER </th>
    <th> VER </th>
    <th> VER </th>
    </tr>  
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
     <c:if test="${(lista.id_pais == '0')}">  
           <form name=formaU<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaReceta.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaU<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial" value='<c:out value="${lista.id_carpeta}"/>' >
                 <input type="hidden" name="id_historia"  value='<c:out value="${lista.id_pais}"/>' >
                 <input type="hidden" name="id_persona"   value='<c:out value="${lista.id_persona}"/>' >
                 <input type="hidden" name="id_pedido"    value='<c:out value="${lista.id_pedido}"/>' >
                 <input type="hidden" name="tag"          value='<c:out value="${lista.cadena1}"/>' >
                 <input type="hidden" name="fechar"       value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>'>
                 <input type="hidden" name="expedido"     value='<c:out value="${lista.id_estado}"/>' >
                 <input type="hidden" name="accionm"      value='Modificar'>
                 <input type="hidden" name="sw1"          value='1' >
              </td>
           </form>     
       </c:if>
       <c:if test="${(lista.id_pais != '0')}">  
           <form name=formaU2<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaRecetaI.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaU2<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial" value='<c:out value="${lista.id_carpeta}"/>' >
                 <input type="hidden" name="id_historia"  value='<c:out value="${lista.id_pais}"/>' >
                 <input type="hidden" name="id_doctor"    value='<c:out value="${lista.id_persona}"/>' >
                 <input type="hidden" name="id_pedido"    value='<c:out value="${lista.id_pedido}"/>' >
                 <input type="hidden" name="tag"          value='<c:out value="${lista.cadena1}"/>' >
                 <input type="hidden" name="fechar"       value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>'>
                 <input type="hidden" name="expedido"     value='<c:out value="${lista.id_estado}"/>' >
                 <input type="hidden" name="accionm"      value='Modificar'>
                 <input type="hidden" name="sw1"          value='1' >
              </td>
           </form>     
       </c:if>
       <td style="font-size:6pt;" ><c:out value="${lista.cod_esta}"/><br><c:out value="${lista.id_dispensa}"/></td>   
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy'/><font color="green"><b><fmt:formatDate value="${lista.fec_registro}" pattern=' HH:mm'/></b></font></td>
       <c:if test="${lista.id_pais != '0'}">  
           <td style="font-size:12pt; color:red;">I</td>       
       </c:if>
       <c:if test="${(lista.id_pais == '0')}">  
           <td>A</td>       
       </c:if>
       <td><c:out value="${lista.nombres}"/></td>   
       <c:if test="${lista.id_estado=='E' or lista.id_estado=='A' or lista.id_estado=='C'}"> 
            <td align="center"><c:out value="${lista.id_estado}"/></td> 
       </c:if>
       <c:if test="${lista.id_estado=='S'}"> 
            <td align="center" style="color:red">SUMI</td> 
       </c:if>
              <td align="center" style="color:blue"><c:out value="${lista.id_estado}"/> </td>
       <td><c:out value="${lista.num_cladoc}"/></td>
       <td align="center" style="font-size:11pt"><b><fmt:formatNumber value="${lista.precio_total}" maxFractionDigits="2"/></b></td> 
       <td><c:out value="${lista.nombre}"/></td> 
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/VerEntregados.do"/>'>
       <td>     
         <div class="modificar"><a class="btn btn-warning" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Pedido</a></div>
  	 <input type="hidden" name="id_pedido"  value=<c:out value="${lista.id_pedido}"/>>         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/>>         
         <input type="hidden" name="valor_1"    value=<c:out value="${valor_1}"/>>           
         <input type="hidden" name="valor_2"    value=<c:out value="${valor_2}"/>>                    
	 <input type="hidden" name="accion"     value='mostrar'>
	 <input type="hidden" name="sw"         value='VENTA'>
       </td>
     </form>
     <c:if test="${not(lista.id_paciente == '0')}">  
     <form name=formaMReg<c:out value="${contador.count}"/> method=post action='<c:url value="/VerEntregados.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-success" href="javascript:document.formaMReg<c:out value="${contador.count}"/>.submit();">General</a></div>
  	 <input type="hidden" name="id_pedido"    value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_historial" value=<c:out value="${lista.id_carpeta}"/> >         
         <input type="hidden" name="id_persona"   value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="valor_1"      value=<c:out value="${valor_1}"/> >           
         <input type="hidden" name="valor_2"      value=<c:out value="${valor_2}"/> >   
         <input type="hidden" name="inter"        value=<c:out value="${lista.id_pais}"/>>           
	 <input type="hidden" name="accion"       value='receta'>
	 <input type="hidden" name="sw"           value='VENTA'>
       </td>
     </form>
     </c:if>
     <c:if test="${not(lista.id_paciente == '0')}">  
     <form name=formaMRe<c:out value="${contador.count}"/> method=post action='<c:url value="/VerEntregados.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-primary" href="javascript:document.formaMRe<c:out value="${contador.count}"/>.submit();">Individual</a></div>
  	 <input type="hidden" name="id_pedido"    value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_historial" value=<c:out value="${lista.id_carpeta}"/> >         
         <input type="hidden" name="id_persona"   value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="valor_1"      value=<c:out value="${valor_1}"/> >           
         <input type="hidden" name="valor_2"      value=<c:out value="${valor_2}"/> >   
         <input type="hidden" name="inter"        value=<c:out value="${lista.id_pais}"/> >           
	 <input type="hidden" name="accion"       value='receta' > 
         <input type="hidden" name="swx"          value='individual' >
	 <input type="hidden" name="sw"           value='VENTA' >
       </td>
     </form>
     </c:if>
     <c:if test="${(lista.id_estado == 'C' or lista.id_estado == 'E')}">  
     <form name=formaImpe<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-info" href="javascript:document.formaImpe<c:out value="${contador.count}"/>.submit();">Recibo</a></div>
  	 <input type="hidden" name="id_pedido"    value=<c:out value="${lista.id_pedido}"/> >  
         <input type="hidden" name="id_paciente"  value=<c:out value="${lista.id_paciente}"/> > 
         <input type="hidden" name="id_historial" value=<c:out value="${lista.id_carpeta}"/> >         
         <input type="hidden" name="id_persona"   value=<c:out value="${lista.id_persona}"/> >                
	 <input type="hidden" name="accion"       value='receta' > 
         <input type="hidden" name="swx"          value='individual' >
	 <input type="hidden" name="sw"           value='VENTA' >
       </td>
     </form>
     </c:if>
    </tr> 
   </c:forEach>

</table>

</td>
<td valign="top">

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3">DATOS DEL PACIENTE</th>
  </tr>
  <tr style="font-size:9pt">
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
      <tr style="font-size:9pt">    
        <td class="form-inline">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
       <tr style="font-size:9pt">    
        <td class="form-inline">Numero Clave Documento</td>          
        <td><c:out value = "${datos.num_cladoc}"/></td>
      </tr>  
      <tr style="font-size:9pt">    
        <td class="form-inline">Fecha</td>          
        <td><fmt:formatDate value="${datos.fec_registro}" pattern='dd/MM/yyyy'/></td> 
      </tr>     
      <tr style="font-size:9pt">    
        <td class="form-inline">Costo Total</td>          
        <td><c:out value = "${datos.precio_total}"/></td>
       </tr>  
   </table>
  </td>
  </tr>  
</table>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> No <br>NumRec</th>
    <th> MEDICAMENTO </th>
    <th> FormaFar </th>
    <th> Concetra </th>
    <th> CANTIDAD </th>
    <th> COSTO </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/>_<c:out value="${listado.num_recetak}"/></td>
       <td><c:out value="${listado.medicamento}"/></td> 
       <td><c:out value="${listado.forma_far}"/></td> 
       <td><c:out value="${listado.concentra}"/></td> 
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>   
     </tr>                   
   </c:forEach>
</table>
 
</td>
</tr>
</table>