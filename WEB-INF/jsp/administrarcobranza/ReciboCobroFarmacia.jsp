<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

RECIBO DE INGRESOS<br>
(Fondo Rotatorio de Medicamentos)
<table border=0>
    <tr>
       <td ></td>
       <td><c:out value = "${datos.num_cladoc}"/></td>          
    </tr> 
    <tr>    
       <td >Nombre :</td>    
       <td><c:out value = "${datos.nombres}"/></td>
    </tr>
 </table>


 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th> CANT. </th>
    <th> UNID. </th>
    <th> DETALLE </th>
    <th> PRECIO UNIT </th>
    <th> IMPORTE </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
       <tr>
       <td><c:out value="${listado.salida}"/></td>             
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>                           
       </tr>
   </c:forEach>
   <tr>    
        <td colspan="4">TOTAL</td>    
        <td><c:out value = "${datos.precio_total}"/></td>
   </tr>  
</table>
 
