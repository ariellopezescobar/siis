<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
    <table class="table table-striped table-hover table-bordered table-condensed table-responsive" width="100%"> 
    <tr>
       <td align="center" bgcolor="CAD3E4">HCL : <c:out value="${lista.hcl}"/></td> 
       <td bgcolor="CAD3E4">Nombre : <c:out value="${lista.nombres}"/></td>      
    </tr> 
    <tr> 
        <td width="20%">
          <table class="table table-striped table-hover table-bordered table-condensed table-responsive" width="90%"> 
           <tr>   
             <th align="left"> Fecha  </th>  
             <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>    
           </tr> 
           <tr>   
             <th align="left"> Edad  </th>    
             <td>  <c:out value="${lista.edad}"/></td> 
             </tr> 
           <tr>   
             <th align="left"> Talla  </th>    
             <td><c:out value="${lista.talla}"/></td>
           </tr>
           <tr>   
             <th align="left"> Peso  </th>    
             <td>  <c:out value="${lista.peso}"/></td> 
           </tr> 
           <tr>   
             <th align="left"> TEMP.  </th>    
             <td><c:out value="${lista.temperatura}"/></td>
           </tr>
            <tr>   
             <th align="left"> FC  </th>    
             <td><c:out value="${lista.fc}"/></td>
           </tr>
           <tr>   
             <th align="left"> PA  </th>    
             <td>  <c:out value="${lista.pa}"/></td> 
           </tr> 
           <tr>   
             <th align="left"> FR  </th>    
             <td><c:out value="${lista.fr}"/></td>
           </tr>
          </table> 
        </td>      
       <td width="70%">
          <table class="tabla" width="100%">
           <tr>   
             <th align="left"> Subjetivo  </th>  
           </tr> 
           <tr>   
             <td><c:out value="${lista.subjetivo}" escapeXml="False"/></td>    
           </tr> 
           <tr>   
             <th align="left"> Objetivo  </th>    
           </tr> 
           <tr>   
             <td> <c:out value="${lista.objetivo}" escapeXml="False"/></td> 
             </tr> 
           <tr>   
             <th align="left"> Analisis  </th>    
           </tr> 
           <tr>   
             <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>
           </tr>
           <tr>   
             <th align="left"> Plan de Accion  </th>    
           </tr> 
           <tr>   
             <td><c:out value="${lista.accion}" escapeXml="False"/></td>
           </tr>
          </table> 
       </td> 
       
     </tr>
    </table> 
    <br>
   </c:forEach>
