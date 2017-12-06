<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <div style="font-size:15pt"> Cobrar a Pacienteef</div>
<br>

<form name="adicionacat" method="POST">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
      <tr>    
        <td align="right" bgcolor="#F2F2F2" >Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nit</td>    	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>  
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Costo Total</td>          
        <td><c:out value = "${datos.precio_total}"/></td>
       </tr>  
       <tr>
          <td align="right" bgcolor="#F2F2F2"> Numero de Documento  </td>
          <td><input type="text" name="num_recibo" size="20" maxlength="50" value="<c:out value = "${num_cladoc}"/>" onblur='validar(num_recibo,"9")'></td>
       </tr> 
   </table>
  </td>
  </tr>
</table>
<center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> FECHA </th>
     <th> Por </th>
    <th> MEDICAMENTO </th>
    <th> CANTIDAD </th>
    <th> COSTO </th>
    <th> TOTAL </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:blue"><c:out value="${listado.id_persona}"/></td> 
       <td><c:out value="${listado.medicamento}"/></td>
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>  
     </tr>                     
   </c:forEach>
</table>
 </center>
 <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/CobrarFarmacia.do"/>'">
  </center>
    <input type="hidden" name='accion' value='Terminar'>
    <input type="hidden" name='id_pedido'       value='<c:out value="${datos.id_pedido}"/>'>  
    <input type="hidden" name='precio_total'    value='<c:out value="${datos.precio_total}"/>'>  
    <input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>  
    <input type="hidden" name='precio'          value='<c:out value="${datos.precio_total}"/>'>  
    <input type="hidden" name='nit'             value='<c:out value="${datos.nit}"/>'>  
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='ciu'             value='<c:out value="${num_cladoc}"/>'>
</form>
