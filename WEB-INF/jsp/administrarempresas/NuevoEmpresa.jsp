<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Empresass</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Empresas</div>
</c:if>

<div><a class="btn btn-success" href='ListarEmpresas.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
    <tr>
      <th colspan="3">INTRODUZCA LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Cod Patronal  </td>
      <td><input type="text" name="codpatronal" maxlength="80" size="80" value="<c:out value="${buscarempresa.cod_patronal}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Empresa  </td>
      <td><input type="text" name="empresa" maxlength="80" size="80" value="<c:out value="${buscarempresa.empresa}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Direccion  </td>
      <td><input type="text" name="direccion" maxlength="60" size="80" value="<c:out value="${buscarempresa.direccion}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Responsable  </td>
      <td><input type="text" name="responsable" maxlength="50" size="80" value="<c:out value="${buscarempresa.responsable}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nit  </td>
      <td><input type="text" name="nit" maxlength="15" size="40" value="<c:out value="${buscarempresa.nit}"/>"></td>
    </tr>
    
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Telefono  </td>
      <td><input type="text" name="telefonos" maxlength="40" size="40" value="<c:out value="${buscarempresa.telefonos}"/>"></td>
    </tr>
    </c:if>
    <c:if test="${sw == 1}">
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Cod Patronal  </td>
      <td><input type="text" name="codpatronal" maxlength="80" size="80" value="<c:out value="${buscarempresa.cod_patronal}"/>"></td>
    </tr>   
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Empresa  </td>
      <td><input type="text" name="empresa" maxlength="80" size="80" value="<c:out value="${buscarempresa.empresa}"/>"></td>
    </tr> 
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Direccion  </td>
      <td><input type="text" name="direccion" maxlength="60" size="80" value="<c:out value="${buscarempresa.direccion}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Responsable  </td>
      <td><input type="text" name="responsable" maxlength="50" size="80" value="<c:out value="${buscarempresa.responsable}"/>"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nit  </td>
      <td><input type="text" name="nit" maxlength="15" size="40" value="<c:out value="${buscarempresa.nit}"/>"></td>
    </tr>
    
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Telefono  </td>
      <td><input type="text" name="telefonos" maxlength="40" size="40" value="<c:out value="${buscarempresa.telefonos}"/>"></td>
    </tr>  
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
								      document.adicionacat.action='<c:url value="/ConfirmarEmpresa.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_empresa' value='<c:out value="${id_empresa}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_empresa' value='<c:out value="${buscarCat.id_empresa}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
 