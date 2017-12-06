<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Laboratorio</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Laboratorio</div>
</c:if>

<div><a class="btn btn-success" href='ListarLaboratorios.do'>Volver</a></div>


<form name="adicionacat" method="POST">
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS</center></th>
    </tr>
    
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Laboratorio </td>
      <td><input type="text" name="laboratorio" maxlength="60" size="40" value="<c:out value="${buscarLaboratorio.laboratorio}"/>"></td>
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
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarLaboratorio.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_laboratorio' value='<c:out value="${id_laboratorio}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_laboratorio' value='<c:out value="${buscarLaboratorio.id_laboratorio}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
 