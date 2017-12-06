<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

	<form name=formaBN method=post action='<c:url value="/ListarUsuarios.do"/>'>
		<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
                    <tr>
                        <td>  
                        <fieldset>
                        <table class="table">
                          <tr>
                            <td class="text-right">Dato Usuario</td>
                            <td ><input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
                            <td coslpan=3><input class="btn btn-success" type="submit" name=boton value="BuscarE"></td>
                          </tr> 
                        </table>
                        </fieldset>
                        </td>
                    </tr>
		</table>
	</form>
 
	<table >  
		<tr style="font-size:9pt">
		 <td>     
                     <table class="table table-condensed">
                            <tr>
                                <form name=forma method=post action='<c:url value="/NuevoUsuario.do"/>'>
                                <td colspan="2" class="text-left">
                                <div class="agregar">
                                 <a href="javascript:document.forma.submit();" class="btn btn-success" >Nuevo</a> 
                          <input type=hidden name=accion value='Adicionar'>
                                </div></td>
                       </form>
                            <tr>
               </table>
		 </td>  
		<td>
                    <table class="table table-bordered table-condensed">
                     <form name=formaBN method=post action='<c:url value="/ListarUsuarios.do"/>'>
                         <tr class="text-center">
                            <td><input type="submit" name=boton value="Primero" class="btn btn-primary"></td>
                            <td><input type="submit" name=boton value="Anterior" class="btn btn-primary"></td>
                            <td><input type="submit" name=boton value="Siguiente" class="btn btn-primary"></td>
                            <td><input type="submit" name=boton value="Ultimo" class="btn btn-primary"></td>
                            <td><c:out value="${pagina}"/>&nbsp;&nbsp;<font color="blue">de</font>&nbsp;&nbsp;<c:out value="${total}"/></td>
                        </tr> 
                        <input type=hidden name='pagina' value='<c:out value="${pagina}"/>' >
                    </form>
                    </table>
		</td>
		</tr>   
	</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
  <tr style="font-size:9pt">
    <th> Nro </th>  
    <th> Id Usua</th>  
    <th> ESTABLECMIENTO</th>
    <th> NOMBRE USUARIO </th>    
    <th> CONSULTORIO </th>  
    <th> USUARIO </th> 
    <th> CLAVE </th> 
    <th> Modificar </th>
    <th> Eliminar </th> 
    </tr>  
   <c:forEach var="lista" items="${listarUsuarios}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
     <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
      <td class="text-center"><c:out value="${contador.count}"/></td>
          <td class="text-center"><b><c:out value="${lista.id_persona}"/></b></td>
      <td style="color:blue"><c:out value="${lista.cod_esta}"/>__<c:out value="${fn:substring(lista.ubicacion_organica,0,25)}"/></td>
      <form name=formaR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarRolUsuarios.do"/>'>
         <td>     
           <a href="javascript:document.formaR<c:out value="${contador.count}"/>.submit();"><c:out value = "${lista.nombres}"/>_<c:if test="${lista.id_farmacia>0}"><c:out value = "${lista.id_farmacia}"/></c:if></a>
	   <input type="hidden" name="id_usuario" value=<c:out value="${lista.id_usuario}"/> >
           <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >
         </td>
       </form>
       <c:if test="${lista.urgencias!=1}">
           <td><c:out value="${fn:substring(lista.consultorio,0,20)}"/></td>    
       </c:if>
       <c:if test="${lista.urgencias==1}">
           <td style="color:blue"><c:out value="${lista.consultorio}"/></td>    
       </c:if>     
      <td><c:out value="${lista.apodo}"/></td>  
      <td><c:out value="${lista.clave}"/></td>  
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoUsuario.do"/>'>
       <td>     
        <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();" class="btn btn-warning btn-xs">Modificar</a></div>
  	 <input type="hidden" name="id_usuario" value=<c:out value="${lista.id_usuario}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarUsuario.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();" class="btn btn-danger btn-xs"> Eliminar</a></div>
         <input type="hidden" name="id_usuario" value=<c:out value="${lista.id_usuario}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>