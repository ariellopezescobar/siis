<%@ include file="../Superior.jsp" %>

<table border=0 >
     <tr >
        <td width="10%" valign="top">
          <table width="100%">
          
           <tr>           
             <td width=60><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>    
           </tr> 
           <tr>                
             <td>  <c:out value="${lista.edad}"/></td> 
             </tr> 
           <tr>                 
             <td><c:out value="${lista.talla}"/></td>
           </tr>
           <tr>                
             <td>  <c:out value="${lista.peso}"/></td> 
           </tr> 
           <tr>              
             <td><c:out value="${lista.temperatura}"/></td>
           </tr>
            <tr>            
             <td><c:out value="${lista.fc}"/></td>
           </tr>
           <tr>        
             <td>  <c:out value="${lista.pa}"/></td> 
           </tr> 
           <tr>            
             <td><c:out value="${lista.fr}"/></td>
           </tr>
          </table> 
        </td>      
       <td width="90%" valign="top">
          <table width="100%" >
           
           <tr valign="top">   
             <td height="50" style="font-size :9pt"><c:out value="${lista.subjetivo}" escapeXml="False"/></td>    
           </tr> 
           
           <tr valign="top">   
             <td height="50" style="font-size :9pt"> <c:out value="${lista.objetivo}" escapeXml="False"/></td> 
           </tr> 
           
           <tr valign="top">   
             <td height="50" style="font-size :9pt"><c:out value="${lista.diagnostico}" escapeXml="False"/></td>
           </tr>
           
           <tr valign="top">   
             <td height="15" style="font-size :9pt"><c:out value="${lista.accion}" escapeXml="False"/></td>
           </tr>
           
           <tr  valign="top">
             <td height="20" style="font-size :8pt">
           <c:forEach var="listadox" items="${listarReceta}">
               <c:out value="${listadox.medicamento}"/>--<c:out value="${listadox.salida}"/>;           
           </c:forEach>
           </td>             
          </tr>  
          </table> 
       </td> 
       
     </tr>
     <tr valign="top">   
           <td height="10" style="font-size :9pt"> HCL : <c:out value="${hcl}"/></td>
           <td valign="top"> 
               <TABLE WIDTH="100%" BORDER=0 valign="top">
                <tr valign="top"  >   
                  <TD height="60" style="font-size :6pt" WIDTH="50%" ALIGN="LEFT"> PACIENTE : <c:out value="${nombres}"/></TD>
                  <TD height="60" style="font-size :6pt" WIDTH="50%" ALIGN="RIGHT"> DIAGNOSTICO POR : <c:out value="${nombre}"/></TD>
                </tr>    
               </TABLE>
           </td>             
      </tr>
    </table> 
