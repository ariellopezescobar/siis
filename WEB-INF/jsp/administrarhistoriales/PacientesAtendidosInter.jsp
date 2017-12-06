<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ListarPacientesAtendidosInter.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th><center>Mostrar Detalle de Pacientes Internados por fecha</center></th>
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
	        <td align="right" bgcolor="#F2F2F2">Fecha final  </td>
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
              <tr>
                <td align="right" bgcolor="#F2F2F2">Servicio Internacion  </td>     
                <td>
                  <SELECT NAME="id_sala" onchange="javascript:document.adicionarcolegio.submit();">
                    <option value="0">-- seleccione --
                    <c:forEach var="estado" items="${listarSalas}">
                      <option value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>>
                        <c:out value="${estado.sala}"/>
                      </option></c:forEach></SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <c:if test="${tipo_medico == '7'}">
  <table class="formulario" align="center" >
      
   </table>
   <center>
    <input type="submit" name="boton" class="btn btn-primary btn-lg"  value="Resumen">
    <input type="hidden" name="id_persona"              value=<c:out value="${id_persona}"/> >         
    <input type="hidden" name="id_consultorio"          value=<c:out value="${lista.id_consultorio}"/> >         
    <input type="hidden" name="id_paciente"             value=<c:out value="${lista.id_paciente}"/> >      
   </center>
  </c:if>
  <br>
  
</form>


<%@ include file="../Inferior.jsp" %>