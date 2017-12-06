<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarRoles.do'>Volver</a></div>

<form name="adicionacat" method="POST">

  <table class="table">
    <tr>
        <c:if test="${accion == 'Modificar'}">
                <th colspan="3" class="text-center">MODIFICANDO ROL</th>
            </div>  
        </c:if>
        <c:if test="${accion == 'Adicionar'}">
          <div class="page-header">
                <th colspan="3" class="text-center">AGREGANDO ROL</th>
            </div>  
        </c:if>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2">Titulo del Rol  </td>
      <td><input type="text" name="rol" maxlength="20" size="20" value="<c:out value="${buscarrol.rol}"/>" class="form-control"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Descripcion  </td>
      <td><input type="text" name="descripcion" size="50" maxlength="50" value="<c:out value="${buscarrol.descripcion}"/>" class="form-control"></td>
    </tr>       
    <c:if test="${sw == 1}">
      <tr>
        <td align="right" bgcolor="#F2F2F2">Estado  </td>
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
		<tr>
			<th colspan="3" class="text-center">
				<input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarRol.do"/>';">
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_rol' value='<c:out value="${id_rol}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_rol' value='<c:out value="${buscarrol.id_rol}"/>'>
    <input type="hidden" name='recargado' value='Si'>
			</th>
		</tr>
	</table>
  
    
</form>
