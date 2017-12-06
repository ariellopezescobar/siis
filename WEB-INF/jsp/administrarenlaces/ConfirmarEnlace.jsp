<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificano Enlaces</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Enlaces</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Enlaces</div>
</c:if>

<div><a class="btn btn-success" href='ListarEnlaces.do'>Volver</a></div>
<br>

<form name="adicionarEnlace" method="POST" action='<c:url value="/GrabarEnlace.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Categor&iacute;a </td>
      <td><c:out value="${buscarCat.categoria}"/></td>
    </tr>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nombre del enlace </td>
      <td><c:out value="${enlaces.enlace}"/></td>
    </tr>        
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Ruta del enlace </td>
      <td><c:out value="${enlaces.ruta}"/></td>
    </tr>        
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Posici&oacute;n en la categor&iacute;a </td>
      <td><c:out value="${enlaces.orden}"/></td>
    </tr> 
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Imagen </td>
      <td><c:out value="${enlaces.imagen}"/></td>
    </tr>        
    <c:if test="${sw == 1}">       
      <c:if test="${enlaces.id_estado == null}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${enlaces.id_estado == 'A'}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td><c:out value="${enlaces.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Estado </td>
        <td><c:out value="${enlaces.id_estado}"/></td>
      </tr>        
    </c:if>        
  </table>
  <center>
     <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>
  <input type="hidden" name='id_categoria' value='<c:out value="${buscarCat.id_categoria}"/>'>
  <input type="hidden" name='id_enlace' value='<c:out value="${enlaces.id_enlace}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${enlaces.id_estado}"/>'>
  <input type="hidden" name='enlace' value='<c:out value="${enlaces.enlace}"/>'>
  <input type="hidden" name='ruta' value='<c:out value="${enlaces.ruta}"/>'>
  <input type="hidden" name='orden' value='<c:out value="${enlaces.orden}"/>'>  
  <input type="hidden" name='imagen' value='<c:out value="${enlaces.imagen}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



