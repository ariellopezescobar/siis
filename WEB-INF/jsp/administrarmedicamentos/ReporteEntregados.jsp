<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="forma" method="POST" action='<c:url value="/ReporteEntregados.do"/>' >
<center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr style="font-size:12pt">
      <th><center>REPORTES DE MEDICAMENTOS DISPENSADOS</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
            <tr>
               <td align="right"> Fecha Inicio</td>	
               <td ><SELECT NAME="diai">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesi">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="anioi">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horai">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutoi">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              
	      <tr><td align="right"> Fecha Final</td>	
               <td ><SELECT NAME="diaf">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesf">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="aniof">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horaf">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutof">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              <!--
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
              -->
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </center>
  <center>
    <c:if test="${codesta!='400035'}">
        <input type="submit" name="boton" style="font-size:11pt" style="font-size:12pt" class="btn btn-success" value="ExportarExcel">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="ReversionExcel">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Restringidos">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="DetalleRestringidos">
        <br>
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="DetalleMed">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="DetalleMedFar">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="ResumenDispensadas">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="ResumenDiarioDispensadas">
        <br>
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="ExportSifarUsua">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="ExportSifarFarmacia">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="ExportSIFAR">
        <br>
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-danger" value="RemisionUsuario">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-danger" value="RemisionFarmacia">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-danger" value="RemisionGeneral">
        <br>
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-default" value="ReporGeneralUsuario">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-default" value="ReporGeneralFarmacia">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-default" value="ReporGeneral">
        <br>
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ReporteXespecialidad">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ReporteXmedico">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ReporteXservicio">
    </c:if>  
    <br>
    <c:if test="${cod_esta!='200010'}">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="VENTA">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="Ley475">
        <input type="submit" name="boton" style="font-size:11pt" class="btn btn-primary" value="OTROS">
    </c:if>
    <br>
    
  </center>
</form>
