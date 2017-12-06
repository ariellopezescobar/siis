<%@ include file="../SuperiorMenu.jsp" %>

<form action='<c:url value="/cambiarAlmacen.do"/>' method="post" target="_top">

<br>
<table align="center">
  <tr class="colh" align="center">
    <td>Elegir un Almac&eacute;n</td>
    <td>::</td>
    <td>
      <SELECT NAME="id_almacen" class="textoEncabezado">
        <c:forEach var="almacenes" items="${cliente.almacenes}">
          <OPTION value="<c:out value='${almacenes.id_almacen}' />"><c:out value="${almacenes.almacen}"/>
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