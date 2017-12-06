<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="actualizar" method=post action='<c:url value="/CobrarPaciente1.do"/>'>
<center>
<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
    <th colspan="3" style="font-size:25pt"><center>DATOS FACTURA CLIENTE</center> </th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered  table-condensed table-responsive"> 
           <tr>
        <td align="right" bgcolor="#F2F2F2">Numero autorizacion</td>
        <td><c:out value = "${numauto}"/></td>            
      </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres Cliente</td>    
        <td><input type="text" name="nombres"  value='<c:out value="${nombres}"/>' size="40" maxlength="40" onblur='validar(nombres,"A9")' readonly></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">N.I.T./C.I. Cliente</td>    
        <td><input type="text" name="ciu"  value='<c:out value="${carnet}"/>' size="20" maxlength="20" onblur='validar(ciu,"9")' readonly></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Numero Clave de Documento</td>
        <td><c:out value = "${num_cladoc}"/></td>            
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2"> Monto a Cobrar </td>
        <td><input readonly type="text" name="precio" size="20" maxlength="15" onblur='validar(precio,"9")' value=<c:out value="${precio}"/> ></td>
     </tr> 
   </table>
  </td>
</table>
</center>
<center>
     <input type="submit" class="btn btn-primary btn-lg" value='Impresora/Inyeccion' onclick="document.actualizar.accion.value='Impresora/Inyeccion'">
</center>
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>    
    <input type="hidden" name='id_costo'        value='<c:out value="${id_costo}"/>'>  
    <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>  
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>    
    <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
    <input type="hidden" name='medico'          value='<c:out value="${medico}"/>'>
    <input type="hidden" name='num_cladoc'      value='<c:out value="${num_cladoc}"/>'>
    <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
    <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
    <input type="hidden" name="accion"          value='Continua'>
</form>
