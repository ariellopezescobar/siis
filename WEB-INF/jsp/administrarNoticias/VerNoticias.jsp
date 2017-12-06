<%@ include file="../Superior.jsp"%>

<table>
  <tr>
    <form name="forma" method="post" action='<c:url value="/nuevaNoticia.do"/>'>
    <td>
      <div class="agregar">
       <a class="btn btn-success btn-xs" href="javascript:document.forma.submit();">Nueva Noticia</a>
    </div></td>
    <input type="hidden" name="boton" value="Adicioanr">
    </form>
  </tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <c:forEach var="lista" items="${lNoticias}" varStatus="contador">
      <td valign="top" height="100%">
      <table class="tabla" width="100%" height="100%">
        <tr>
          <th colspan="2"><c:out value="${lista.noticia}"/></th>
        </tr>
        <tr>
          <td class="etiqueta" colspan="2">
            <b><c:out value="${lista.tipo_aviso}"/></b><br>
            <i>
              <img src="./imagenes/tableros/noticias.gif" align=right bordr=0/>
              <c:out value="${lista.mensaje}" escapeXml="False"/>
            </i>
            <br>Enviado:
            <fmt:formatDate value="${lista.fec_registro}" pattern="dd/MM/yyyy HH:mm"/>
          </td>
        </tr>
        <c:if test="${lista.ult_usuario == id_usuario}">
        <tr>
          <form name="forma<c:out value="${contador.count}"/>" method="post" action='<c:url value="/nuevaNoticia.do"/>'>
            <td class="etiqueta" align="right">
                <a class="btn btn-warning" href="javascript:document.forma<c:out value="${contador.count}"/>.submit();"> Modificar</a>
	    </td>
	    <input type="hidden" name="id_tablero" value="<c:out value="${lista.id_tablero}"/>">
	    <input type="hidden" name="boton" value="Modificar">
	  </form>
          <form name="formaE<c:out value="${contador.count}"/>" method="post" action='<c:url value="/eliminarNoticia.do"/>'>
	    <td class="etiqueta" align="right">
                <a class="btn btn-danger"  href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a>
            </td>
	    <input type="hidden" name="id_tablero" value="<c:out value="${lista.id_tablero}"/>">
	  </form>
          </tr>
        </c:if>
        <tr>
          <th><c:out value="${lista.correo}"/></th>
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

<%@ include file="../Inferior.jsp" %>