<%@ include file="../SuperiorMenu.jsp" %>
        <table class="table table-condensed ">
    
            <form name="formtest">
                <tr bgColor="#0E6EBC">
                    <td colspan="2" class="center-block">
                        <b>SISTEMA INTEGRADO DE INFORMACION EN SALUD (S.I.I.S.)</b>
                    </td> 
                    <td class="text-right"><b><c:out value="${cliente.establecimiento}"/></b></td>
                    <td colspan="3" class="text-right">
                        <b>v.7.03&nbsp;&nbsp;F.act.17.09.06</b><br><input type="button" class="btn btn-info btn-xs" value="Acerca de..." onClick="mostrarForm(this.form);">
                    </td>
                </tr>
            </form>
            <tr bgColor=#BDBDBD>
                <c:if test="${!empty cliente.rol}">
                <td><b><small>
                <c:out value="${cliente.nombres}"/> [<c:out value="${cliente.rol}"/>] 
                <c:if test="${cliente.id_consultorio==11 and cliente.id_farmacia>0}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <c:out value="${cliente.farmacia}"/> </c:if>
                <c:if test="${(cliente.id_consultorio!=11) }">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <c:out value="${cliente.consultorio}"/> </c:if></small></b>
                </c:if>
              </td>
              <td>
                <form name="forma" action='<c:url value="/cambiarRol.do"/>' method="post">
                  <c:if test="${fn:length(cliente.roles) > 1}">
                    Rol actual&nbsp;::&nbsp;
                    <select name="id_rol" class='comboRoles' onChange='javascript: document.forma.submit();'>
            -----------· · 
                    <c:forEach var="roles" items="${cliente.roles}">
                        <option value='<c:out value="${roles.id_rol}"/>' <c:if test="${cliente.id_rol == roles.id_rol}">selected</c:if> >
                          <c:out value="${roles.rol}"/>
                      </c:forEach>
                    </select>
                  </c:if>
                  <input type="hidden" name="encabezado" value="si">
                </form>

              </td>
              <td>
                <form name="forma1" action='<c:url value="/cambiarAlmacen.do"/>' method="post">
                  <c:if test="${fn:length(cliente.almacenes) > 1}">
                    Almac&eacute;n actual&nbsp;::&nbsp;
                    <select name="id_almacen" class='comboAlmacenes' onChange='javascript: document.forma1.submit();'>
                      <c:forEach var="almacenes" items="${cliente.almacenes}">
                        <option value='<c:out value="${almacenes.id_almacen}"/>' <c:if test="${cliente.id_almacen == almacenes.id_almacen}">selected</c:if> >
                          <c:out value="${almacenes.almacen}"/>
                      </c:forEach>
                    </select>
                  </c:if>
                </form>
              </td>
              <td>
              &nbsp;
              </td>
              <td class="text-right">
                <c:if test="${!empty cliente.rol}">
                  <a href='<c:url value="/logout.do" />' target="_top" class="btn btn-danger btn-xs">
                      Cerrar Sesi&oacute;n
                  </a>
                </c:if>
              </td>
            </tr>
        </table>

<%@ include file="../Inferior.jsp" %>