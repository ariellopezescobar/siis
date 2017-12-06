<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="forma" method="POST" action='<c:url value="/ListarEntregados.do"/>' >
 <CENTER>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr style="font-size:12pt">
      <th><center>Buscar Medicamentos entregados por fecha</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr style="font-size:11pt"><td align="right"><b> Fecha Inicio</b></td>
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
                     Hora&nbsp;&nbsp;&nbsp;Minuto</font>    
               </td>
              </tr>
              
	      <tr style="font-size:11pt"><td align="right"><b> Fecha Final</b></td>
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
                     Hora&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              <tr style="font-size:11pt">
              <td align=right ><b>Folio/Nombre</b></td>
              <td ><div class="form-inline"><input class="form-control" type="text" name="nombre" size="40" onblur='validar(nombre,"A9")'></div></td>
            </tr> 
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </CENTER>
  <center>
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Internados">
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-success" value="Buscar">
  </center>
</form>

<div class="form-inline" style="font-size:14pt"><center> Buscar Reporte Segun Medicanento Dispensado</center></div>
<form name="formamm" method="POST" action='<c:url value="/ControlCalidad.do"/>' >
  <center>
    <input type="submit" name='accion' style="font-size:11pt" class="btn btn-warning" value='Segun Medicamento' onclick="document.formamm.action='<c:url value="/ControlCalidad.do"/>'">  
    <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
    <input type="hidden" name="valor_1"         value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
    <input type="hidden" name="valor_2"         value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
  </center>
</form>  