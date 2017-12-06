<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Entrega de Medicamentos</div>
<br>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/EntregaMedicamentos.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo Venta</a>
       <input type="hidden" name="sw" value='VENTA' >
       <input type=hidden name=accion value='adicionar'>
    </div></td>
    </form>
  <tr>
</table>
<table>
  <tr>
  <form name=formaxx method=post action='<c:url value="/EntregaMedicamentos.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.formaxx.submit();" >Nuevo Sumi</a>
       <input type="hidden" name="sw" value='SUMI' >       
       <input type=hidden name=accion value='adicionar'>
    </div></td>
    </form>
  <tr>
</table>
