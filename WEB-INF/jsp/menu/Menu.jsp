<%@ include file="../SuperiorMenu.jsp" %>
            <div class="panel-title" >
                <h4  class="text-center" contenteditable="true" ><font class="btn btn-default btn-lg"> Menu Principal</font></h4>
			</div>
            <div class="panel-group" id="accordion">
                <c:forEach var="categoria" items="${listaCategorias}" varStatus="contador">
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<c:out value="${categoria.categoria}"/>">
                                <i class="fa fa-cogs"></i>
                                <c:out value="${categoria.categoria}"/>
                            </a>
                        </h4>
                    </div>
                    <div id="collapse<c:out value="${categoria.categoria}"/>" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped table-hover table-condensed table-responsive">
                                <c:forEach var="enlaces" items="${categoria.enlaces}">
                                <tr bgcolor=#d9e4fa>
                                    <td>
                                        <a style="font-size:9pt" href="<c:url value="${enlaces.ruta}"/>" target="cuerpo"><i class="fa fa-cog"></i> <c:out value="${enlaces.enlace}"/></a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
                </c:forEach>                                
            </div>
<%@ include file="../Inferior.jsp" %>
