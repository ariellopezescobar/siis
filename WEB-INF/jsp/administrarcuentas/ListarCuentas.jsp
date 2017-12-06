<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Cuentas</div>
<br>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoCuenta.do"/>'>
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
    <th> CUENTA </th>
    <th> CODIGO </th>    
    <th> ESTADO </th>            
    <th> MODIFICAR </th>
    <th> ELIMINAR </th> 
    <th> LIBRO MAYOR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarCuentas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.cuenta}"/></td>      
       <td><c:out value="${lista.codigo}"/></td>    
       <td><c:out value="${lista.id_estado}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCuenta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_cuenta" value=<c:out value="${lista.id_cuenta}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCuenta.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuenta" value=<c:out value="${lista.id_cuenta}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     <form name=formaEx<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCuenta.do"/>'>
       <td>     
         <div class="agregar"><a href="javascript:document.formaEx<c:out value="${contador.count}"/>.submit();">LibroMayor</a></div>
         <input type="hidden" name="id_cuenta" value=<c:out value="${lista.id_cuenta}"/> >
         <input type="hidden" name="accion" value='LibroMayor' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
   </c:forEach>
</table>