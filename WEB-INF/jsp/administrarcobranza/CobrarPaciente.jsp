<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarCobroReserva.do'>Volver</a></div>

<form name="adicionar" method="POST" action='<c:url value="/ListaCobrarPaciente.do"/>' >
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
        <th colspan="2" bgcolor="#F2F2F2"><font size=4><center>DATOS PERSONALES DE COBRANZA CON HCL (<c:out value = "${sw}"/>) </center></font></th>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres Completo</td>    
        <td><div class="form-inline"><input class="form-control" type="text" name="nombres" value="<c:out value = "${nombres}"/>" maxlength=50 size="50" /></div> </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Numero Clave de Documento</td>
        <td><c:out value = "${num_cladoc}"/></td>            
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">NIT/ CLIENTE</td>
        <td><div class="form-inline"><input class="form-control" type="text" name="nit" value="<c:out value = "${nit}"/>" maxlength=20 /></div></td>            
      </tr>  
    </table>
<center>
  <input type="submit" name='accion' class="btn btn-primary btn-lg" value='Contado'>
  <!--<input type="submit" name='accion' class="adicionar" value='Credito'>-->
</center>
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='nombres'      value='<c:out value="${nombres}"/>'>
  <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>'>
  <input type="hidden" name='num_cladoc'   value='<c:out value="${num_cladoc}"/>'>
  <input type="hidden" name='nit'          value='<c:out value="${nit}"/>'>
  <input type="hidden" name='sw'           value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion         value='Adicionar'>
</form>
