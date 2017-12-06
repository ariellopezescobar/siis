<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Cuenta</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Cuenta</div>
</c:if>

<div><a class="volver" href='ListarCuentas.do'>Volver</a></div>
<br>

<form name="adicionacat" method="POST">
  <table class="formulario">
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS</th>
    </tr>
     <tr>
        <td class="etiqueta"> Tipo de cuenta <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="tipo_cuenta" size="20" maxlength="3" onblur='validar(id_cuenta,"A9")' value="<c:out value="${buscarCuenta.tipo_cuenta}"/>"></td>
     </tr>     
    <tr>
      <td class="etiqueta"> Cuenta <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="cuenta" maxlength="20" size="20" value="<c:out value="${buscarCuenta.cuenta}"/>"></td>
    </tr>       
    <tr>
      <td class="etiqueta"> Codigo <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="codigo" size="20" maxlength="50" value="<c:out value="${buscarCuenta.codigo}"/>"></td>
    </tr>       
    <c:if test="${sw == 1}">
      <tr>
        <td class="etiqueta">Estado <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
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
    <input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarCuenta.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_cuenta' value='<c:out value="${id_cuenta}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_cuenta' value='<c:out value="${buscarCuenta.id_cuenta}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
 