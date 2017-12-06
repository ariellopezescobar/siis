<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Personas</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Personas</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Personas</div>
</c:if>

<div><a class="btn btn-warning" href='ListarPersonas.do'>Volver</a></div>
<br>

<form name="adicionarcolegio" method="POST" action='<c:url value="/GrabarPersona.do"/>' >
<center>   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>CONFIRME LOS DATOS</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
    <table >
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">CI</td>
        <td><c:out value = "${datos.dip}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Paterno</td>
        <td><c:out value = "${datos.paterno}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Materno</td>
        <td><c:out value = "${datos.materno}"/></td>            
      </tr>    
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Sexo</td>     
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Estado civil</td>      
        <td> <c:out value="${buscarEstadoCivil.ecivil}"/></td>
      </tr>
    </table>
    </td>
    <td width="50%" valign="top">
    <table >
      <tr>
        <th colspan="3"><font size=2><center>DATOS ACAD&Eacute;MICOS</center></font></th>
      </tr>
      <tr style="font-size:10pt">   
        <td align="right" bgcolor="#F2F2F2">Cargo</td>  
        <td><c:out value = "${datosCargo.consultorio}"/></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
    <table >
      <tr>
        <th colspan="3"><font size=2><center>LUGAR DE NACIMIENTO</center></font></th>
      </tr>	
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Pa&iacute;s</td>      
        <td> <c:out value="${buscarPais.pais}"/></td>
      </tr>	
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Departamento</td>
        <td> <c:out value="${buscarDepartamento.departamento}"/></td>
      </tr>    
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Provincia</td>
        <td><c:out value="${buscarProvincia.provincia}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Localidad</td>
        <td> <c:out value="${buscarLocalidad.localidad}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
    </table>
    </td>
    <td width="50%" valign="top">
    <table >
      <tr>
        <th colspan="3"><font size=2><center>DIRECCI&Oacute;N</center></font></th>
      </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>        
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Tel&eacute;fono</td>
        <td><c:out value = "${datos.telefono}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Celular</td>   
        <td><c:out value = "${datos.celular}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Correo</td>     
        <td><c:out value = "${datos.correo}"/></td>
      </tr>    
    </table>
    </td>
  </tr>
</table>
</center>   
<center>
  <input type="submit" name='accion1' class="btn btn-primary" value='Aceptar'>
</center>  
  
<input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='dip'             value='<c:out value="${datos.dip}"/>'>
<input type="hidden" name='paterno'         value='<c:out value="${datos.paterno}"/>'>
<input type="hidden" name='materno'         value='<c:out value="${datos.materno}"/>'>
<input type="hidden" name='nombres'         value='<c:out value="${datos.nombres}"/>'>
<input type="hidden" name='id_sexo'         value='<c:out value="${buscarSexo.id_sexo}"/>'>
<input type="hidden" name='id_ecivil'       value='<c:out value="${buscarEstadoCivil.id_ecivil}"/>'>
<input type="hidden" name='id_pais'         value='<c:out value="${buscarPais.id_pais}"/>'>
<input type="hidden" name='id_departamento' value='<c:out value="${buscarDepartamento.id_departamento}"/>'>
<input type="hidden" name='id_provincia'    value='<c:out value="${buscarProvincia.id_provincia}"/>'>
<input type="hidden" name='id_localidad'    value='<c:out value="${buscarLocalidad.id_localidad}"/>'>
<input type="hidden" name='id_farmacia'     value='<c:out value="${datos.id_farmacia}"/>'>
<input type="hidden" name='id_laboratorio'  value='<c:out value="${datos.id_laboratorio}"/>'>
<input type="hidden" name='id_medico'       value='<c:out value="${datos.id_medico}"/>'>
<input type="hidden" name='id_piso'         value='<c:out value="${datos.id_piso}"/>'>
<input type="hidden" name='swclav'          value='<c:out value="${swclav}"/>'>
<input type="hidden" name='swclave'         value='<c:out value="${swclave}"/>'>
<input type="hidden" name='dia' 	    value='<c:out value="${dia}"/>'>
<input type="hidden" name='mes' 	    value='<c:out value="${mes}"/>'>
<input type="hidden" name='anio' 	    value='<c:out value="${anio}"/>'>
<input type="hidden" name='direccion'       value='<c:out value="${datos.direccion}"/>'>
<input type="hidden" name='telefono'        value='<c:out value="${datos.telefono}"/>'>
<input type="hidden" name='correo'          value='<c:out value="${datos.correo}"/>'>
<input type="hidden" name='firma'           value='<c:out value="${datos.firma}"/>'>
<input type="hidden" name='id_estado'       value='<c:out value="${datos.id_estado}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
<input type="hidden" name='celular'         value='<c:out value="${datos.celular}"/>'>
<input type="hidden" name='cod_esta'        value='<c:out value="${datos.cod_esta}"/>'>
<input type="hidden" name='urgencias'       value='<c:out value="${datos.urgencias}"/>'>
<input type="hidden" name='matricula'       value='<c:out value="${datos.matricula}"/>'>
<input type="hidden" name='codigoprof'      value='<c:out value="${datos.codigoprof}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${datosCargo.id_consultorio}"/>'>
  
</form>