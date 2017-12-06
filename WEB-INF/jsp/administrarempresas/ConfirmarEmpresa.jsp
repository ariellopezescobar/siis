<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Empresas</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Empresas</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Empresas</div>
</c:if>

<div><a class="btn btn-success" href='ListarEmpresas.do'>Volver</a></div>

<form name="adicionarempresa" method="POST" action='<c:url value="/GrabarEmpresa.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>
    <c:if test="${sw != 1}">  
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Patronal </td>
        <td><c:out value="${codpatronal}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Empresa </td>
        <td><c:out value="${dato.empresa}"/></td>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Direccion </td>
        <td><c:out value="${dato.direccion}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Responsable </td>
        <td><c:out value="${dato.responsable}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Telefonos </td>
        <td><c:out value="${dato.telefonos}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> NIT </td>
        <td><c:out value="${dato.nit}"/></td>
      </tr>
    </c:if>  
     
  <c:if test="${sw == 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Patronal </td>
        <td><c:out value="${codpatronal}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Empresa </td>
        <td><c:out value="${dato.empresa}"/></td>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Direccion </td>
        <td><c:out value="${dato.direccion}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Responsable </td>
        <td><c:out value="${dato.responsable}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Telefonos </td>
        <td><c:out value="${dato.telefonos}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2"> NIT </td>
        <td><c:out value="${dato.nit}"/></td>
      </tr>  
     
    </c:if>    
      
  </table>
  <center>
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_empresa'  value='<c:out value="${dato.id_empresa}"/>'>
  <input type="hidden" name='empresa'     value='<c:out value="${dato.empresa}"/>'>
  <input type="hidden" name='codpatronal' value='<c:out value="${codpatronal}"/>'>
  <input type="hidden" name='nit'         value='<c:out value="${dato.nit}"/>'>
  <input type="hidden" name='direccion'   value='<c:out value="${dato.direccion}"/>'>
  <input type="hidden" name='telefonos'   value='<c:out value="${dato.telefonos}"/>'>
  <input type="hidden" name='responsable' value='<c:out value="${dato.responsable}"/>'>
  <input type="hidden" name='id_estado'   value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='accion'      value='<c:out value="${accion}"/>'>
</form>