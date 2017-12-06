<%@ include file="../Superior.jsp" %>

<body onload='inicio(document.forma.clave)'>

<center>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoPersona.do"/>'>
    <td align="center"><input class="btn btn-warning" type="submit" name="boton" value="Modificar Datos Personales" ></td>
    <input type="hidden" name="id_persona"       value=<c:out value="${id_persona}"/> >
    <input type="hidden" name="accion"           value='Modificar' >
    <input type="hidden" name="swclave"          value='1'>
    <input type="hidden" name="swclav"          value='1'>
    </form>
  <tr>
</table>
 </center>

 <table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <td width="25%" valign="top"></td>
    <td width="50%" valign="top">
    <form method="post" action='<c:url value="/registrarClave.do"/>'>
     <center>  
      <table class="table table-striped table-hover table-bordered table-condensed table-responsive">
        <tr>
          <th colspan="2" align="center">INTRODUZCA LOS DATOS</th>
        </tr>
        <tr style="font-size:10pt">
          <td class="etiqueta">ID</td>
          <td><c:out value="${id_persona}"/></td>
        </tr>
        <tr style="font-size:10pt">
          <td class="etiqueta">Nombre</td>
          <td><c:out value="${nombres}"/></td>
        </tr>
        <tr style="font-size:10pt">
          <td class="etiqueta">Usuario</td>
          <td><c:out value="${apodo}"/></td>
        </tr>
        <tr style="font-size:10pt">
          <td class="etiqueta">Nueva clave(PIN)</td>
          <td><input class="form-control" type="password" name="nueva_clave" maxlength="10" onblur="validarClave(this,'A9')"></td>
        </tr>
        <tr style="font-size:10pt">
          <td class="etiqueta">Confirmar clave(PIN)</td>
          <td><input class="form-control" type="password" name="confirmacion_clave" maxlength="10" onblur="validarClave(this,'A9')"></td>
        </tr>
        <tr>
          <td colspan="3" align="center"><input class="btn btn-primary btn-lg" type="submit" name="boton" value="Aceptar"></td>
        </tr>
      </table>
     </center>   
    </form>
 </td>
  <td width="25%" valign="top"></td>
  </tr>
 </table>
<%@ include file="../Inferior.jsp" %>