<%@ include file="../SuperiorMenu.jsp" %>

<form action='<c:url value="/cambiarRol.do"/>' method="post">

<br>
<table class="table table-striped table-condensed table-responsive">
  <tr align="center">
    <td>Elegir Rol</td>
    <td>
      <SELECT NAME="id_rol" class="textoEncabezado">
        <c:forEach var="roles" items="${cliente.roles}">
          <OPTION value="<c:out value='${roles.id_rol}' />"><c:out value="${roles.rol}"/>
        </c:forEach>
      </SELECT>
    </td>
  </tr>
  <tr align="center">
    <td colspan='3'><input type="submit" value="Ingresar" /></td>
  </tr>
</table>

</form>

<%@ include file="../Inferior.jsp" %>