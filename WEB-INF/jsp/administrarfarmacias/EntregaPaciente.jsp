<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarAtendidos.do'>Volver</a></div>

<form name="adicionarpaciente" method="POST">

    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
        <th colspan="3" bgcolor="#F2F2F2"><font size=2><center>Entregar Mediicamentos al Paciente </center></font></th>
      </tr>    
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres  </td>    
        <td><div class="form-inline"><input class="form-control" type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" onblur='validar(nombres,"A")'/></div></td>
      </tr>    
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nit </td>    	      
        <td><div class="form-inline"><input class="form-control" type="text" name="nit" value="0" maxlength=60/></div></td>
      </tr>        
    </table>

<center>
  <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionarpaciente.action='<c:url value="/ListaReceta.do"/>'"></td>
</center>
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
  <input type="hidden" name="expedido"     value='<c:out value="${expedido}"/>' >
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='accion'       value='<c:out value="entregarya"/>'>
</form>
