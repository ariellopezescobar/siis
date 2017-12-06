<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ReporteSnis.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th><center>Reporte de Censo Diario del Mes</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive"> 
              <tr>  
  	        <td  align="right" bgcolor="#F2F2F2">Fecha Mes : </td>
                <td>
                <SELECT NAME="mes">
                   <option value="0">Elija Mes</option>
                   <option value="1">Enero</option>
                   <option value="2">Febrero</option>
                   <option value="3">Marzo</option>
                   <option value="4">Abril</option>
                   <option value="5">Mayo</option>
                   <option value="6">Junio</option>
                   <option value="7">Julio</option>
                   <option value="8">Agosto</option>
                   <option value="9">Septiembre</option>
                   <option value="10">Octubre</option>
                   <option value="11">Noviembre</option>
                   <option value="12">Diciembre</option>
                 </SELECT>
                 </td>
	      </tr>
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha Año </td>
                <td>
	         <SELECT NAME="anio">
                     <c:forEach var="anios" items="${anios}">
                       <OPTION value="<c:out value="${anios}"/>">Gestion <c:out value="${anios}"/>
                     </c:forEach>
                  </SELECT>
               </td>
	      </tr>
              <tr>
                <td align="right" bgcolor="#F2F2F2">Elegir Sala  </td>	      
                <td>
                  <SELECT NAME="id_sala" onchange="javascript:document.adicionarcolegio.submit();">
                    <option value="0">-- seleccione --
                    <c:forEach var="estado" items="${listarSalas}">
                      <option value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>>
                        <c:out value="${estado.sala}"/>_<c:out value="${estado.id_sala}"/>
                      </option></c:forEach></SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </center>
  <center>
    <input type="submit" name='accion' class="btn btn-primary" value='Cuaderno Internaciones' onclick="document.forma.action='<c:url value="/VerCuaderno5.do"/>'">          
    <input type="submit" name='accion' class="btn btn-primary" value='Buscar Censo' onclick="document.forma.action='<c:url value="/ControlCalidad.do"/>'">          
  </center>
</form>

<%@ include file="../Inferior.jsp" %>