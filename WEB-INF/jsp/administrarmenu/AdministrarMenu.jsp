<%@ include file="../Superior.jsp" %>

<center>
<form name="fcrear" method="POST" action='<c:url value="/administrarMenues.do"/>' >
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="3" bgcolor="#F2F2F2"><center>ADMINISTRAR MENUES</center></th>
      </tr>
      <tr>
        <td align="right"> Usuario  </td>
        <td>	<select name="id_usuario_rol_s" onchange="javascript:document.fcrear.submit();">
		  <option value="-1">-- seleccione --
    		  <c:forEach var="cat1" items="${listaUsuarios}">
		    <option value="<c:out value="${cat1.id_usuario}"/>" <c:if test="${cat1.id_usuario == id_usuario}">selected</c:if>> 
			<c:out value="${cat1.nombres}"/>__<c:out value="${cat1.consultorio}"/>__<c:out value="${cat1.cod_esta}"/>
		    </option>
		  </c:forEach>
		</select>
	</td>
      </tr>
      <tr>
        <td align="right">Roles del Usuario  </td>
        <td>	<select name="id_rol_s" onchange="javascript:document.fcrear.submit();">
		  <option value="-2">-- seleccione --
    		  <c:forEach var="cat1" items="${listaUsrRoles}">
		    <option value="<c:out value="${cat1.id_rol}"/>" <c:if test="${cat1.id_rol == id_rol}">selected</c:if>> 
			<c:out value="${cat1.rol}"/>
		    </option>
		  </c:forEach>
		</select>
	</td>
      </tr>
      <tr>
        <td align="right"> Categoria  </td>
        <td>	<select name="id_categoria_s" onchange="javascript:document.fcrear.submit();">
		  <option value="-3">-- seleccione --
    		  <c:forEach var="cat1" items="${listaCategorias}">
		    <option value="<c:out value="${cat1.id_categoria}"/>" <c:if test="${cat1.id_categoria == id_categoria}">selected</c:if>> 
			<c:out value="${cat1.categoria}"/>
		    </option>
		  </c:forEach>
		</select>
	</td>
      </tr>
     
        <td colspan=3>
	<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
        <tr>
           <th bgcolor="#F2F2F2"><center>Enlaces de la categoria</center></th>
           <th>&nbsp;</th>
           <th bgcolor="#F2F2F2"><center>Enlaces permitidos para del usuario</center></th>
        </tr>
	<tr>
	  <td valign=top>
	  <table class="table table-striped table-hover table-condensed table-responsive">
    	  <c:forEach var="datos1" items="${listaEnlaces}">    
            <tr align="right">
    	      <td align="right"> <input type=checkbox name="id_enlace_s" value="<c:out value="${datos1.id_enlace}"/>" >
                              <c:out value="${datos1.enlace}"/>
	      </td>
    	    </tr>
    	  </c:forEach> 
	  </table>
	  </td>
           <td ></td>
	  <td valign=top>
	  <table class="table table-striped table-hover table-condensed table-responsive">
    	  <c:forEach var="datos1" items="${listaUsrRolEnlaces}">    
            <tr>
    	      <td align="left"> <input type=checkbox name="id_enlace_u" value="<c:out value="${datos1.id_enlace}"/>">
                              <c:out value="${datos1.enlace}"/>
	      </td>
    	    </tr>
    	  </c:forEach> 
	  </table>
	  </td>
	</tr>
        </table>
	</td>
      </tr>
   </table>
   <center>
     <input type="submit" name='boton' class="btn btn-success" value='Agregar'>
     <input type="submit" name='boton' class="btn btn-primary" value='Eliminar'>
   </center>
   <input type="hidden" name='id_categoria_s' value='<c:out value="${id_categoria_s}"/>'>
</form>
</center>
  
<%@ include file="../Inferior.jsp" %>
