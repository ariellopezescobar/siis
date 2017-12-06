<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <div style="font-size:15pt"> REPORTE CIE10 POR GRUPOS ETARIOS</div>
   <br>
 <table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="8" style="font-size:15pt" > Personal : <font color="blue"><c:out value="${Nombre}"/></font>  <font color="blue"><c:out value="${Paterno}"/></font>  <font color="blue"><c:out value="${Materno}"/></font></th>
  </tr>
  <tr>
    <th colspan="5" style="font-size:15pt" > EDAD <font color="blue"><c:out value="${num1}"/></font> Años <font color="blue"><c:out value="${numes1}"/></font> meses A MENORES DE <font color="blue"><c:out value="${num2}"/></font> Años <font color="blue"><c:out value="${numes2}"/></font>meses</th>
    <form name="imprimircie10" method="POST" action='<c:url value="/ReporteCIE10.do"/>' >
       <th colspan="3"> <font style="font-size:9pt;color:green">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Primeras</font>
         <input type="text" name="numero" maxlength="2" size="2" value="0">
         <input class="btn btn-primary" type="submit" class="imprimir" name='boton'  value='ImprimirCie'>
         <input type="hidden" name='fecha1'                  value='<fmt:formatDate value="${fecha1}" pattern='dd/MM/yyyy'/>'>
         <input type="hidden" name='fecha2'                  value='<fmt:formatDate value="${fecha2}" pattern='dd/MM/yyyy'/>'>
         <input type="hidden" name='num1'                    value='<c:out value="${num1}"/>'>
         <input type="hidden" name='num2'                    value='<c:out value="${num2}"/>'>
         <input type="hidden" name='id_persona'              value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='tipo'                    value='<c:out value="${tipo}"/>'>
       </th>
    </form>
  </tr>
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO CIE10 </th>
    <th bgcolor="#F2F2F2"> CODIGO CIE10</th>    
    <th bgcolor="#F2F2F2"> NUEVOS</th>
    <th bgcolor="#F2F2F2"> REPETIDOS</th> 
    <th bgcolor="#F2F2F2"> VARONES</th> 
    <th bgcolor="#F2F2F2"> MUJERES </th> 
    <th bgcolor="#F2F2F2"> TOTAL </th>
   </tr>  
   <c:forEach var="lista1" items="${lista1}" varStatus="contador">
      <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista1.tipoconsulta}"/></td>    
       <td><c:out value="${lista1.tipo}"/></td> 
       <td><c:out value="${lista1.suma4}"/></td>  
       <td><c:out value="${lista1.suma5}"/></td>  
       <td><c:out value="${lista1.suma1}"/></td>    
       <td><c:out value="${lista1.suma2}"/></td>    
       <td><c:out value="${lista1.suma3}"/></td>    
      </tr>    
   </c:forEach>
       <tr><td colspan="3" align="right">Sumas Totales</td>
           <td style="color:blue; font-size:12pt"><b><c:out value="${sumn}"/></b></td>
           <td style="color:blue; font-size:12pt"><b><c:out value="${sumr}"/></b></td>
           <td style="color:blue; font-size:12pt"><b><c:out value="${summ}"/></b></td>
           <td style="color:blue; font-size:12pt"><b><c:out value="${sumf}"/></b></td>
           <td style="color:blue; font-size:12pt"><b><c:out value="${sum}"/></b></td>
       </tr>
 </table>
