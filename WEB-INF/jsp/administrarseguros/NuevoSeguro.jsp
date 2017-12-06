<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Seguros</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Seguros</div>
</c:if>

<div><a class="btn btn-success" href='ListarSeguros.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <center>   
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS</center></th>
    </tr>
    <c:if test="${sw != 1}">
      <tr>
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo seguro  </td>
        <td><input type="text" name="id_seguro" size="20" maxlength="3" onblur='validar(id_seguro,"A9")' value="<c:out value="${buscarSeguro.id_seguro}"/>"></td>
      </tr>     
    </c:if>    
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Seguro  </td>
      <td><input type="text" name="seguro" maxlength="20" size="20" value="<c:out value="${buscarseguro.seguro}"/>"></td>
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
								      document.adicionacat.action='<c:url value="/ConfirmarSeguro.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_seguro' value='<c:out value="${id_seguro}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_seguro' value='<c:out value="${buscarCat.id_seguro}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
