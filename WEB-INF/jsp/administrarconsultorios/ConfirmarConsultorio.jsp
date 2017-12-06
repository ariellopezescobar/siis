<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Cargo</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Cargo</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Cargo</div>
</c:if>

<div><a class="btn btn-success" href='ListarConsultorios.do'>Volver</a></div>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarConsultorio.do"/>' >
 <center>   
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3">CONFIRME LOS DATOS</th>
    </tr>   
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Cargo </td>
      <td><c:out value="${dato.consultorio}"/></td>
    </tr>        
    <tr>
      <td align="right" bgcolor="#F2F2F2"> descripcion </td>
      <td><c:out value="${dato.descripcion}"/></td>
    </tr>        
    <c:if test="${sw == 1}">       
      <c:if test="${dato.id_estado == null}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td>B</td>
        </tr>        
      </c:if>    
      <c:if test="${dato.id_estado == 'A'}">       
        <tr>
          <td align="right" bgcolor="#F2F2F2"> Estado </td>
          <td><c:out value="${dato.id_estado}"/></td>
        </tr>        
      </c:if>          
    </c:if>    
    <c:if test="${sw1 == 1}">       
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Estado </td>
        <td><c:out value="${dato.id_estado}"/></td>
      </tr>        
    </c:if>        
  </table>
  </center>   
  <center>
    <input type="submit" class="btn btn-primary" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_consultorio' value='<c:out value="${dato.id_consultorio}"/>'>
  <input type="hidden" name='consultorio'    value='<c:out value="${dato.consultorio}"/>'>
  <input type="hidden" name='id_estado'      value='<c:out value="${dato.id_estado}"/>'>
  <input type="hidden" name='descripcion'    value='<c:out value="${dato.descripcion}"/>'>
  <input type="hidden" name="id_cargo"       value='<c:out value="${id_cargo}"/>' >
  <input type="hidden" name='accion'         value='<c:out value="${accion}"/>'>
</form>



