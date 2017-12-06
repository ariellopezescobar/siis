<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administrar Recibos y Cobros Recudaciones</div>
<br>

<form name="adicionar" method="POST" action='<c:url value="/BuscarPedidos.do"/>' >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS DEL PEDIDO </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" maxlength=50 onblur='validar(nombre,"A")'/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha Pedido<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur='validarNota(dia,1, 31)'/>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur='validarNota(mes, 1, 12)'/>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur='validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
        </td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">No. Pedido<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nit" value="<c:out value = "${nit}"/>" maxlength=15 size=15/></td>
      </tr>   
      <tr>
        <td class="etiqueta">No. Documento<font color='red'>(*)</font></td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=15 size=15/></td>            
      </tr>
      <tr>    
        <td class="etiqueta">No. Factura<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="id_factura" value="<c:out value = "${id_factura}"/>" maxlength=15 size=15/></td>
      </tr>
     
      <tr>    
        <td class="etiqueta">Nomto Total<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="total" value="<c:out value = "${total}"/>" maxlength=15 size=15 readonly/></td>
      </tr>
     
    </table>
<center>
  <input type="submit" name='boton' class="adicionar" value='Cambiar'>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion value='Cambiar'>
  <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
</form>


<table class="tabla" border="1"><tr>
<td><form name=formaC4 method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
     <td width="10%" valign="top">&nbsp;</td>
     <td colspan="2" width="10%">
      <div class="agregar"><a href="javascript:document.formaC4.submit();">Aumentar</a></div></td>
        <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>  
                 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>  
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if> 
                 <c:if test="${expedido=='R'}">
                     <input type="hidden" name="accion"          value='Recepcion' >
                 </c:if> 
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='1' >
     </form></td><td width="80%" valign="top">&nbsp;</td></tr>
  </table>
  
<center>
 <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> ID_MEDICA</th>
    <th> MEDICAMENTO </th>
    <th> Forma <br>Farmacutica  </th>
    <th> Concentra  </th>
    <th> Entrada  </th>
    <th> Salida </th>
    <th> Ajuste  </th>
    <th> Precio <br> Costo  </th>
    <c:if test="${id_estado=='R'}">
      <th> TIPO  </th>
    </c:if>
    <c:if test="${id_estado == 'E'}">
        <th> Precio <br> Venta </th>
    </c:if>
    <th> TOTAL </th>
    <th> Modificar </th>
    </tr>  
   <c:forEach var="listado" items="${listarDet}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
   <form name=formaMo<c:out value="${contador.count}"/> method=post action='<c:url value="/BuscarPedidos.do"/>'>
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${listado.costo}"/></td>
       <td><input type="text" name="id_medicamento" value="<c:out value="${listado.costo}" />" maxlength=4 size=4 onblur='validar(entrada,"9")' disabled/></td>                         
       <td style="color:blue"><c:out value="${listado.costo}"/></td>
       <td><c:out value="${listado.costo}"/></td>
       <td><c:out value="${listado.costo}"/></td>
       <c:if test="${id_estado!='R'}">
           <td><c:out value="${listado.costo_unit}"/></td>
       </c:if>
       <c:if test="${id_estado=='R'}">
           <c:if test="${listado.expedido=='S'}">
              <td><SELECT NAME="expedido" >
                    <option value="S" > Sumi(SPS) </option>
                    <option value="P" > Programas </option>
                    <option value="V" > Venta </option>
              </SELECT></td>
           </c:if>
           <c:if test="${listado.expedido=='V'}">
              <td><SELECT NAME="expedido" >
                    <option value="V" > Venta </option>
                    <option value="S" > Sumi(SPS) </option>
                    <option value="P" > Programas </option>
              </SELECT></td>
           </c:if>
           <c:if test="${listado.expedido=='P'}">
              <td><SELECT NAME="expedido" >
                    <option value="P" > Programas </option>
                    <option value="V" > Venta </option>
                    <option value="S" > Sumi(SPS) </option>
              </SELECT></td>
           </c:if>
       </c:if>
       <c:if test="${id_estado=='E'}">
           <td><input type="text" name="precio" value="<c:out value="${listado.precio_venta}"/>" maxlength=6 size=6 onblur='validar(precio,"9")'/></td>
       </c:if>
       <c:if test="${id_estado=='E'}">
           <td style="font-size:11pt" align="right"><c:out value="${listado.precio_total}"/></td>     
       </c:if>
       <c:if test="${id_estado=='R'}">
           <td style="font-size:11pt" align="right"><fmt:formatNumber value="${listado.entrada*listado.costo_unit+listado.ajuste*listado.costo_unit}" maxFractionDigits="2"/></td>     
       </c:if>
       <c:if test="${id_estado=='S' or id_estado=='P'}">
           <td style="font-size:11pt" align="right"><fmt:formatNumber value="${listado.salida*listado.costo_unit}" maxFractionDigits="2"/></td>     
       </c:if>
       
          <td align="center">     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMo<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
             <input type="hidden" name="id_pedido"     value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name="nombres"       value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="nit"           value='<c:out value="${nit}"/>' >
             <input type="hidden" name="total"         value='<c:out value="${total}"/>' >
             <input type="hidden" name="expedido"      value='<c:out value="${id_estado}"/>' >
             <input type="hidden" name="id_estado"     value='<c:out value="${id_estado}"/>' >
             <input type="hidden" name="num_cladoc"    value='<c:out value="${num_cladoc}"/>' >
             <input type="hidden" name="dia"           value='<c:out value="${dia}"/>' >
             <input type="hidden" name="mes"           value='<c:out value="${mes}"/>' >
             <input type="hidden" name="anio"          value='<c:out value="${anio}"/>' >
             <input type="hidden" name="boton"         value='Arreglar' >
             <input type="hidden" name="sw1"           value='1' >
          </td>
       </form>               
   </c:forEach>
     
     <tr>
        <td colspan="4" align="center">Se modifico el registro... <c:out value="${id_detalle}"/></td>
        <c:if test="${id_estado=='E'}">
           <td colspan="4" align="right" style="font-size:10pt; color:blue">Total Pagado</td>    
       </c:if>
       <c:if test="${id_estado!='E'}">
           <td colspan="4" align="right" style="font-size:10pt; color:blue">Total Pagado</td>    
       </c:if>
        <td align="right" style="font-size:12pt; color:blue"><c:out value="${total}"/></td>
     </tr>
</table>

</center> 