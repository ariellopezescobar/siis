<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Cambiar Datos Pedido Farmacia</div>

<br>
<form name="adicionar" method="POST" action='<c:url value="/ReporteEntregados.do"/>' >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS DEL PEDIDO </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" maxlength=50 onblur='validar(nombre,"A")'/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha Pedido<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur='validarNota(dia,1, 31)'/>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur='validarNota(mes, 1, 12)'/>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur='validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
        </td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">No. Pedido<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nit" value="<c:out value = "${nit}"/>" maxlength=15 size=15/></td>
      </tr>   
      <tr>
        <td class="etiqueta">No. Documento<font color='red'>(*)</font></td>
        <td class="etiqueta">::</td>
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=15 size=15/></td>            
      </tr>
      <tr>    
        <td class="etiqueta">No. Factura<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="id_factura" value="<c:out value = "${id_factura}"/>" maxlength=15 size=15/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Nomto Total<font color='red'>(*)</font></td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="total" value="<c:out value = "${total}"/>" maxlength=15 size=15 readonly onblur='validar(total,"9")'/></td>
      </tr>
    </table>
<center>
  <input type="submit" name='accion' class="adicionar" value='Cambiar'>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion value='Cambiar'>
  <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
</form>
