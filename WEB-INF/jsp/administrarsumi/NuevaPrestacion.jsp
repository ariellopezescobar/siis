<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Prestaciones</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Pais</div>
</c:if>

<div><a class="btn btn-success" href='ListarPrestacionSumi.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS</center></th>
    </tr>
 
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Prestacion  </td>
      <td><input type="text" name="descripcion" maxlength="100" size="70" value="<c:out value="${buscarPres.descripcion}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Costo  </td>
      <td><input type="text" name="costo" size="20" maxlength="50" value="<c:out value="${buscarPres.costo}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Paquete  </td>
      <td><input type="text" name="paquete" maxlength="20" size="20" value="<c:out value="${buscarPres.paquete}"/>"></td>
    </tr> 
  </table>
  </center>
  <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarPrestacion.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_prestacion' value='<c:out value="${id_prestacion}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_prestacion' value='<c:out value="${buscarPres.id_prestacion}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
  