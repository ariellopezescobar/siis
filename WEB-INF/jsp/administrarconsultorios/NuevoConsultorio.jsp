<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Consultorios</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Consultorios</div>
</c:if>

<div><a class="btn btn-success" href='ListarConsultorios.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <center>     
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS</center></th>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nombre Consultorio  </td>
      <td><input type="text" name="consultorio" maxlength="40" size="40" value="<c:out value="${datosCargo.consultorio}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Descripcion Consultorio  </td>
      <td><input type="text" name="descripcion" size="40" maxlength="50" value="<c:out value="${datosCargo.descripcion}"/>"></td>
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
  </center>   
  <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarConsultorio.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_consultorio' value='<c:out value="${id_consultorio}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_consultorio' value='<c:out value="${datosCargo.id_consultorio}"/>'>
     <input type="hidden" name="id_cargo"       value='<c:out value="${id_cargo}"/>' >
    <input type="hidden" name='recargado' value='Si'>
</form>
 