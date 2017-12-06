<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/buscarPorFecha.do"/>' >
<center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th><center>BUSQUEDA COBRANZA FARMACIA POR FECHA</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr>  
  	        <td  align="right" bgcolor="#F2F2F2">Fecha inicio :: </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td  align="right" bgcolor="#F2F2F2">Fecha final :: </td>
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
    <input type="submit" name="boton" class="btn btn-primary" value="Buscar">
  </center>
</form>


<%@ include file="../Inferior.jsp" %>