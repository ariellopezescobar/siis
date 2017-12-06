<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="forma" method="POST" action='<c:url value="/ListarRecibidos.do"/>' >
 <CENTER>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr style="font-size:12pt">
      <th><center>Buscar Medicamentos recepcionados por fecha (Ajustes)</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr style="font-size:11pt">
              <td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
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
              
	      <tr style="font-size:11pt">
               <td align="right" bgcolor="#F2F2F2"><b> Fecha Final</b></td>	
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
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </CENTER>
  <center>
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Entradas-Recepcion">  
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Ajustes(+)">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Ajustes(-)">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Traspasos">
    <br><br>
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="Ver Recepcion">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="Recepcion Detalle">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="Ver Ajustes(+)">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="Ver Ajustes(-)">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-warning" value="Ver Traspasos">
  </center>
</form>
