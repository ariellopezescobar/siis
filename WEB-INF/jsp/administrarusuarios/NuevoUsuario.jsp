<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarUsuarios.do'>Volver</a></div>

<form name="adicionacat" method="POST">
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="3" bgcolor="#F2F2F2"><center>INTRODUZCA LOS DATOS USUARIO</center></th>
    </tr>
     <tr>
      <td align="right" bgcolor="#F2F2F2"> Persona  </td>	      
      <td>
        <SELECT NAME="id_persona">
	  <option value="0">-- seleccione --
	    <c:forEach var="emp" items="${listarPersonas}">
	      <option value="<c:out value="${emp.id_persona}"/>" <c:if test="${emp.id_persona == buscarusuario.id_persona}"> selected </c:if>>
                <c:out value="${emp.cod_esta}"/>__<c:out value="${emp.nombres}"/>__<c:out value="${emp.id_persona}"/>
	      </option>
	    </c:forEach>
        </SELECT>
      </td>
    </tr>
    <c:if test="${sw != 1}">
     
    </c:if>    
       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Usuario  </td>
      <td><input type="text" name="apodo" size="20" maxlength="50" value="<c:out value="${buscarusuario.apodo}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Clave(PIN)  </td>
      <td><input type="text" name="clave" size="20" maxlength="50" value="<c:out value="${buscarusuario.clave}"/>"></td>      
    </tr>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Recordatorio  </td>
      <td><input type="text" name="recordatorio" size="20" maxlength="50" value="<c:out value="${buscarusuario.recordatorio}"/>"></td>      
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
  </table>
  </center>   
  <center>
    <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarUsuario.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_usuario' value='<c:out value="${id_usuario}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_usuario' value='<c:out value="${buscarusuario.id_usuario}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
 