<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Transaccion</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Transaccion</div>
</c:if>

<div><a class="volver" href='ListarTransacciones.do'>Volver</a></div>
<br>

<form name="adicionacat" method="POST">
  <table class="formulario">
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS</th>
    </tr>
    <tr>
      <td class="etiqueta"> Transaccion <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="transaccion" maxlength="20" size="20" value="<c:out value="${buscarTransaccion.transaccion}"/>"></td>
    </tr>       
    <tr>
        <td class="etiqueta">Fecha de Registro <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="dia_r" value="<c:out value="${dia_r}"/>" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>-
            <input type="text" name="mes_r" value="<c:out value="${mes_r}"/>" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>-
            <input type="text" name="anio_r" value="<c:out value="${anio_r}"/>" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
        </td>	                 
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
								      document.adicionacat.action='<c:url value="/ConfirmarTransaccion.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_transaccion' value='<c:out value="${id_transaccion}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_transaccion' value='<c:out value="${buscarTransaccion.id_transaccion}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>  