<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<center>
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>Impresion de Datos Pacientes</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL - Nombres:</td>
        <td><c:out value = "${datos.hcl}"/> - <c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.:</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/><font color="blue"><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</font></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n:</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>       
   </table>
  </td>
  </tr>
 </table>
 </center>

 <center>
 <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr style="font-size:12pt">
      <th bgcolor="#F2F2F2">Imprimir<br>HCL</th>
      <th bgcolor="#F2F2F2">Imprimir<br>Perinatal</th>
      <th bgcolor="#F2F2F2">Imprimir<br>Ginecologica</th>
      <th bgcolor="#F2F2F2">Imprimir<br>Carnet Infantil</th>
      <th bgcolor="#F2F2F2">Imprimir<br>Formulario</th>
      <th bgcolor="#F2F2F2">Imprimir<br>Carnet</th>
    </tr>
    <tr>
    <form name=formaEimp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
       <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaEimp<c:out value="${contador.count}"/>.submit();"> H.CL.</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='Imprimir' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>  
     <form name=formaEimpP<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
      <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaEimpP<c:out value="${contador.count}"/>.submit();">Perinatal</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='ImprimirPeri' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
      </form> <form name=formaGine<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
       <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaGine<c:out value="${contador.count}"/>.submit();"> Ginecologica</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='ImprimirGine' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
     <form name=formaInf<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
       <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaInf<c:out value="${contador.count}"/>.submit();">Carnet Infantil</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='ImprimirCarnetInf' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
      <form name=formaFor<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
       <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaFor<c:out value="${contador.count}"/>.submit();"> Formulario</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='ImprimirForm' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form> <form name=formaC<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
       <center><td>     
         <div><a class="btn btn-info btn-lg" href="javascript:document.formaC<c:out value="${contador.count}"/>.submit();"> Carnet</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='ImprimirCarnet' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
    </tr>
  </center>