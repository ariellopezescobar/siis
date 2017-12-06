<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="adicionacat" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>Entregar Medicamentos a Paciente</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
  
     <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
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
         <td align="right" bgcolor="#F2F2F2">Numero de Clave de documento</td>    	      
         <td><c:out value = "${datos.num_cladoc}"/></td>
       </tr>   
   </table>
  </td>
  </tr>
   
</table>
 <center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA FARMACO </th>
    <th bgcolor="#F2F2F2"> CONCENTRACION </th>
    <th bgcolor="#F2F2F2"> CANTIDAD </th>
    <th bgcolor="#F2F2F2"> COSTO </th>
    <th bgcolor="#F2F2F2"> TOTAL </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
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
    <input type="submit" class="btn btn-primary btn-lg" value='Entregar' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ListarAtendidos.do"/>'">
  </center>
    <input  type="hidden" name='accion' value='Terminar'>
    <input type="hidden" name='id_pedido' value='<c:out value="${datos.id_pedido}"/>'>    
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
</form>
