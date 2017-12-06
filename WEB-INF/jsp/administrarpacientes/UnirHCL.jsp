<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionar" method="POST" action='<c:url value="/ListarPacientes.do"/>' >
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="3"><font size=2><center>UNIR HISTORIAS CLINICAS</center></font></th>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres paciente</td>    
        <td><c:out value = "${nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de Nacimiento</td>    
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direccion paciente</td>    
        <td><c:out value = "${direccion}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Sexo paciente</td>    
        <c:if test="${sexo==1}"><td>Femenino</td></c:if>
        <c:if test="${sexo==2}"><td>Masculino</td></c:if>
      </tr>  
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nº HCL que Permanece</td>    
        <td style="color:blue; font-size:14pt"><b><c:out value = "${hcl}"/></b></td>
      </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nº HCL que Borrara</td>    
        <td><div class="form-inline"><input class="form-control" type="text" name="hclb" maxlength=15 size=15/></div></td>            
      </tr> 
    </table>
<center>
  <input type="submit" name='accion' class="btn btn-primary btn-lg" value='CambiarHCL'>
</center>
  <input type="hidden" name=accion          value='CambiarHCL>'>
  <input type="hidden" name='id_paciente'   value='<c:out value="${id_paciente}"/>'>
</form>
