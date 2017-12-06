<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Eliminar Recibos Emitidos en Recaudaciones</div>
<br>

<form name="adicionar" method="POST" action='<c:url value="/ListarRecibos.do"/>' >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS DEL RECIBO QUE ELIMINARA </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${datos.nombres}"/>" size="50" maxlength=50 onblur='validar(nombre,"A")' readonly/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha Pedido<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 readonly/>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 readonly/>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 readonly />dd-mm-aaaa
        </td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">No. Pedido<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nit" value="<c:out value = "${datos.nit}"/>" maxlength=15 size=15 readonly/></td>
      </tr>   
      <tr>
        <td class="etiqueta">No. Documento<font color='red'>(*)</font></td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="num_cladoc" value="<c:out value = "${datos.num_cladoc}"/>" maxlength=15 size=15 readonly/></td>            
      </tr>
      <tr>    
        <td class="etiqueta">No. Factura<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="id_factura" value="<c:out value = "${datos.id_factura}"/>" maxlength=15 size=15 readonly/></td>            
      </tr>
      <tr>    
        <td class="etiqueta">Nomto Total<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="total" value="<c:out value = "${datos.precio_total}"/>" maxlength=15 size=15 readonly/></td>
      </tr>
   </table>
 <center>
  
      <input type="submit" name='boton' class="adicionar" value='Elminar'>
      <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='id_rubro' value='<c:out value="${id_rubro}"/>'>
      <input type="hidden" name='id_factura' value='<c:out value="${id_factura}"/>'>
      <input type="hidden" name=accion value='Eliminar'>
 
 </center> 
</form>


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
 
       </form>               
   </c:forEach>
     
</table>

</center> 