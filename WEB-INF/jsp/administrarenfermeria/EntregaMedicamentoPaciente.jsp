<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaRet method=post action='<c:url value="/EntregaMedicamentoPaciente.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Finalizar</a></div>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >          
          <input type="hidden" name="accion"          value='terminar' >
</form>
<table class="formulario">
  <tr>
    <th colspan="3">RECETA DEL PACIENTE(<c:out value = "${sw}"/>)</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%">
  
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
 
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Monto a Cancelar</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.precio_total}"/></td>
      </tr>  
   </table>
       <table class="tabla">
  <tr>
    <th> MEDICAMENTO </th>
    <th> CANT </th>
    <th> COSTO </th>
    <th> TOTAL </th>
    <th> RECETAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>                           
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/EntregaMedicamentoPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name="salida" value=<c:out value="${listado.salida}"/> >         
         <input type="hidden" name="expedido" value=<c:out value="${listado.expedido}"/> >                  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'     value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name="accion" value='eliminar' >
	 <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
   </c:forEach>

</table>
       
    </td>

    <td width="50%" valign="top">
     <form name=forma action="<c:url value="/ListaNReceta.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Nombre Medicamento</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombremed,"A ")'/></td>            
            <td coslpan=3><input type="submit" value="Buscar"></td>
          </tr>  
         </table>
      <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >         
      <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
     </form>     

         <table class="tabla">
  <tr>
    <th> MEDICAMENTO </th>
    <th> FORMA</th>
    <th> CONCEN </th>    
    <th> STOCK </th>
    <th> PRECIO </th>    
    <th> CANT </th>
    <th> RECETAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentos}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 10pt"><b><c:out value="${listado.concentra}"/></b></td>      
       <td><c:out value="${listado.stock}"/></td>      
       <td style="font-size: 10pt"><b><c:out value="${listado.precio_venta}"/></b></td>             
     <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/EntregaMedicamentoPaciente.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'     value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
   </c:forEach>

</table>
    
  <table class="tabla">
  <tr>
    <th> MEDICAMENTO </th>
    <th> FORMA</th>
    <th> CONCEN </th>    
    <th> STOCK </th>
    <th> PRECIO </th>    
    <th> CANT </th>
    <th> RECETAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentosCot}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 10pt"><b><c:out value="${listado.concentra}"/></b></td>      
       <td><c:out value="${listado.stock}"/></td>      
       <td style="font-size: 10pt"><b><c:out value="${listado.precio_venta}"/></b></td>             
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/EntregaMedicamentoPaciente.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'     value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
   </c:forEach>

</table>

    </td>
  </tr>

</table>


