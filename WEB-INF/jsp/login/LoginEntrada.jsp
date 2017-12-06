<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date"/>
<body onload="inicio(document.forma.apodo<fmt:formatDate value="${now}" pattern="yyyyMMddhhmmss" />);">

	<div class="page-header">
        <h3 class="text-center">Ingreso al Sistema</h3>
    </div>
    <form name='forma' action='<c:url value="/buscarConexion.do"/>' method='post'>
        <input type="hidden" name="hora" value='<fmt:formatDate value="${now}" pattern="yyyyMMddhhmmss" />' />
        <div class="container-fluid">
            <div class="panel panel-primary">
            
            <div class="panel-body text-center">
                <c:if test="${not empty mensaje}">
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> 
                        ${mensaje}
                    </div>
                </c:if>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Usuario" name="apodo<fmt:formatDate value="${now}" pattern="yyyyMMddhhmmss" />" type="password" autofocus="">
                    </div>
                    <div class="form-group">
                        <input class="form-control" placeholder="Clave (PIN)" name="clave<fmt:formatDate value="${now}" pattern="yyyyMMddhhmmss" />" type="password" value="">
                    </div>
                    <input type="submit" class="btn btn-sm btn-success" value="Iniciar Sesi&oacute;n">
                </fieldset>
            </div>
            </div>
        </div>
    </form>
    

<%@ include file="../Inferior.jsp" %>