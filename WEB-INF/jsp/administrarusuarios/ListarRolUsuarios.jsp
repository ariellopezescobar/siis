<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Roles de Usuarios</div>
<br>
<table>
  <tr>
    <form name=forma method=post action='<c:url value="/NuevoRolUsuario.do?id_usuario=${id_usuario}"/>'>
	<td>
	  <div>
	    <a class="btn btn-warning" class="volver" href='ListarUsuarios.do'>Volver &nbsp;</a>
	  </div>
	</td>
	<td>
	  <div>
             <a class="btn btn-success" href="javascript:document.forma.submit();">Nuevo</a>
	  </div>
          <input type=hidden name=accion value='Adicionar'></td>
        </td>
    </form>
  </tr>
</table>

<table class="table table-bordered table-hover table-condensed table-responsive">
  <tr>
     <th colspan="5" style="font-size:14pt"><c:out value="${nombreusr}"/> </th>
  </tr>
  <tr>
    <th> NRO </th>
    <th> ROL </th>
    <th> ESTADO </th>    
    <th> MODIFICAR </th>
    <th> ELIMINAR </th>
    <input type="hidden" name="id_usuario" value=<c:out value="${id_usuario}"/> >
  </tr>  
  <c:forEach var="lista" items="${listaUsrRoles}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value = "${lista.rol}"/></td>		
       <td><c:out value = "${lista.id_estado}"/></td>			
       <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoRolUsuario.do"/>'>
         <td>     
           <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
 	   <input type="hidden" name="id_usuario" value=<c:out value="${lista.id_usuario}"/> >
	   <input type="hidden" name="id_rol" value=<c:out value="${lista.id_rol}"/> >
	   <input type="hidden" name="accion" value='Modificar' >
	   <input type="hidden" name="sw" value='1' >
         </td>
       </form>
       <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarRolUsuario.do"/>'>
         <td>     
           <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
           <input type="hidden" name="id_usuario" value=<c:out value="${lista.id_usuario}"/> >
	   <input type="hidden" name="id_rol" value=<c:out value="${lista.id_rol}"/> >
           <input type="hidden" name="accion" value='Eliminar' >
           <input type="hidden" name="sw1" value='1' >
         </td>
       </form>
   </c:forEach>
</table>