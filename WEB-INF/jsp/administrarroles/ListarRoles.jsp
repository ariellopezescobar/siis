<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
        
       <div class="page-header">
            <h1>Administraci&oacute;n de Roles</h1>
        </div>
        
        <div class="panel panel-default">            
            <div class="panel-body text-right">
                <div class="row" align="left">
                    <form name=forma method=post action='<c:url value="/NuevoRol.do"/>'>
                        <a href="javascript:document.forma.submit();" class="btn btn-primary">Nuevo</a>
                        <input type=hidden name=accion value='Adicionar'>                
                    </form>  
                </div>
                <div class="row">
                    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
                        <tr>
                          <th bgcolor="#F2F2F2"> NRO </th>
                          <th bgcolor="#F2F2F2"> Rol </th>
                          <th bgcolor="#F2F2F2"> Descripcion </th>    
                          <th bgcolor="#F2F2F2"> ESTADO </th>            
                          <th bgcolor="#F2F2F2"> MODIFICAR </th>
                          <th bgcolor="#F2F2F2"> ELIMINAR </th> 
                          </tr>  
                         <c:forEach var="lista" items="${listarRoles}" varStatus="contador">
                           <!-- ********** Esto es para el efecto ************ -->
                             <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
                           <!-- ********** Fin  efecto ************ -->
                             <td align="center"><c:out value="${contador.count}"/></td>
                             <td><c:out value="${lista.rol}"/></td>      
                             <td><c:out value="${lista.descripcion}"/></td>          
                             <td><c:out value="${lista.id_estado}"/></td>   
                           <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoRol.do"/>'>
                             <td>     
                               <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();" class="btn btn-primary">Modificar</a></div>
                               <input type="hidden" name="id_rol" value=<c:out value="${lista.id_rol}"/> >
                               <input type="hidden" name="accion" value='Modificar' >
                               <input type="hidden" name="sw" value='1' >
                             </td>
                           </form>
                           <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarRol.do"/>'>
                             <td>     
                               <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();" class="btn btn-danger"> Eliminar</a></div>
                               <input type="hidden" name="id_rol" value=<c:out value="${lista.id_rol}"/> >
                               <input type="hidden" name="accion" value='Eliminar' >
                               <input type="hidden" name="sw1" value='1' >
                             </td>
                           </form>
                         </c:forEach>
                      </table>
                </div>
            </div>
        </div>      
