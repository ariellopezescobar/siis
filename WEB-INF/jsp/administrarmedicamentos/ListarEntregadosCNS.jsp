<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Reporte Entregados por fechas Nro. receta CNS</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Usua </th>
    <th bgcolor="#F2F2F2"> Tipo<br> Rec. </th>
    <th bgcolor="#F2F2F2"> Nro. <br>Rec </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> Nombre Paciente </th>
    <th bgcolor="#F2F2F2"> CodM  </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma<br> Farma</th>
    <th bgcolor="#F2F2F2"> Cant </th> 
    <th bgcolor="#F2F2F2"> Cod<br>Medico </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    </tr>  
   <c:forEach var="lista" items="${listarKardex}" varStatus="contador">
       <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.id_persona}"/>_<c:out value="${lista.tipo}"/>_<c:out value="${lista.id_farmacia}"/></td>
       <c:if test="${lista.cadena5=='E'}">
         <td align="center" style="font-size:13pt; color:blue"><c:out value="${lista.cadena5}"/></td>  
       </c:if>
       <c:if test="${lista.cadena5=='I'}">
         <td align="center" style="font-size:13pt; color:red"><c:out value="${lista.cadena5}"/></td>  
       </c:if>
       <c:if test="${lista.cadena5=='U'}">
         <td align="center" style="font-size:13pt; "><b><c:out value="${lista.cadena5}"/></b></td>  
       </c:if>
       <c:if test="${lista.cadena5!='U' and lista.cadena5!='I' and lista.cadena5!='E'}">
         <td align="center" style="font-size:13pt; "><c:out value="${lista.cadena5}"/></td>  
       </c:if>
       <td align="center" style="font-size:11pt; color:blue"><c:out value="${lista.entradas}"/></td>  
       <td style="font-size:8pt;"><b><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy HH:mm'/></td> 
       <td><c:out value="${lista.cadena1}"/></td>  
       <td><c:out value="${lista.cadena2}"/></td>   
       <td align="center" style="font-size:13pt;"><c:out value="${lista.codsumi}"/></td> 
       <td><c:out value="${lista.medicamento}"/></td> 
       <td><c:out value="${fn:substring(lista.forma_far,0,3)}"/></td>

       <td align="center" style="font-size:12pt; color:red"><c:out value="${lista.salidas}"/></td>
       <td align="center" style="font-size:12pt; color:blue"><c:out value="${lista.cadena6}"/></td>
       <td><c:out value="${lista.cadena7}"/></td>
      </tr>
      </c:forEach> 
        

    </table>

