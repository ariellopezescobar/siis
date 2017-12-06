<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Entregar Medicamentos al Paciente(<c:out value = "${sw}"/>)</div>

<div><a class="volver" href='ListarAtendidosVenta.do'>Volver</a></div>
<br>

<form name="forma" method="POST" action='<c:url value="/ListaNRecetaV.do"/>' >

    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES </font></th>
      </tr>
      <tr>  
         <td class="etiqueta">Fecha Receta <font color='red'>(*)</font> </td>
         <td class="etiqueta"> :: </td>
         <td>
          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
          <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
          </td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" onblur='validar(nombres,"A")'/></td>
      </tr>    
      <tr>    
        <td class="etiqueta">Numero Clave de Documento <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>	      
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=60/></td>
      </tr>       
    </table>
<center>
  <input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionarpaciente.action='<c:url value="/ListaNRecetaV.do"/>'"></td>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name='accion' value='<c:out value="entregarya"/>'>
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
</form>
