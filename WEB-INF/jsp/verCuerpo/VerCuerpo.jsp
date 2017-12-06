<%@ include file="../Superior.jsp"%>

<div class="container-fluid" bgcolor="#EAEAE6">
    <div class="row ">
        <table class="table table-striped table-bordered table-hover table-condensed table-responsive" border="4">
            <tr>
              <c:forEach var="lista" items="${lNoticias}" varStatus="contador">
                <td valign="top" height="100%">
                <table class="tabla" width="100%" height="100%">
                  <tr>
                      <th class="text-center"><c:out value="${lista.noticia}"/></th>
                  </tr>
                  <tr>
                    <td class="etiqueta">
                      <b><c:out value="${lista.tipo_aviso}"/></b><br>
                      <i>
                        <img src="./imagenes/tableros/noticias.gif" align=right bordr=0/>
                        <c:out value="${lista.mensaje}" escapeXml="False"/>
                      </i>
                      <br>Enviado: <fmt:formatDate value="${lista.fec_registro}" pattern="dd/MM/yyyy HH:mm"/>
                    </td>
                  </tr>
                  <tr>
                      <th class="text-center"><c:out value="${lista.correo}"/></th>
                  </tr>
                </table>
                </td>
                <c:if test="${contador.count % 4  == '0'}" >
                  </tr>
                  <tr>
                </c:if>
              </c:forEach>
            </tr>
        </table>
    </div>
</div>
<%@ include file="../Inferior.jsp"%>