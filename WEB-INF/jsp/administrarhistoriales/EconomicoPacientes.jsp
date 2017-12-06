<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/EconomicoPacientes.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th bgcolor="#F2F2F2"><center>Reportes Economicos de Pacientes por fecha y tipo Seguro</center></th>
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
  
  <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="3"><font size=2><center>SELECCIONE SEGURO</center> </font></th>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Seguro  </td>      
        <td>
          <SELECT NAME="id_seguro">
            <option value="1000">-- Todo Ley 475 --</option>
       	    <c:forEach var="pas" items="${listaSeguro}">
    	      <OPTION value="<c:out value="${pas.id_seguro}"/>" <c:if test="${pas.id_seguro == id_seguro}">selected</c:if>> 
	        <c:out value="${pas.seguro}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
   </table>
   <center>
   
 <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
    <c:if test="${radio=='4'}"> 
          <th> TODOS ( <input type=radio name="radio" value="4" checked> ) INTERNADOS ( <input type=radio name="radio" value="2"> )  DADOS ALTA  ( <input type=radio name="radio" value="3" > ) EMERGENCIAS  ( <input type=radio name="radio" value="1" > ) AMBULATORIOS  ( <input type=radio name="radio" value="0" > )</b></th>
    </c:if>
    <c:if test="${radio=='2'}"> 
          <th> TODOS ( <input type=radio name="radio" value="4" > ) INTERNADOS ( <input type=radio name="radio" value="2" checked> )  DADOS ALTA  ( <input type=radio name="radio" value="3" > ) EMERGENCIAS  ( <input type=radio name="radio" value="1" > ) AMBULATORIOS  ( <input type=radio name="radio" value="0" > )</b></th>
    </c:if>
    <c:if test="${radio=='3'}"> 
          <th>TODOS ( <input type=radio name="radio" value="4" > ) INTERNADOS ( <input type=radio name="radio" value="2" > )  DADOS ALTA  ( <input type=radio name="radio" value="3" checked> ) EMERGENCIAS  ( <input type=radio name="radio" value="1" > ) AMBULATORIOS  ( <input type=radio name="radio" value="0" > )</b></th>
    </c:if>
    <c:if test="${radio=='1'}"> 
          <th>TODOS ( <input type=radio name="radio" value="4" > ) INTERNADOS ( <input type=radio name="radio" value="2" > )  DADOS ALTA  ( <input type=radio name="radio" value="3" > ) EMERGENCIAS  ( <input type=radio name="radio" value="1" checked> ) AMBULATORIOS  ( <input type=radio name="radio" value="0" > )</b></th>
    </c:if>
    <c:if test="${radio=='0'}"> 
          <th>TODOS ( <input type=radio name="radio" value="4" > ) INTERNADOS ( <input type=radio name="radio" value="2" > )  DADOS ALTA  ( <input type=radio name="radio" value="3" > ) EMERGENCIAS  ( <input type=radio name="radio" value="1" > ) AMBULATORIOS  ( <input type=radio name="radio" value="0" checked> )</b></th>
    </c:if>
    </tr>
  </table>  
   <br>
    <input type="submit" name="boton" class="btn btn-primary" value="Consultas">
    <input type="submit" name="boton" class="btn btn-primary" value="Dental">
    <input type="submit" name="boton" class="btn btn-primary" value="Laboratorios">
    <input type="submit" name="boton" class="btn btn-primary" value="LaboratorioGeneral">
    <input type="submit" name="boton" class="btn btn-primary" value="Farmacia">
    <input type="submit" name="boton" class="btn btn-primary" value="Farmacia Eco">
    <input type="submit" name="boton" class="btn btn-primary" value="Enfermeria">
    <input type="hidden" name="id_seguro"               value='<c:out value="${id_seguro}"/>' >         
    <input type="hidden" name="id_consultorio"          value='<c:out value="${lista.id_consultorio}"/>' >      
   </center>
    <br>
   <center>
    <input type="submit" name="boton" class="btn btn-primary"    value="Imprimir">
    <input type="submit" name="boton" class="btn btn-primary"    value="Buscar Resumen">
    <input type="hidden" name="id_seguro"               value='<c:out value="${id_seguro}"/>' >         
    <input type="hidden" name="id_consultorio"          value='<c:out value="${lista.id_consultorio}"/>' >      
   </center>

  <br>
 </form>
 
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> EDAD </th>
    <th bgcolor="#F2F2F2"> TIPO </th>    
    <th bgcolor="#F2F2F2"> COSTO </th>    
    <th bgcolor="#F2F2F2"> VENTA </th>    
    <th bgcolor="#F2F2F2"> Ley475 </th>    
    <th bgcolor="#F2F2F2"> Consul<br>tas </th>
    <th bgcolor="#F2F2F2"> Dental </th>
    <th bgcolor="#F2F2F2"> Serv<br>Medicos </th>
    <th bgcolor="#F2F2F2"> Enfer<br>meria </th>
    <th bgcolor="#F2F2F2"> Labora<br>torios </th>
    <th bgcolor="#F2F2F2"> Imageno<br>logia </th>
    <th bgcolor="#F2F2F2"> Otros<br>Serv </th>
    <th bgcolor="#F2F2F2"> Pagos<br>Deuda</th>
    <th bgcolor="#F2F2F2"> TOTAL</th>
    <th bgcolor="#F2F2F2"> Facturado</th>
    <th bgcolor="#F2F2F2"> ACCION</th>
    </tr>  
   <c:forEach var="lista" items="${milistaAten}" varStatus="contador">
    <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:blue"><b><c:out value="${lista.nombres}"/></b></td>   
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    <c:if test="${lista.expedido=='S'}">
         <form name=formaHA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.expedido}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center">  E   </td>
    </c:if>
    <c:if test="${lista.expedido=='P'}"> 
         <td align="center" style="color:blue"><c:out value="${lista.seguro}"/> </td>
    </c:if>
     
     <td align="center"><b><fmt:formatNumber value="${lista.talla}" maxFractionDigits="2"/><b></td>
     <td align="center"><b><fmt:formatNumber value="${lista.peso}" maxFractionDigits="2"/><b></td>
     <td align="center"><b><c:out value="${lista.id_localidad}"/><b></td>
    
     <td align="center"><c:out value="${lista.suma2}"/></td>
     <td align="center"><c:out value="${lista.suma3}"/></td>
     <td align="center"><c:out value="${lista.suma4}"/></td>
     <td align="center"><c:out value="${lista.suma5}"/></td>       
     <td align="center"><c:out value="${lista.suma6}"/></td>    
     <td align="center"><c:out value="${lista.suma7}"/></td>  
     <td align="center"><c:out value="${lista.suma8}"/></td>  
     <td align="center" style="color:blue"><c:out value="${lista.suma1}"/></td>  
     <td style="font-size:11pt" align="center"><b><fmt:formatNumber value="${lista.peso+lista.id_localidad+lista.suma2+lista.suma3+lista.suma4+lista.suma5+lista.suma6+lista.suma7+lista.suma8}" maxFractionDigits="2"/><b></td>
     <c:if test="${lista.temperatura<lista.peso+lista.id_localidad+lista.suma2+lista.suma3+lista.suma4+lista.suma5+lista.suma6+lista.suma7+lista.suma8}"> 
              <td align="center" style="color:red"><b><fmt:formatNumber value="${lista.temperatura}" maxFractionDigits="2"/></b></td>  
     </c:if>
     <c:if test="${lista.temperatura>=lista.peso+lista.id_localidad+lista.suma2+lista.suma3+lista.suma4+lista.suma5+lista.suma6+lista.suma7+lista.suma8}"> 
              <td align="center" style="color:blue"><b><fmt:formatNumber value="${lista.temperatura}" maxFractionDigits="2"/></b></td>
     </c:if>
     <form name=formaEc<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteResumen.do"/>'>
            <td>     
              <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEc<c:out value="${contador.count}"/>.submit();">Economico</a></div>
              <input type="hidden" name="id_historial"        value='<c:out value="${lista.id_historial}"/>'>
              <input type="hidden" name="id_persona"          value='<c:out value="${lista.id_persona}"/>' >   
              <input type="hidden" name='id_seguro'           value='<c:out value="${lista.id_seguro}"/>'> 
              <input type="hidden" name="id_consultorio"      value='<c:out value="${id_consultorio}"/>' >         
              <input type="hidden" name="id_paciente"         value='<c:out value="${lista.id_paciente}"/>' >
              <input type="hidden" name="expedido"            value='<c:out value="${lista.expedido}"/>' > 
              <input type="hidden" name="fecha"               value=<fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/> >  
              <input type="hidden" name="tipo_medico"         value='<c:out value="${tipo_medico}"/>' >         
              <input type="hidden" name="accion"              value='Economico' >
              <input type="hidden" name="sw1"                 value='actualiza' >
              <input type="hidden" name="swinter"             value='inter' >
            </td>
         </form>   
     </tr>
   </c:forEach>
</table>

<%@ include file="../Inferior.jsp" %>