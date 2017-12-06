<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<script type="text/javascript">
$(function () {
        $('#container').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Vacunacion Historica Niños y Niñas'
            },
            subtitle: {
                text: 'Fuente: SIIS'
            },
            xAxis: {
                categories: [
                    'BCG < 1 año',
                    'Polio 1ra',
                    'Polio 2da',
                    'Polio 3ra',
                    'Penta 1ra',
                    'Penta 2da',
                    'Penta 3ra',
                    'Antirotavirus 1ra',
                    'Antirotavirus 2da',
                    'SRP 12 a 23 meses'
                ]
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Pacientes (niños/as)'
                }
            },
            
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y} </b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.1,
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            series: [{
                name: 'Femenino',
                data: [<c:forEach var="calidad" items="${grafica1}" varStatus="contador">
                            <c:out value="${calidad.suma1}"/>,
                            <c:out value="${calidad.suma3}"/>,
                            <c:out value="${calidad.suma5}"/>,
                            <c:out value="${calidad.suma7}"/>,
                            <c:out value="${calidad.suma9}"/>,
                            <c:out value="${calidad.suma11}"/>,
                            <c:out value="${calidad.suma13}"/>,
                            <c:out value="${calidad.suma15}"/>,
                            <c:out value="${calidad.suma17}"/>,
                            <c:out value="${calidad.suma19}"/>
                       </c:forEach>]
               }, {
                name: 'Masculino',
                data: [<c:forEach var="calidad" items="${grafica1}" varStatus="contador">
                            <c:out value="${calidad.suma2}"/>,
                            <c:out value="${calidad.suma4}"/>,
                            <c:out value="${calidad.suma6}"/>,
                            <c:out value="${calidad.suma8}"/>,
                            <c:out value="${calidad.suma10}"/>,
                            <c:out value="${calidad.suma12}"/>,
                            <c:out value="${calidad.suma14}"/>,
                            <c:out value="${calidad.suma16}"/>,
                            <c:out value="${calidad.suma18}"/>,
                            <c:out value="${calidad.suma20}"/>
                       </c:forEach>]
            }]
        });
    });
    
</script>
              
<form name="forma" method="POST" action='<c:url value="/Graficas.do"/>' >
<center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="2"><center>BUSQUEDA DE DATOS APARA GRAFICA</center></th>
    </tr>
    <tr><td><table><tr>
                  <td class="etiqueta">Fecha inicio  </td>
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
                         Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
                   </td>
                   </tr>
             </table></td>
       <td><table><tr>
	          <td class="etiqueta">Fecha final  </td>
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
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
             </tr></table>
       </td></tr>
  </table>
  </center>
  <center>
    <input type="submit" name="boton" class="btn btn-primary" value="Poblacion Atendida">  
    <input type="submit" name="boton" class="btn btn-primary" value="Poblacion Atendida Especialidad">  
    <c:if test="${rol != '36'}">
        <input type="submit" name="boton" class="btn btn-primary" value="Vacunacion">  
    </c:if>  
    <input type="submit" name="boton" class="btn btn-primary" value="Produccion Servicios">
  </center>
</form>


<c:if test="${grafica1 != null}">
<script src="js/highcharts.js"></script>
            <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</c:if>            
            
<%@ include file="../Inferior.jsp" %>