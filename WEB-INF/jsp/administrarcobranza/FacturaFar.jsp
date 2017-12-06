<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="actualizar" method=post action='<c:url value="/CobrarFarmacia.do"/>'>

<table class="formulario">
  <tr>
    <th colspan="3" style="font-size:25pt">DATOS FACTURA FARMACIA</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
        <table class="formulario" width="100%">      
       <tr>
        <td class="etiqueta">Numero autorizacion</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${numauto}"/></td>            
      </tr> 
      <tr>
        <td class="etiqueta">Numero Factura</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${numfact}"/></td>            
      </tr>
      <tr>    
        <td class="etiqueta">Nombres Cliente</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres"  value='<c:out value="${nombres}"/>' size="40" maxlength="40" onblur='validar(nombres,"A9")' ></td>
      </tr>
      <tr>    
        <td class="etiqueta">N.I.T./C.I. Cliente</td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="ciu"  value='<c:out value="${carnet}"/>' size="20" maxlength="20" onblur='validar(ciu,"9")' ></td>
      </tr>
      <tr>
        <td class="etiqueta">Numero Clave de Documento</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${num_cladoc}"/></td>            
      </tr>  
      <tr>
        <td class="etiqueta"> Monto a Cobrar <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><input readonly type="text" name="precio" size="20" maxlength="15" onblur='validar(precio,"9")' value=<c:out value="${precio}"/> ></td>
     </tr> 
   </table>
  </td>
  </tr>
</table>
<center>
 <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA</th>
    <th> MEDICAMENTO </th>
    <th> Forma Far </th>
    <th> Concentra </th>
    <th> CANTIDAD </th>
    <th> COSTO </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${listado.medicamento}"/></td>
       <td><c:out value="${listado.forma_far}"/></td>
       <td><c:out value="${listado.concentra}"/></td>
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>                           
   </c:forEach>
</table>
 </center>
 <center>
    <input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/CobrarFarmacia.do"/>'">
  </center>
    <input type="hidden" name='accion'          value='Facturar'>
    <input type="hidden" name='id_pedido'       value='<c:out value="${datos.id_pedido}"/>'>  
    <input type="hidden" name='precio_total'    value='<c:out value="${datos.precio_total}"/>'>  
    <input type="hidden" name='nombres2'         value='<c:out value="${nombres}"/>'>  
    <input type="hidden" name='precio'          value='<c:out value="${datos.precio_total}"/>'> 
    <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
    <input type="hidden" name='nit'             value='<c:out value="${datos.nit}"/>'>  
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='ciu'             value='<c:out value="${num_cladoc}"/>'>
</form>
