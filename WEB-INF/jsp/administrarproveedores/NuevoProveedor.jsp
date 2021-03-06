<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Proveedor</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Proveedor</div>
</c:if>

<div><a class="volver" href='ListarProveedores.do'>Volver</a></div>
<br>

<form name="adicionacat" method="POST">
 <center>
  <table class="formulario">
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS PROVEEDOR</th>
    </tr>    
    <tr>
      <td class="etiqueta"> Razon Social <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="razonsocial" maxlength="20" size="20" value="<c:out value="${datoproveedor.razonsocial}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Encargado <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="encargado" maxlength="20" size="20" value="<c:out value="${datoproveedor.encargado}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Direccion <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="direccion" maxlength="20" size="20" value="<c:out value="${datoproveedor.direccion}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Telefonos <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="fonos" maxlength="20" size="20" value="<c:out value="${datoproveedor.fonos}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> NIT <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="nit" maxlength="20" size="20" value="<c:out value="${datoproveedor.nit}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Email <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="email" maxlength="20" size="20" value="<c:out value="${datoproveedor.email}"/>"></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Ciudad <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="ciudad" maxlength="20" size="20" value="<c:out value="${datoproveedor.ciudad}"/>"></td>
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
								      document.adicionacat.action='<c:url value="/ConfirmarProveedor.do"/>'">
  </center>
    <input type="hidden" name='id_proveedor'   value='<c:out value="${id_proveedor}"/>'>
    <input type="hidden" name='accion'         value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_proveedor'   value='<c:out value="${datoproveedor.id_proveedor}"/>'>
    <input type="hidden" name='sw'             value='<c:out value="${sw}"/>'>
    <input type="hidden" name='recargado'      value='Si'>
    <input type="hidden" name='accion1'        value=''>
</form>
