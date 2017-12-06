<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ListarPacientesAtendidos.do"/>' >
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th>Mostrar Ambulatorio por fecha</th>
    </tr>
    <tr>
      <td>
        <fieldset> 
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
  <c:if test="${tipo_medico == '7'}">
      
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="3"><font size=2>SELECCIONE PERSONAL </font></th>
      </tr>
      <tr>
        <td class="etiqueta">Personal <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --
            <c:if test="${rol != '36' }"> 
       	    <c:forEach var="pas" items="${listaPersonas}">
    	      <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${pas.nombres}"/>__{<c:out value="${pas.id_persona}"/>-<c:out value="${pas.cod_esta}"/>}<c:out value="${pas.consultorio}"/>
	      </option>
	    </c:forEach>
            </c:if>
            
            <c:if test="${rol == '36' }"> 
       	    <c:forEach var="pas" items="${listaPersonas}">
              <c:if test="${(pas.id_consultorio==17 or pas.id_consultorio==19 or pas.id_consultorio==23 or pas.id_consultorio==45) and pas.urgencias==1}">      
                  <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
                    <c:out value="${pas.nombres}"/>__{<c:out value="${pas.id_persona}"/>-<c:out value="${pas.cod_esta}"/>}<c:out value="${pas.consultorio}"/>
                  </option>
              </c:if>
	    </c:forEach>
            </c:if>
            
          </SELECT>  
        </td>
      </tr>
   </table>
   <center>
    <input type="submit" name="boton" class="buscar"    value="Resumen">
    <c:if test="${rol != '36' }">  
        <input type="submit" name="boton" class="buscar"    value="ResumenEnfer">
        <input type="submit" name="boton" class="buscar" accion="Adolecentes"  value="Adolecentes">
        <input type="submit" name="boton" class="buscar" accion="ResumenSUMI"  value="ResumenSUMI">
        <input type="submit" name="boton" class="buscar" accion="ResumenMedPrestacion"  value="ResumenMedPrestacion">
        <input type="submit" name="boton" class="buscar" accion="ResumenPrestacion"  value="ResumenPrestacion">
        <br>
        <input type="submit" name="boton" class="buscar" accion="ResumenMedPrestacion"  value="ResumenMedicaPartos-Cesareas">
        <input type="submit" name="boton" class="buscar" accion="ResumenPrestacion"  value="ResumenPrestacionPartos-Cesareas">
        <input type="submit" name="boton" class="buscar" accion="ResumenSinMedicamentos"  value="PrestacionesSinMedicamentos">
        <input type="submit" name="boton" class="buscar" accion="ResumenDuplicadas"  value="PrestacionesDuplicadas">
    </c:if>
    <input type="hidden" name="id_persona"              value='<c:out value="${id_persona}"/>' >         
    <input type="hidden" name="id_consultorio"          value='<c:out value="${lista.id_consultorio}"/>' >
    <input type="hidden" name="id_paciente"             value='<c:out value="${lista.id_paciente}"/>' >      
   </center>
  </c:if>
  <c:if test="${tipo_medico == '10' or tipo_medico == '11' or tipo_medico == '12'}">
    <center>  
      <input type="submit" name="boton" class="buscar" value="Resumen Laboratorios">
    </center>  
  </c:if>
  <br>
  <c:if test="${rol != '36' }">  
  <center>
    <input type="submit" name="boton" class="buscar" value="ResumenPrestaciones">
    <input type="submit" name="boton" class="buscar" value="AdultoMayor">
    <input type="submit" name="boton" class="buscar" value="Neonatos">
    <input type="submit" name="boton" class="buscar" value="Pediatricos">
    <input type="submit" name="boton" class="buscar" value="Mujer">
  </center>
  </c:if>
</form>


<%@ include file="../Inferior.jsp" %>