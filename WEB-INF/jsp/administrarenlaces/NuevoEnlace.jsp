<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Enlaces</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Enlaces</div>
</c:if>

<div><a class="btn btn-success" href='ListarEnlaces.do'>Volver</a></div>

<center>
<form name="adicionarEnlace" method="POST">
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS</center></th>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Categorias  </td>	      
      <td>
        <SELECT NAME="id_categoria">
	  <option value="0">-- seleccione --
	    <c:forEach var="cat" items="${listarCategorias}">
	      <option value="<c:out value="${cat.id_categoria}"/>" <c:if test="${cat.id_categoria == id_categoria}"> selected </c:if>>
                <c:out value="${cat.categoria}"/>
	      </option>
	    </c:forEach>
        </SELECT>
      </td>
    </tr>	
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nombre del enlace  </td>
      <td><input type="text" name="enlace" size="30" maxlength="40" value="<c:out value="${enlace}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Ruta del enlace  </td>
      <td><input type="text" name="ruta" size="30" maxlength="50" value="<c:out value="${ruta}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Posici&oacute;n en la categoria  </td>
      <td><input type="text" name="orden" size="30" maxlength="2" onblur='validar(orden,"9")' value="<c:out value="${orden}"/>"></td>
    </tr>     
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Imagen  </td>
      <td><input type="text" name="imagen" size="30" maxlength="20" value="<c:out value="${imagen}"/>"></td>
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
  <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionarEnlace.accion1.value='Guardar';
								      document.adicionarEnlace.action='<c:url value="/ConfirmarEnlace.do"/>'">
  </center>
  <input type="hidden" name='accion1' value=''>
  <input type="hidden" name='id_enlace' value='<c:out value="${id_enlace}"/>'>    
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
  <input type="hidden" name='id_enlace' value='<c:out value="${buscarEnlace.id_enlace}"/>'>
  <input type="hidden" name='recargado' value='Si'>
</form>
</center>
  