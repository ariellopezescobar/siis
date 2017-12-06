<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Salas y Camas</div>

<table><tr><td>
    <form name=forma method=post action='<c:url value="/ListarSalas.do"/>'>
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
      </div>
    </form>
   </td><tr></table>

<table class="tabla" width="100%" border="2">
   <tr> 
     <td align="center">LIBRE</td>
     <td align="center" bgColor="#FF0009">OCUPADO</td>
   </tr>
  
 </table>    
 
 <table class="tabla" width="100%" border="2">
   <tr>
   <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==1}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
             <!--<c:forEach var="listai" items="${milistaI}" varStatus="contadori">
                <c:if test="${lista.id_cama==listai.id_cargo}"> 
                  <b><c:out value="${listai.nombres}"/></b>  
               </c:if></td>
             </c:forEach> -->    
        </c:if></tr> 
     </c:forEach>
   </table></td>
   <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==2}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
        </c:if></tr> 
     </c:forEach>
   </table></td>
   <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==3}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
        </c:if></tr> 
     </c:forEach>
   </table></td>
   <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==4}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
        </c:if></tr> 
     </c:forEach>
     </table></td>
     <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==5}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
        </c:if></tr> 
     </c:forEach>
   </table></td>
   <td><table class="tabla" width="100%" border="2">
     <c:forEach var="lista" items="${listarCamas}" varStatus="contador">
        <tr><c:if test="${lista.id_sala==6}">
             <td height="50pt" <c:if test="${lista.estado==1}">bgColor="#FF0009"</c:if>><c:out value="${lista.sala}"/>/<c:out value="${lista.cama}"/>
        </c:if></tr> 
     </c:forEach>
   </table></td>
   </table></td>
   </tr>
     
 </table>    
