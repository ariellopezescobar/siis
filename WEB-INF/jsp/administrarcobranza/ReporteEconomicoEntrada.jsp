<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />


<form name="forma" method="POST" action='<c:url value="/ReporteEconomico.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th bgcolor="#F2F2F2"><center>BUSQUEDA DE DATOS COBRANZA POR FECHAS</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio:  </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final:  </td>
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
               <tr>
                <td  align="right" bgcolor="#F2F2F2">Rubro de Cobro::  </td>	      
                <td>
                  <SELECT NAME="id_rubro" onchange="javascript:document.actualizar.submit();">
                    <option value="0">-- T O D O S --
                    <c:forEach var="estado" items="${listarRubros}">
                      <OPTION value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>> 
                        <c:out value="${estado.rubro}"/>
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
  
  <c:if test="${tipo_consul!=3}">
     <center>
       <input type="submit" name="boton" class="btn btn-primary btn-lg" value="Buscar">
     </center>
  </c:if>           
  
  <br>
  <center>
  <div style="font-size:15pt" bgcolor="#F2F2F2"><center> REPORTES DETALLADOS SEGUN RUBROS</center></div>

     <c:forEach var="listaRubros" items="${listarRubros}">
        <c:if test="${tipo_consul==3 and listaRubros.id_rubro==3}"> 
          <input class="btn btn-success" type="submit" name='accion'       value='<c:out value="${listaRubros.rubro}"/>'>&nbsp;
          <input type="hidden" name='id_rubro1'    value='<c:out value="${listaRubros.id_rubro}"/>' >
        </c:if> 
        <c:if test="${tipo_consul!=3 }"> 
          <input class="btn btn-success" type="submit" name='accion'       value='<c:out value="${listaRubros.rubro}"/>'>&nbsp;
          <input type="hidden" name='id_rubro1'    value='<c:out value="${listaRubros.id_rubro}"/>' >
        </c:if> 
     </c:forEach>
  </center>           
</form>

<%@ include file="../Inferior.jsp" %>