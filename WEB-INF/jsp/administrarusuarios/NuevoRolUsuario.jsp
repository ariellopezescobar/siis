<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarRolUsuarios.do?id_usuario=<c:out value="${id_usuario}"/>'>Volver</a></div>

<form name="adicionarusu" method="POST">
 <center>   
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <c:if test="${accion == 'Modificar'}">
          <th colspan="3" style="font-size:15pt" bgcolor="#F2F2F2"><center>Modificando Roles de Usuarios</center></th>
        </c:if>
        <c:if test="${accion == 'Adicionar'}">
            <th colspan="3" style="font-size:15pt"  bgcolor="#F2F2F2"><center>Agregando Roles a Usuarios</center></th>
        </c:if>
    </tr>
    <c:if test="${sw != 1}">
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Rol del usuario  </td>      
        <td>
          <SELECT NAME="id_rol">
	    <option value="0">-- seleccione --
	      <c:forEach var="lrol" items="${listaRoles}">
	        <option value="<c:out value="${lrol.id_rol}"/>" <c:if test="${lrol.id_rol == id_rol}"> selected </c:if>>
                  <c:out value="${lrol.rol}"/>
	        </option>
	      </c:forEach>
          </SELECT>
        </td>
      </tr>	
    </c:if>   
    	  
    <tr>
      <td align="right" bgcolor="#F2F2F2">Fecha de expiraci&oacute;n </td>
      <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>
          <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>
          <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
      </td>	                 
    </tr>    
    <c:if test="${sw == 1}">
      <tr>
        <td class="etiqueta">Estado  </td>
        <td>
          <c:if test="${id_estado == 'A'}">
            <input type=checkbox name="id_estado" value="A" <c:if test="${id_estado == 'A'}">checked</c:if>>
            Activo
          </c:if> 
          <c:if test="${id_estado == 'B'}">
            <input type=checkbox name="id_estado" value="A" <c:if test="${id_estado == 'A'}">checked</c:if>>
            Bloqueado
          </c:if> 
        </td>     
      </tr>
    </c:if>     
  </table>
  </center>
  <center>
    <input type="submit"  class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionarusu.accion1.value='Guardar';
								      document.adicionarusu.action='<c:url value="/ConfirmarRolUsuario.do"/>'">
  </center>
  <input type="hidden" name='accion1' value=''>
  <input type="hidden" name='id_usuario' value='<c:out value="${id_usuario}"/>'>    
  <input type="hidden" name='id_rol' value='<c:out value="${id_rol}"/>'>    
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
  <input type="hidden" name='id_usuario' value='<c:out value="${buscarRol.id_usuario}"/>'>
  <input type="hidden" name='id_rol' value='<c:out value="${buscarRol.id_rol}"/>'>
  <input type="hidden" name='recargado' value='Si'>
</form>
