<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionar" method="POST" action='<c:url value="/ListarFacturas.do"/>' >
    <table class="table table-striped table-bordered table-condensed table-responsive"> 
      <tr>
        <th colspan="3"><font size=4><center> Anular Facturas Recaudaciones </center></font></th>
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">Nombres </td>    
        <td><input type="text" name="nombres" value="<c:out value = "${datos.nombres}"/>" size="50" maxlength=50 onblur='validar(nombre,"A")' readonly/></td>
      </tr> 
      <tr>
        <td  align="right" bgcolor="#F2F2F2">Fecha Pedido </td>    
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 readonly/>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 readonly/>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 readonly />dd-mm-aaaa
        </td>	                 
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">No. Pedido</td>    
        <td><input type="text" name="nit" value="<c:out value = "${datos.nit}"/>" maxlength=15 size=15 readonly/></td>
      </tr>   
      <tr>
        <td  align="right" bgcolor="#F2F2F2">No. Documento</td>
        <td><input type="text" name="num_cladoc" value="<c:out value = "${datos.num_cladoc}"/>" maxlength=15 size=15 readonly/></td>            
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">No. Factura</td>    
        <td style="font-size:20pt;"><c:out value = "${id_factura}"/> </td>
      </tr>
      <tr>    
        <td  align="right" bgcolor="#F2F2F2">Nomto Total</td>    
        <td><input type="text" name="total" value="<c:out value = "${datos.precio_total}"/>" maxlength=15 size=15 readonly/></td>
      </tr>
   </table>
 <center>
   <c:if test="${id_estado == 'V'}">
      <input type="submit" name='boton' class="btn btn-primary btn-lg" value='Anular'>
      <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='id_factura' value='<c:out value="${id_factura}"/>'>
      <input type="hidden" name=accion value='Anular'>
   </c:if>  
   <c:if test="${id_estado != 'V'}">
      <input type="submit" name='boton' class="btn btn-primary btn-lg" value='Validar'>
      <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='id_factura' value='<c:out value="${id_factura}"/>'>
      <input type="hidden" name=accion value='Validar'>
   </c:if>
 </center> 
</form>


<center>
 <table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> ID_MEDICA</th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma <br>Farmacutica  </th>
    <th bgcolor="#F2F2F2"> Concentra  </th>
    <th bgcolor="#F2F2F2"> Entrada  </th>
    <th bgcolor="#F2F2F2"> Salida </th>
    <th bgcolor="#F2F2F2"> Ajuste  </th>
    <th bgcolor="#F2F2F2"> Precio <br> Costo  </th>
    <c:if test="${id_estado=='R'}">
      <th bgcolor="#F2F2F2"> TIPO  </th>
    </c:if>
    <c:if test="${id_estado == 'E'}">
        <th bgcolor="#F2F2F2"> Precio <br> Venta </th>
    </c:if>
    <th bgcolor="#F2F2F2"> TOTAL </th>
    <th bgcolor="#F2F2F2"> Modificar </th>
    </tr>  
   <c:forEach var="listado" items="${listarDet}" varStatus="contador">
   <form name=formaMo<c:out value="${contador.count}"/> method=post action='<c:url value="/BuscarPedidos.do"/>'>
     <tr style="font-size:9pt">
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