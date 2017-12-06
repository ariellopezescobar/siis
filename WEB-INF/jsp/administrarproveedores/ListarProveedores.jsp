<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n Proveedores</div>
<br>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoProveedor.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>

<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> RAZON SOCIAL </th>
    <th> ENCARGADO </th>
    <th> DIRECCION </th>
    <th> NIT </th>
    <th> TELEFONOS </th>
    <th> MODIFICAR </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarProveedores}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.razonsocial}"/></td>      
       <td><c:out value="${lista.encargado}"/></td>   
       <td><c:out value="${lista.direccion}"/></td>   
       <td><c:out value="${lista.nit}"/></td>   
       <td><c:out value="${lista.fonos}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoProveedor.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_proveedor"      value=<c:out value="${lista.id_proveedor}"/> >
	 <input type="hidden" name="accion"            value='Modificar' >
	 <input type="hidden" name="sw"                value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarProveedor.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_proveedor"      value=<c:out value="${lista.id_proveedor}"/> >
         <input type="hidden" name="accion"            value='Eliminar' >
         <input type="hidden" name="sw1"               value='1' >
       </td>
     </form>
   </c:forEach>
</table>