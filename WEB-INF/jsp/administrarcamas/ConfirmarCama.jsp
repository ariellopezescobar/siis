<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Cama</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Cama</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Cama</div>
</c:if>

<div><a class="btn btn-success" href='ListarCamas.do'>Volver</a></div>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCama.do"/>' >
  <center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
    </tr>
    <tr>
    <td align="right" bgcolor="#F2F2F2"> Sala </td>
      <td><c:out value="${sala}"/></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Id_Cama </td>
      <td><c:out value="${dato.id_cama}"/></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Cama </td>
      <td><c:out value="${dato.cama}"/></td>
    </tr>   
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Cama </td>
      <td><c:out value="${dato.cama_unit}"/></td>
    </tr>        
      
  </table>
   </center>
  <center>
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_sala' value='<c:out value="${dato.id_sala}"/>'>
  <input type="hidden" name='id_cama' value='<c:out value="${dato.id_cama}"/>'>
  <input type="hidden" name='cama' value='<c:out value="${dato.cama}"/>'>
  <input type="hidden" name='cama_unit' value='<c:out value="${dato.cama_unit}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
</form>
