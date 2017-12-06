<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Categor&iacute;as</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Categor&iacute;as</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Categor&iacute;as</div>
</c:if>

<div><a class="btn btn-success" href='ListarCategorias.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCategoria.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo categor&iacute;a </td>
        <td><c:out value="${cate.id_categoria}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Categor&iacute;a </td>
      <td><c:out value="${cate.categoria}"/></td>
    </tr>        
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Imagen </td>
      <td><c:out value="${cate.imagen}"/></td>
    </tr>        
    <c:if test="${sw == 1}">       
      <c:if test="${cate.id_estado == null}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${cate.id_estado == 'A'}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td><c:out value="${cate.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Estado </td>
        <td><c:out value="${cate.id_estado}"/></td>
      </tr>        
    </c:if>        
  </table>
  <center>
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_categoria' value='<c:out value="${cate.id_categoria}"/>'>
  <input type="hidden" name='categoria' value='<c:out value="${cate.categoria}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${cate.id_estado}"/>'>
  <input type="hidden" name='imagen' value='<c:out value="${cate.imagen}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



