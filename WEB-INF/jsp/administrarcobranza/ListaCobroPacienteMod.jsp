<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
             
 <form name=formaEco method=post action='<c:url value="/ListarRecibos.do"/>'>
      <div class="volver"><a href="javascript:document.formaEco.submit();">Volver al Informe</a></div>
      <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
      <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
      <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
     
 </form>
 
<table class="formulario">
  <tr>
      <th colspan="3">MODIFICAR COBROS DEL PACIENTE</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%"> 
          <tr>    
            <td class="etiqueta">Nombres Completo</td>    
            <td class="etiqueta">::</td>
            <td><c:out value = "${datos.nombres}"/></td>
          </tr> 
          <tr>    
            <td class="etiqueta">No Documento</td>    
            <td class="etiqueta">::</td>	      
            <td><c:out value = "${nit}"/></td>
          </tr> 
          <tr>    
            <td class="etiqueta">Monto a Cancelar</td>    
            <td class="etiqueta">::</td>	      
            <td style="font-size:12pt"><c:out value = "${datos.precio_total}"/></td>
          </tr>
        </td>
       </tr> 
      </table>
       
 <table class="tabla">
    <tr>
        <th> No </th>
        <th> Detalle </th>
        <th> Indicacion </th>
        <th> Precio </th>
        <th> Eliminar </th>
     </tr> 
      <c:forEach var="estado" items="${listarcobros}" varStatus="contador">
         <!-- 1********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- 2********** Fin  efecto ************ -->
           <td><c:out value="${contador.count}"/></td>
           <td><c:out value="${estado.costo}"/></td>  
           <td><c:out value="${estado.indicacion}"/></td>  
           <td><c:out value="${estado.entrada}"/></td>   
           <c:if test="${estado.id_rubro != id_rubro}">    
               <td style="size:12pt; color:red">Otro Pago</td>   
           </c:if>      
           <c:if test="${estado.id_rubro == id_rubro}">     
         <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
             <input type="hidden" name="accion"       value='eliminar' >
             <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>' >
             <input type="hidden" name="id_detalle"      value='<c:out value="${estado.id_detalle}"/>' > 
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
             <input type="hidden" name="id_costo"        value='<c:out value="${estado.id_costo}"/>' >  
             <input type="hidden" name="salida"          value='<c:out value="${estado.costo}"/>' > 
             <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name="expedido"        value=<c:out value="${estado.costo_unit}"/> > 
             <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
             <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
             <input type="hidden" name='cantidad'        value='<c:out value="${cantidad}"/>'>
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
             <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
             <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
             <input type="hidden" name='accioncob'       value='<c:out value="${accioncob}"/>'>
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="sweco"           value='<c:out value="${sweco}"/>' >
             <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
           </td>
         </form></c:if>      
       </c:forEach>
 </table>       
 </td>
    <td width="50%" valign="top">
     <form name=formal action="<c:url value="/ListaCobrarPaciente.do"/>" method="POST">        
         <table >
           <tr> <td class="etiqueta">Rubro de Cobro <font color='red'>(*)</font> </td>
                <td class="etiqueta">::</td>	      
                <td> <SELECT NAME="id_rubro" onchange="javascript:document.formal.submit();">
                  <option value="0">-- seleccione --
                  <c:forEach var="estado" items="${listarRubros}">
                     <OPTION value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>> 
                         <c:out value="${estado.rubro}"/>
                     </option>
                  </c:forEach>
             </SELECT> </td> </tr>    
             <c:if test="${id_rubro == '6'}">     
                <tr> <td class="etiqueta">Laboratorios </td>
                <td class="etiqueta">::</td>	      
                <td> <SELECT NAME="id_laboratorio" onchange="javascript:document.formal.submit();">
                  <option value="0">-- seleccione --
                  <c:forEach var="listalab" items="${listarLabo1}">
                     <OPTION value="<c:out value="${listalab.id_laboratorio}"/>" <c:if test="${listalab.id_laboratorio == id_laboratorio}">selected</c:if>> 
                         <c:out value="${listalab.laboratorio}"/>
                     </option>
                  </c:forEach>
             </c:if>     
         </table>
          <input type="hidden" name="accion"       value='Continua'>
          <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
          <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
          <input type="hidden" name='accioncob'       value='<c:out value="${accioncob}"/>'>
          <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
          <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name="sweco"           value='<c:out value="${sweco}"/>' >
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
     </form>     
<table class="tabla">
   <tr>
        <th> No </th>
        <th> Detalle </th>
        <th> Precio </th>
        <th> Indicacion </th>
        <th> Cobrar </th>
    </tr>  
   <c:forEach var="estadoc" items="${listarCostos}" varStatus="contador">
     <!-- 3********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- 4********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${estadoc.costo}"/></td>
   <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>  
           <td><input type="text" name="cantidad" value="<fmt:formatNumber value="${estadoc.costo_unit}" groupingUsed="false" maxFractionDigits="0"/>" size=5 maxlength=5 onblur='validar(cantidad,"9")'/></td>          
           <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>  
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	  <input type="hidden" name="accion"          value='adicion' >
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
          <input type="hidden" name='id_costo'        value='<c:out value="${estadoc.id_costo}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>
          <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
          <input type="hidden" name='cantidad'        value='<c:out value="${cantidad}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
          <input type="hidden" name='accioncob'       value='<c:out value="${accioncob}"/>'>
          <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
          <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name="sweco"          value='<c:out value="${sweco}"/>' >
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >  
       </td>
     </form>
   </c:forEach>
</table>
    </td>
  </tr>
</table>