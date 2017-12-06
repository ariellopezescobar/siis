<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Seguros</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Seguros</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Seguros</div>
</c:if>

<div><a class="btn btn-success" href='ListarSeguros.do'>Volver</a></div>


<form name="adicionarseguro" method="POST" action='<c:url value="/GrabarSeguro.do"/>' >
  <center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo Seguro </td>
        <td><c:out value="${dato.id_seguro}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Seguro </td>
      <td><c:out value="${dato.seguro}"/></td>
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
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_seguro' value='<c:out value="${dato.id_seguro}"/>'>
  <input type="hidden" name='seguro' value='<c:out value="${dato.seguro}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



