<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Lista de Pacientes  a Cobrar</div>
<br>
 
<table class="formulario">
  <tr>
    <th colspan="3">PACIENTES</th>
  </tr>
  
  <tr>   
    <td width="50%" valign="top">
    <div style="font-size:15pt"> Lista de Pacientes  que deben pagar</div>
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> NOMBRE PACIENTE </th>
    <th> NIT </th>    
    <th> MONTO A CANCELAR </th>    
    <th> ELIMINAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td><c:out value="${lista.precio_total}"/></td>      
     <form name=formaMA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarCobroRubro.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMA<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> > 
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
	 <input type="hidden" name="accion" value='Eliminar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     
   </c:forEach>
</table>

<div style="font-size:15pt"> Lista de Pacientes  que pagaron</div>
<br>

<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> NOMBRE PACIENTE </th>
    <th> NIT </th>    
    <th> MONTO A CANCELAR </th>    
    <th> ATENDER </th>
    </tr>  
   <c:forEach var="lista" items="${listaP}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td><c:out value="${lista.precio_total}"/></td>      
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarCobroRubro.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Atender</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >  
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     
   </c:forEach>
</table>
 </td>
    <td width="50%" valign="top">
 <div style="font-size:15pt"> Cobrar a Paciente</div>
<br>
<form name="actualizar" method=post action='<c:url value="/ListarCobroRubro.do"/>'>
<table class="formulario">
   <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
  <td width="100%" valign="top">
  <table class="formulario" width="100%">
    <tr>
        <td class="etiqueta">Nombre Completo</td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${datos.nombres}"/>"maxlength=20 onblur='validar(nombres,"A")'/></td>
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
     <input type="submit" class="siguiente" value='Agregar' onclick="document.actualizar.accion.value='Agregar'">
     <input type="submit" class="siguiente" value='Terminar' onclick="document.actualizar.accion.value='Terminar'">     
</center>
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
    <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
    <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
    <input type="hidden" name="accion"          value='Continua' >
    <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
</form>
    </td>
  </tr>

</table>
