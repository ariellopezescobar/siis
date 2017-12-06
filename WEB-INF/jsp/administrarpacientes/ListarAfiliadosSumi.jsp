<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ListarAfiliadosSumi.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
    <tr>
      <th bgcolor="#F2F2F2"><center>Buscar Afiliados por fecha, atendidos Asegurados</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive">      
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio  </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final </td>
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
  </center>
  <center>
    <input type="submit" name="boton" class="btn btn-success" value="HCL vacias">
    <input type="submit" name="boton" class="btn btn-success" value="SIIS Niño">
    <input type="submit" name="boton" class="btn btn-success" value="SIIS Mujer">
    <input type="submit" name="boton" class="btn btn-success" value="SIIS Mujer Fertil">
    <input type="submit" name="boton" class="btn btn-success" value="SIIS > 60">
    <input type="submit" name="boton" class="btn btn-success" value="SIIS Discapacidad">
    <br>
    <input type="submit" name="boton" class="btn btn-primary" value="Otros Seguros">
    <input type="submit" name='accion' class="btn btn-primary" value='Produccion/Medico' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>';"> 
    <input type="submit" name="boton" class="btn btn-primary" value="Buscar Todos">
    
  </center>
</form>

<%@ include file="../Inferior.jsp" %>