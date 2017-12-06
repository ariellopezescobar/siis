<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Usuario</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Usuario</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Usuario</div>
</c:if>

<div><a class="btn btn-success" href='ListarUsuarios.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarUsuario.do"/>' >
 <center>  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="3" bgcolor="#F2F2F2"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Persona </td>
      <td><c:out value="${buscarpersona.nombres}"/></td>
    </tr>        
    <c:if test="${sw != 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo Usuario </td>
        <td><c:out value="${dato.id_usuario}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Recordatorio </td>
      <td><c:out value="${dato.recordatorio}"/></td>
    </tr>        
    <c:if test="${sw == 1}">       
      <c:if test="${dato.id_estado == null}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${dato.id_estado == 'A'}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td><c:out value="${dato.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Estado </td>
        <td><c:out value="${dato.id_estado}"/></td>
      </tr>        
    </c:if>        
  </table>
  </center>  
  <center>
    <input type="submit" class="btn btn-primary btn-lg" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_usuario' value='<c:out value="${dato.id_usuario}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='id_persona' value='<c:out value="${dato.id_persona}"/>'>
  <input type="hidden" name='apodo' value='<c:out value="${dato.apodo}"/>'>
  <input type="hidden" name='clave' value='<c:out value="${dato.clave}"/>'>
  <input type="hidden" name='rep_clave' value='<c:out value="${rep_clave}"/>'>  
  <input type="hidden" name='recordatorio' value='<c:out value="${dato.recordatorio}"/>'>
   
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>


