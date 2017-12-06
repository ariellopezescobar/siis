<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <div style="font-size:15pt"> Elija su Servicio para su Atencion</div>
<br>

<form name="forma" method="POST" action='<c:url value="/AtencionFichas.do"/>' >
 <center>
  <input type="submit" name='accion' class="aceptar" value='Consultorios' onclick="document.forma.action='<c:url value="/AtencionFichas.do"/>';">    
  <input type="submit" name='accion' class="aceptar" value='Informaciones' onclick="document.forma.action='<c:url value="/AtencionFichas.do"/>';">  
 </center>
</form>


<%@ include file="../Inferior.jsp" %>
