<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="forma" method="POST" action='<c:url value="/ListarHistoPacientes.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th><center>Impresion de Historiales</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive">	     
              <tr>  
  	        <td  align="right" bgcolor="#F2F2F2">Fecha inicio  </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td  align="right" bgcolor="#F2F2F2">Fecha final  </td>
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
              <tr>
                <td  align="right" bgcolor="#F2F2F2">Personal  </td>      
                <td>
                  <SELECT NAME="id_persona">
                    <option value="0">-- seleccione --
                    <c:forEach var="pas" items="${listaPersonas}">
                      <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
                        <c:out value="${pas.nombres}"/>__{<c:out value="${pas.id_persona}"/>}<c:out value="${pas.consultorio}"/>
                      </option>
                    </c:forEach>
                  </SELECT>  
                </td>
              </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </center>
  <center>
    <input type="submit" name="accion" class="btn btn-primary btn-lg" value="Imprimir HCL">
      
  </center>
</form>



<table>
<tr>
<td width="50%">    
    
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> NRO </th>
   <th> FECHA </th>
   <th> PACIENTE </th>
   <th> MEDICO </th>      
   <th> IMPRIMIR</th>
  </tr>  
   <c:forEach var="lista" items="${listaHistoPacientes}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>  
       <td><c:out value="${lista.nombre}"/></td>       
    <form name=formaEco<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistoPacientes.do"/>'>
       <td>     
         <div class="ver"><a href="javascript:document.formaEco<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name="id_historial" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="hcl" value=<c:out value="${lista.hcl}"/> >
         <input type="hidden" name="nombres" value="<c:out value="${lista.nombres}"/>" >         
         <input type="hidden" name="nombre" value="<c:out value="${lista.nombre}"/>" >         
         <input type="hidden" name="accion" value='imprimir' >
       </td>
     </form>
     </tr>  
   </c:forEach>  

</table>
</td>    
<td width="50%">    
      
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> FECHA </th>
   <th> PACIENTE </th>      
   <th> MEDICO </th>      
   <th> IMPRIMIR</th>
  </tr>  
   <c:forEach var="lista" items="${listaHistoPacientesImp}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/></td>
       <td><c:out value="${lista.nombres}"/></td>  
       <td><c:out value="${lista.nombre}"/></td>       
    <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistoPacientes.do"/>'>
       <td>     
         <div class="ver"><a href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name="id_historial" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="hcl" value=<c:out value="${lista.hcl}"/> >
         <input type="hidden" name="nombres" value="<c:out value="${lista.nombres}"/>" >         
         <input type="hidden" name="nombre" value="<c:out value="${lista.nombre}"/>" >                           
         <input type="hidden" name="accion" value='imprimir' >
       </td>
     </form>
    </tr>  
   </c:forEach>  

</table>
  
</td>    
</tr>
</table>