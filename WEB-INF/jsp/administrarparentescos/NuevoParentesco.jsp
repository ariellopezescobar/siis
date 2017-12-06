<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando parentesco</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando parentesco</div>
</c:if>

<div><a class="volver" href='ListarParentescos.do'>Volver</a></div>
<br>

<form name="adicionacat" method="POST">
 <center>      
  <table class="formulario">
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">
      <tr>
        <td class="etiqueta"> C&oacute;digo parentesco <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="id_parentesco" size="20" maxlength="3" onblur='validar(id_parentesco,"A9")' value="<c:out value="${buscarparentesco.id_parentesco}"/>"></td>
      </tr>     
    </c:if>    
    <tr>
      <td class="etiqueta"> Parentesco <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="parentesco" maxlength="20" size="20" value="<c:out value="${buscarparentesco.parentesco}"/>"></td>
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
  </center>   
  <center>
    <input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarParentesco.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_parentesco' value='<c:out value="${id_parentesco}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_parentesco' value='<c:out value="${buscarparentesco.id_parentesco}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
 