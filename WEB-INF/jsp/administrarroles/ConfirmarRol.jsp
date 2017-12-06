<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
	<div class="page-header">
        <h1>Modificando rol</h1>
    </div>  
</c:if>
<c:if test="${accion == 'Adicionar'}">
	<div class="page-header">
        <h1>Agregando Rol</h1>
    </div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
	<div class="page-header">
        <h1>Eliminando rol</h1>
    </div>    
</c:if>

<div><a class="btn btn-primary btn-xs" href='ListarRoles.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarRol.do"/>' >
  <table class="table">
    <tr>
		<th colspan="3" class="text-center">CONFIRME LOS DATOS</th>
    </tr>    
    <tr style="font-size:11pt">
      <td> Rol </td>
      <td><c:out value="${dato.rol}"/></td>
    </tr>        
    <tr style="font-size:11pt">
      <td> Descripcion </td>
      <td><c:out value="${dato.descripcion}"/></td>
    </tr>        
    <c:if test="${sw == 1}">       
      <c:if test="${dato.id_estado == null}">       
        <tr style="font-size:11pt">
          <td> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${dato.id_estado == 'A'}">       
        <tr style="font-size:11pt">
          <td> Estado </td>
          <td><c:out value="${dato.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td style="font-size:11pt"> Estado </td>
        <td><c:out value="${dato.id_estado}"/></td>
      </tr>        
    </c:if>   
	<tr>
		<th colspan="3" class="text-center">
			<input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>

			<input type="hidden" name='id_rol' value='<c:out value="${dato.id_rol}"/>'>
			<input type="hidden" name='rol' value='<c:out value="${dato.rol}"/>'>
			<input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
			<input type="hidden" name='descripcion' value='<c:out value="${dato.descripcion}"/>'>
			<input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
		</th>
    </tr>
  </table>
  
    
</form>



