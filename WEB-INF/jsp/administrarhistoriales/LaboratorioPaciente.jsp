<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Laboratorios e Imagenologiia</div>
<br>
<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
  
      <tr>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Sexo</td>
        <td class="etiqueta">::</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha de nac.</td>    
        <td class="etiqueta">::</td>
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Edad</td>    
        <td class="etiqueta">::</td>	      
        <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
      </tr>   
   </table>
  </td>
  </tr>
   
</table>
<!--
<form name=formaM method=post action='<c:url value="/AtenderPaciente.do"/>'>
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >                   
          <input type="hidden" name='accion'          value='Ninguno'>
  </form>
 -->
 <table class="tabla">
  <tr>
    <th colspan="6"> IMAGENOLOGIA </th>
  </tr>     
  <tr>
    <th> Nro </th>
    <th> Fecha Pedido </th>
    <th> Laboratorio </th>    
    <th> Fecha Realizacion </th>
    <th> Ver </th>
    <th> Imprimir </th>
    </tr>  
  <c:forEach var="listadoe" items="${listalabEndo}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td> 
       <td><fmt:formatDate value="${listadoe.fechap}" pattern='dd/MM/yyyy HH:mm'/></td> 
       <td><c:out value="${listadoe.laboratorio}"/></td>
       <td><fmt:formatDate value="${listadoe.fechae}" pattern='dd/MM/yyyy HH:mm'/></td> 
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td><div class="Buscar"><a href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Ver</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listadoe.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listadoe.id_historial}"/>'>     
         <input type="hidden" name='id_cuaderno'  value='<c:out value="${listadoe.id_cuaderno}"/>'> 
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accion'       value='VerEndo'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>  
     <form name=formaEnimp<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td><div class="imprimir"><a href="javascript:document.formaEnimp<c:out value="${contador.count}"/>.submit();">Impresion</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listadoe.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listadoe.id_historial}"/>'>   
         <input type="hidden" name='id_cuaderno'  value='<c:out value="${listadoe.id_cuaderno}"/>'>   
         <input type="hidden" name='cod_esta'     value='<c:out value="${listadoe.cod_esta}"/>' > 
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accion'       value='ImpEndo'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>
    
   </c:forEach>
</table>
  
  <table class="tabla">
  <tr>
    <th> Nro </th>
    <th> Fecha Pedido </th>
    <th> Tipo </th>    
    <th> Medico  </th> 
    <th> Fecha Realizacion </th>
    <th> Imprimir </th>
    <th> Imprimir </th>
    </tr>  
   <c:forEach var="listado" items="${listalab}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td> 
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy HH:mm'/></td> 
       <td><c:out value="${listado.expedido}"/></td>
       <td><c:out value="${listado.nombre}"/></td>     
       <td><fmt:formatDate value="${listado.fechae}" pattern='dd/MM/yyyy HH:mm'/></td> 
      <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/PedirLaboratorio.do"/>'>
       <td><div class="imprimir"><a href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();">Pedido</a></div>
         <input type="hidden" name="id_paciente"    value=<c:out value="${listado.id_paciente}"/> >   
         <input type="hidden" name='id_pedido'      value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'     value='<c:out value="${listado.id_persona}"/>'>
         <input type="hidden" name="id_historial"   value=<c:out value="${listado.id_historial}"/> >         
         <input type="hidden" name="expedido"       value=<c:out value="${listado.expedido}"/> > 
  	 <input type="hidden" name="accion"         value='adicion' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>   
     <form name=formaImg<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td><div class="imprimir"><a href="javascript:document.formaImg<c:out value="${contador.count}"/>.submit();">Resultado</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listado.id_historial}"/>'> 
         <input type="hidden" name='cod_esta'     value='<c:out value="${listado.cod_esta}"/>' >
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionpred'   value='pred1'>
         <input type="hidden" name='accionl'      value='general'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>
    
   </c:forEach>
</table>

<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> LABORATORIO </th>
    <th> INDICACIONES </th>    
    <th> RESULTADO </th>        
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.laboratorio}"/></td>    
       <td><c:out value="${lista.tipoconsulta}"/></td>         
       <td> <c:out value = "${lista.resultado}" escapeXml="False"/></td>           
   </c:forEach>
</table>
