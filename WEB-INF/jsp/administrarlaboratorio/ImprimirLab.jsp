<%@ include file="../Superior.jsp" %>

<table border=0 >
     <tr >
        <td width="100%" valign="top">
          <table  border=0 width="450">
            <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr> <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
            <c:forEach var="datoLab" items="${datosLab}">
            <tr>
                <td style="font-size:14pt" colspan=2 align="center">&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${datoLab.id_cuaderno}"/></td>
                <td style="font-size:14pt" colspan=2 align="left">  <fmt:formatDate value="${datoLab.fechae}" pattern='dd/MM/yyyy'/></td>
                <td style="font-size:14pt" colspan=2 align="center"> <c:out value="${datos.hcl}"/></td> 
            </tr>
            <tr>    
              <td style="font-size:14pt" colspan=2 align="right">  ECOGRAFIA</td>
              <td style="font-size:14pt" colspan=2 align="right">  &nbsp;</td> 
              <td style="font-size:14pt" colspan=2 align="right">  <c:out value="${dato.localidad}"/></td> 
            </tr>
            <tr>    
              <td style="font-size:14pt" colspan=2 align="right"> <c:out value="${dato.localidad}"/></td>
              <td style="font-size:14pt" colspan=2 align="right">  &nbsp;</td> 
              <td style="font-size:14pt" colspan=2 align="right">  &nbsp;</td> 
            </tr>
             <tr>    
              <td style="font-size:14pt" colspan=2 align="right"> <c:out value="${dato.red}"/></td>
              <td style="font-size:14pt" colspan=2 align="right">  <c:out value="${dato.red}"/></td> 
              <td style="font-size:14pt" colspan=2 align="right">  &nbsp;</td> 
            </tr>
            <tr>
                <td style="font-size:6pt">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
            </tr>
             <tr>                
              <td style="font-size:14pt" colspan=4 align="center">  <c:out value="${datos.nombres}"/></td>
              <td style="font-size:14pt" align="right">  <c:out value="${datoLab.id_tipo_sexo}"/></td> 
              <td style="font-size:14pt" align="right">  <c:out value="${datosHis.edad}"/></td>
            </tr>
            </c:forEach>
            <tr>                
              <td style="font-size:10pt" colspan=6 align="center">  <c:out value="${dato.establecimiento}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dr:&nbsp;<c:out value="${datosMed.nombres}"/></td>
            </tr>
            <tr>                
              <td colspan=6 align="left">  </td> 
            </tr>
          </table> 
        </td>      
      <table border=0 width="480" align="left">
           <c:forEach var="datoLab2" items="${datosLab}">
           <tr valign="top" >   
             <td style="font-size:12pt " align="justify"><c:out value="${datoLab2.resultado}" escapeXml="False"/></td>    
           </tr>  
           </c:forEach>
      </table> 
     </tr>
 <!--    <tr valign="top">   
           <td valign="top"> 
               <TABLE style="font-size :10pt" WIDTH="200" BORDER=1 valign="top">
                <tr valign="top" style="font-size :10pt" >   
                  <TD style="font-size :10pt">&nbsp;
                        <c:out value="${dato.nombres}"/></TD>
                </tr>    
               </TABLE>
           </td>             
      </tr>    -->
    </table> 
