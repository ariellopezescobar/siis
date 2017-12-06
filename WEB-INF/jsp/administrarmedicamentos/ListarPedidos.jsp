<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div class=titulo> Modificar Kardex Medicamentos </div>
<br>
<form name="forma" method="POST" action='<c:url value="/ListarPedidos.do"/>' >
  <table class="formulario">
    <tr>
      <th>BUSQUEDA DE DATOS</th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <legend>Introduzca Fechas</legend>
            <table>	     
              <tr>  
  	        <td class="etiqueta">Fecha inicio <font color='red'>(*)</font> </td>
	        <td class="etiqueta"> :: </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td class="etiqueta">Fecha final <font color='red'>(*)</font> </td>
                <td class="etiqueta">::</td>  
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <center>
    <input type="submit" name="boton" class="buscar" value="Buscar">
  </center>
</form>
