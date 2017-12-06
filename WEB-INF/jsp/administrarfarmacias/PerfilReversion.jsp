<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Lista de Medicamentos a ser Revertidos</div>
<br>



<table class="tabla">
  <tr>
    <th> No </th>
    <th> FECHA </th>
    <th> NOMBRE PACIENTE </th>    
    <th> CODIGO </th>
    <th> MEDICAMENTO </th>
    <th> FORMA_FAR </th>    
    <th> Cantidad<br>Prescrita </th>
    <th> Cantidad<br>Revertir </th>
    <th> Medico Tratante </th>    
    
    </tr>  
   <c:forEach var="listaI" items="${listarPerfilRev}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listaI.fecha}" pattern='dd/MM/yyyy'/>&nbsp;<b><fmt:formatDate value="${listaI.fecha}" pattern='HH:mm'/></b></td>
       <td><b><c:out value="${listaI.cadena2}"/><b></td>    
       <td><c:out value="${listaI.codsumi}"/></td>  
       <td><c:out value="${listaI.medicamento}"/></td>  
       <td><c:out value="${listaI.forma_far}"/></td>  
       <td align="center"><c:out value="${listaI.suma1}"/></td>  
       <td style="color:blue;font-size:14pt" align="center"><b><c:out value="${listaI.suma4}"/><b></td>  
       <td><c:out value="${fn:substring(listaI.cadena3,0,30)}"/></td>   
    
   </c:forEach>
</table>

