<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Estado civil</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Estado civil</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Estado civil</div>
</c:if>

<div><a class="btn btn-success" href='ListarEciviles.do'>Volver</a></div>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarEcivil.do"/>' >
 <center>
  <table class="formulario">
    <tr>
      <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <c:if test="${sw != 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo ecivil </td>
        <td><c:out value="${dato.id_ecivil}"/></td>
      </tr>  
    </c:if>  
    <tr>
      <td align="right" bgcolor="#F2F2F2"> ecivil </td>
      <td><c:out value="${dato.ecivil}"/></td>
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
  <input type="hidden" name='id_ecivil' value='<c:out value="${dato.id_ecivil}"/>'>
  <input type="hidden" name='ecivil' value='<c:out value="${dato.ecivil}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>



