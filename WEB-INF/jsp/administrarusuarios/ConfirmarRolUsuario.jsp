<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<divddd><a class="btn btn-success" href='ListarRolUsuarios.do?id_usuario=<c:out value="${id_usuario}"/>'>Volver</a></div>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarRolUsuario.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
       <c:if test="${accion == 'Modificar'}">
           <th colspan="3" style="font-size:15pt" bgcolor="#F2F2F2"><center> Modificando Roles de Usuarios</center></th> 
        </c:if>
        <c:if test="${accion == 'Adicionar'}">
            <th colspan="3" style="font-size:15pt" bgcolor="#F2F2F2"><center> Agregando Roles a Usuarios</center></th> 
        </c:if>
        <c:if test="${accion == 'Eliminar'}">
           <th colspan="3" style="font-size:15pt" bgcolor="#F2F2F2"><center> Eliminando Roles de Usuarios</center></th>  
        </c:if>
    </tr>
    <tr>
      <td  align="right" bgcolor="#F2F2F2"> Rol del usuario </td>
      <td><c:out value="${buscarRol.rol}"/> </td>
    </tr>  
    <tr>
      <td  align="right" bgcolor="#F2F2F2"> Fecha de expiraci&oacute;n </td>
      <td><c:out value="${fec_expiracion}"/></td>
    </tr>            
    <c:if test="${sw == 1}">       
      <c:if test="${id_estado == null}">       
        <tr>
          <td  align="right" bgcolor="#F2F2F2"> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${id_estado == 'A'}">       
        <tr>
          <td  align="right" bgcolor="#F2F2F2"> Estado </td>
          <td><c:out value="${id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>        
    <c:if test="${sw1 == 1}">       
      <tr>
        <td  align="right" bgcolor="#F2F2F2"> Estado </td>
        <td><c:out value="${urol.id_estado}"/></td>
      </tr>        
    </c:if>            
  </table>
  </center>
  <center>
     <input type=submit name='accion1' class="btn btn-primary btn-lg" value='Aceptar'>
  </center>
  <input type="hidden" name='id_rol' value='<c:out value="${buscarRol.id_rol}"/>'>
  <input type="hidden" name='id_usuario' value='<c:out value="${urol.id_usuario}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${id_estado}"/>'>
  <input type="hidden" name='dia' value='<c:out value="${dia}"/>'>
  <input type="hidden" name='mes' value='<c:out value="${mes}"/>'>
  <input type="hidden" name='anio' value='<c:out value="${anio}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



