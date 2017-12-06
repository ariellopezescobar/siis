<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Lista de Marcacones Biometricas</div>
<br>
   
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> HORA 1 </th> 
    <th> HORA 2 </th>
    <th> HORA 3 </th>
    <th> HORA 4 </th>
    </tr>  
   <c:forEach var="lista" items="${listabio}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
       <td align="center"><fmt:formatDate value="${lista.fec_nacimiento}" pattern='HH:mm'/></td>
       <c:if test="${lista.id_persona>0}">
           <td align="center"><fmt:formatDate value="${lista.fec_nacimiento}" pattern='HH:mm'/></td>
       </c:if>
      
       
     <!--
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarFarmacia.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	 <input type="hidden" name="id_persona"  value='<c:out value="${id_persona}"/>' >         
	 <input type="hidden" name="accion"      value='Consultar' >
	 <input type="hidden" name="sw"          value='1' >
       </td>
     </form>
     -->
   </c:forEach>
</table>