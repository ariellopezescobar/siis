<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adiciontransf" action="<c:url value="/SolSangre.do"/>" method="POST">
<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
    <th colspan="3"><center>DATOS PARA SOLICITUD DE SANGRE</center></th>
  </tr>
  <tr>    
     <td colspan="3" bgcolor="#A9F5F2">Nombres:: <c:out value = "${datosp.nombres}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hcl:: <c:out value = "${datosp.hcl}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Matricula:: <c:out value = "${datosp.nro_registro}"/></td>
  </tr>
  <tr >
    <td valign="top" >
    <table class="table table-striped table-bordered table-condensed table-responsive"> 
      <tr>
        <th colspan="12"><font size=2><center>DATOS DE SOLICITUD DE SANGRE</center></font></th>
      </tr>
      
      <tr>
        <td style="font-size:9pt">Fecha Solicitud  </td>
        <td style="font-size:9pt">::</td>	      
        <td colspan="2">
           <SELECT NAME="diai">
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
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>
  
      <td colspan="2"><font size="2">Urgencia</font> 	      
        <SELECT NAME="urgencia">
                <c:if test="${listaS.suma1 != '1'}">
                    <option value="0" selected> NO </option>
                    <option value="1" > SI</option>
                </c:if>    
                <c:if test="${listaS.suma1 == '1'}">
                    <option value="0" selected> SI </option>
                    <option value="1" > NO</option>
                </c:if>   
          </SELECT></td>
        <td colspan="2"><font size="2">DIA </font>	      
        <SELECT NAME="endia">
                <c:if test="${listaS.suma2 != '1'}">
                    <option value="0" selected> NO </option>
                    <option value="1" > SI</option>
                </c:if>    
                <c:if test="${listaS.suma2 == '1'}">
                    <option value="0" selected> SI </option>
                    <option value="1" > NO</option>
                </c:if>  
          </SELECT></td>
        <td colspan="2"><font size="2">Programado</font>	      
        <SELECT NAME="programa">
                <c:if test="${listaS.suma3 != '1'}">
                    <option value="0" selected> NO </option>
                    <option value="1" > SI</option>
                </c:if>    
                <c:if test="${listaS.suma3 == '1'}">
                    <option value="0" selected> SI </option>
                    <option value="1" > NO</option>
                </c:if>  
          </SELECT></td>
        <td colspan="2"><font size="2">Quirofano  </font>
        <SELECT NAME="quirofano">
                <c:if test="${listaS.suma4 != '1'}">
                    <option value="0" selected> NO </option>
                    <option value="1" > SI</option>
                </c:if>    
                <c:if test="${listaS.suma4 == '1'}">
                    <option value="0" selected> SI </option>
                    <option value="1" > NO</option>
                </c:if>  
          </SELECT></td>
       </tr> 
   </table>
    
  <table class="formulario" width="100%">  
      <tr>
       <td style="font-size:9pt">Hemoblibina (Hb)  </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="hb" size="10" maxlength="10" value="<c:out value="${hg}"/>" placeholder="0.."/></td>
       
       <td style="font-size:9pt">Plaquetas  </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="plaqueta" size="10" maxlength="10" value="<c:out value="${plaqueta}"/>" placeholder="0.."/></td>
       
       <td style="font-size:9pt">TTPA  </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="ttpa" size="10" maxlength="10" value="<c:out value="${ttpa}"/>" placeholder="0.."/></td>
    </tr> 
    <tr>
       <td style="font-size:9pt">Hematocrito  (Hto)  </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="hto" size="10" maxlength="10" value="<c:out value="${hto}"/>" placeholder="0.."/></td>
       
       <td style="font-size:9pt">Leococitos  </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="leucocito" size="10" maxlength="10" value="<c:out value="${leucocito}"/>" placeholder="0.."/></td>
       
       <td style="font-size:9pt">T. Protombina </td>
       <td style="font-size:9pt">::</td>
       <td ><input type="text" name="protombina" size="10" maxlength="10" value="<c:out value="${protombina}"/>" placeholder="0.."/></td>
     </tr> 
  </table>
    
  <table class="formulario" width="100%">     
       <tr>
      <td style="font-size:9pt">Transfusiones Previas  </td>
        <td style="font-size:9pt">::</td>
                <td><SELECT NAME="trans">
                    <c:if test="${listaS.suma11 != '1' and listaS.suma11 != '2'}">
                        <option value="0" selected> Desconoce </option>
                        <option value="1" > SI </option>
                        <option value="2" > NO </option>
                    </c:if>    
                    <c:if test="${listaS.suma11 == '1'}">
                        <option value="1" selected> SI </option>
                        <option value="2" > NO </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                    <c:if test="${listaS.suma11 == '2'}">
                        <option value="2" selected> NO </option>
                        <option value="1" > SI </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                </SELECT>
                <SELECT NAME="notrans">
                   <c:forEach var="notra" items="${notra}">
    	               <option value="<c:out value="${notra}"/>" <c:if test="${notra == notras}">selected</c:if>> 
	               <c:out value="${notra}"/></option>
                   </c:forEach>
                </SELECT>   
                </td>
        <td style="font-size:9pt">Reaciones transfu. previas  </td>
        <td style="font-size:9pt">::</td>
                <td><SELECT NAME="reaccion">
                    <c:if test="${listaS.suma12 != '1' and listaS.suma12 != '2'}">
                        <option value="0" selected> Desconoce </option>
                        <option value="1" > SI </option>
                        <option value="2" > NO </option>
                    </c:if>    
                    <c:if test="${listaS.suma12 == '1'}">
                        <option value="1" selected> SI </option>
                        <option value="2" > NO </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                    <c:if test="${listaS.suma12 == '2'}">
                        <option value="2" selected> NO </option>
                        <option value="1" > SI </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                </SELECT></td>
        <td style="font-size:9pt">Embarazo Actual  </td>
        <td style="font-size:9pt">::</td>	      
                <td><SELECT NAME="embarazo">
                    <c:if test="${listaS.suma13 != '1' and listaS.suma13 != '2'}">
                        <option value="0" selected> Desconoce </option>
                        <option value="1" > SI </option>
                        <option value="2" > NO </option>
                    </c:if>    
                    <c:if test="${listaS.suma13 == '1'}">
                        <option value="1" selected> SI </option>
                        <option value="2" > NO </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                    <c:if test="${listaS.suma13 == '2'}">
                        <option value="2" selected> NO </option>
                        <option value="1" > SI </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                </SELECT></td>
        <td style="font-size:9pt">Antecedentes de EHRN  </td>
        <td style="font-size:9pt">::</td>	      
                <td><SELECT NAME="ehnr">
                    <c:if test="${listaS.suma14 != '1' and listaS.suma14 != '2'}">
                        <option value="0" selected> Desconoce </option>
                        <option value="1" > SI </option>
                        <option value="2" > NO </option>
                    </c:if>    
                    <c:if test="${listaS.suma14 == '1'}">
                        <option value="1" selected> SI </option>
                        <option value="2" > NO </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                    <c:if test="${listaS.suma14 == '2'}">
                        <option value="2" selected> NO </option>
                        <option value="1" > SI </option>
                        <option value="0" > Desconoce </option>
                    </c:if> 
                </SELECT></td>
       </tr> 
       <tr>
       <td style="font-size:9pt">Otras Antecedentes de importancia  </td>
       <td style="font-size:9pt">::</td>	
       <td colspan="12"><input type="text" name="otros" size="150" maxlength="150" value="<c:out value="${otros}"/>" placeholder="Describir.."/></td>
    </tr>
       <tr>
       <td style="font-size:9pt">Diagnostico  </td>
       <td style="font-size:9pt">::</td>	
       <td colspan="12"><textarea name="diagnostico" rows="1" cols="40" style="width: 100%""/><c:out value = "${diagnostico}" escapeXml="False"/></textarea></td>
    </tr>
    </table>
    </td>
  </tr>
  <tr>
  <td>
    
  <table class="formulario" width="100%">
     <tr>
       <td style="font-size:9pt"> SANGRE TOTAL  ST:: </td>
       <td><SELECT NAME="st">
                <c:if test="${listaS.suma15 != '1' and listaS.suma15 != '2' and listaS.suma15 != '3' and listaS.suma15 != '4' and listaS.suma15 != '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma15 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma15 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma15 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma15 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma15 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volst">
                <c:if test="${listaS.suma16 != '50' or listaS.suma15 == '100' or listaS.suma15 == '300' or listaS.suma15 == '500' or listaS.suma15 == '800' or listaS.suma15 == '1000' or listaS.suma15 == '2000' or listaS.suma15 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma16 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
                    
          </SELECT></td>      
       <td style="font-size:9pt">CONCENTRADO GLOBULOS ROJOS (PAQUETE GLOBULAR)  PG:: </td>
       <td><SELECT NAME="pg">
                    <c:if test="${listaS.suma17 != '1' or listaS.suma17 == '2' or listaS.suma17 == '3' or listaS.suma17 == '4' or listaS.suma17 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                    </c:if>
                    <c:if test="${listaS.suma17 == '1'}">
                            <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                    </c:if>
                    <c:if test="${listaS.suma17 == '2'}">
                            <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                    </c:if>
                    <c:if test="${listaS.suma17 == '3'}">
                            <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                    </c:if>
                    <c:if test="${listaS.suma17 == '4'}">
                            <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                    </c:if>
                    <c:if test="${listaS.suma17 == '5'}">
                            <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                    </c:if> 
          </SELECT>
          <SELECT NAME="volpg">
                <c:if test="${listaS.suma18 != '50' or listaS.suma18 == '100' or listaS.suma18 == '300' or listaS.suma18 == '500' or listaS.suma18 == '800' or listaS.suma18 == '1000' or listaS.suma18 == '2000' or listaS.suma18 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma18 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td> 
    </tr> 
    <tr>     
     <td style="font-size:9pt">CONCENTRADO GLOBULOS ROJOS LAVADOS (PAQUETE GLOBULAR LAVADO) PGL:: </td>
       <td><SELECT NAME="pgl">
                <c:if test="${listaS.suma19 != '1' or listaS.suma19 == '2' or listaS.suma19 == '3' or listaS.suma19 == '4' or listaS.suma19 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma19 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma19 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma19 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma19 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma19 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volpgl">
                <c:if test="${listaS.suma20 != '50' or listaS.suma20 == '100' or listaS.suma20 == '300' or listaS.suma20 == '500' or listaS.suma20 == '800' or listaS.suma20 == '1000' or listaS.suma20 == '2000' or listaS.suma20 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma20 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td>      
       <td style="font-size:9pt"> CONCENTRADO DE PLAQUETAS CP:: </td>
       <td><SELECT NAME="cp">
                <c:if test="${listaS.suma21 != '1' or listaS.suma21 == '2' or listaS.suma21 == '3' or listaS.suma21 == '4' or listaS.suma21 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma21 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma21 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma21 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma21 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma21 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volcp">
                <c:if test="${listaS.suma22 != '50' or listaS.suma22 == '100' or listaS.suma22 == '300' or listaS.suma22 == '500' or listaS.suma22 == '800' or listaS.suma22 == '1000' or listaS.suma22 == '2000' or listaS.suma22 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma22 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td> 
      </tr>
      <tr>
        <td style="font-size:9pt">PLASMA FRESCO CONGELADO FPC:: </td>
       <td><SELECT NAME="fpc">
                <c:if test="${listaS.suma23 != '1' or listaS.suma23 == '2' or listaS.suma23 == '3' or listaS.suma23 == '4' or listaS.suma23 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma23 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma23 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma23 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma23 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma23 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volfpc">
                <c:if test="${listaS.suma24 != '50' or listaS.suma24 == '100' or listaS.suma24 == '300' or listaS.suma24 == '500' or listaS.suma24 == '800' or listaS.suma24 == '1000' or listaS.suma24 == '2000' or listaS.suma24 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma24 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td>        
       <td style="font-size:9pt"> PLASMA REFRIGERADO PR:: </td>
       <td><SELECT NAME="pr">
                <c:if test="${listaS.suma25 != '1' or listaS.suma25 == '2' or listaS.suma25 == '3' or listaS.suma25 == '4' or listaS.suma25 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma25 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma25 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma25 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma25 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma25 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volpr">
                <c:if test="${listaS.suma26 != '50' or listaS.suma26 == '100' or listaS.suma26 == '300' or listaS.suma26 == '500' or listaS.suma26 == '800' or listaS.suma26 == '1000' or listaS.suma26 == '2000' or listaS.suma26 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma26 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td> 
      </tr>
      <tr>     
         <td style="font-size:9pt"> CRIOPRECIPITADOS CRIO:: </td>
       <td><SELECT NAME="crio">
                <c:if test="${listaS.suma27 != '1' or listaS.suma27 == '2' or listaS.suma27 == '3' or listaS.suma27 == '4' or listaS.suma27 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma27 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma27 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma27 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma27 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma27 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volcrio">
                 <c:if test="${listaS.suma28 != '50' or listaS.suma28 == '100' or listaS.suma28 == '300' or listaS.suma28 == '500' or listaS.suma28 == '800' or listaS.suma28 == '1000' or listaS.suma28 == '2000' or listaS.suma28 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma28 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td>      
       <td style="font-size:9pt"> AUTOTRANSFUSION (AU):: </td>
       <td><SELECT NAME="au">
                <c:if test="${listaS.suma29 != '1' or listaS.suma29 == '2' or listaS.suma29 == '3' or listaS.suma29 == '4' or listaS.suma29 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma29 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma29 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma29 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma29 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma29 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volau">
                 <c:if test="${listaS.suma30 != '50' or listaS.suma30 == '100' or listaS.suma30 == '300' or listaS.suma30 == '500' or listaS.suma30 == '800' or listaS.suma30 == '1000' or listaS.suma30 == '2000' or listaS.suma30 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma30 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td>  
     </tr>
     <tr>     
       <td style="font-size:9pt"> OTROS :: </td>
       <td><SELECT NAME="otr">
                <c:if test="${listaS.suma31 != '1' or listaS.suma31 == '2' or listaS.suma31 == '3' or listaS.suma31 == '4' or listaS.suma31 == '5'}">
                        <option value="0" selected> 0 </option> <option value="1" > 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma31 == '1'}">
                        <option value="0"> 0 </option> <option value="1" selected> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma31 == '2'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" selected> 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma31 == '3'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" selected> 3 </option> <option value="4" > 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma31 == '4'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" selected> 4 </option> <option value="5" > 5 </option>
                </c:if>
                <c:if test="${listaS.suma31 == '5'}">
                        <option value="0"> 0 </option> <option value="1"> 1 </option> <option value="2" > 2 </option> <option value="3" > 3 </option> <option value="4" > 4 </option> <option value="5" selected> 5 </option>
                </c:if> 
          </SELECT>
          <SELECT NAME="volotr">
                 <c:if test="${listaS.suma32 != '50' or listaS.suma32 == '100' or listaS.suma32 == '300' or listaS.suma32 == '500' or listaS.suma32 == '800' or listaS.suma32 == '1000' or listaS.suma32 == '2000' or listaS.suma32 == '3000'}">
                     <option value="0" selected> 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '50'}">
                     <option value="0" > 0 </option> <option value="50" selected> 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '100'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" selected> 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '300'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" selected> 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '500'}">
                    <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" selected> 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '800'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" selected> 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '1000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" selected> 1000 </option> <option value="2000" > 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '2000'}">
                      <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" selected> 2000 </option> <option value="3000" > 3000 </option>
                </c:if>
                <c:if test="${listaS.suma32 == '3000'}">
                     <option value="0" > 0 </option> <option value="50" > 50</option> <option value="100" > 100</option> <option value="300" > 300 </option> <option value="500" > 500 </option> <option value="800" > 800 </option> <option value="1000" > 1000 </option> <option value="2000" > 2000 </option> <option value="3000" selected> 3000 </option>
                </c:if>
          </SELECT></td>
          <td colspan="2"><input type="text" name="especifica" size="80" maxlength="80" value="<c:out value="${especifica}"/>" placeholder="Especificar..."/></td>
    </tr>
    <tr>
       <td style="font-size:9pt"> MOTIVO TRANSFUSION:: </td>
       <td colspan="3"><input type="text" name="motivo" size="100" maxlength="100" value="<c:out value="${motivo}"/>" placeholder="Describir el motivo de la Solicitud de Sangre..."/></td>
    </tr>
   </table>
    </tr>
   
</table>
<center> 
<table class="tabla">
  <tr>
     <td><div class="imprimir"><a class="btn btn-info btn-xs" href="http://177.16.0.5:8080/docs/Sangre1.pdf;">Recomendacion</a></div></td>
     <td><div class="imprimir"><a class="btn btn-info btn-xs" href="http://177.16.0.5:8080/docs/Sangre2.pdf;">Uso Clinico</a></div></td>
     <td><div class="imprimir"><a class="btn btn-info btn-xs" href="http://177.16.0.5:8080/docs/Sangre3.pdf;">Tabla de Compatibilidad</a></div></td>
  </tr>
</table>
</center>
<center>  
  <input type="submit" class="btn btn-primary btn-lg" value='Guardar-Imprimir' onclick="document.adiciontransf.accion.value='Guardar'">
</center>
    <input type="hidden" name='id_historial'        value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name='id_persona'          value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_sangre'           value='<c:out value="${id_sangre}"/>'>
    <input type="hidden" name='id_paciente'         value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='accionl'             value='<c:out value="${accionl}"/>'>
    <input type="hidden" name='accion'              value='<c:out value="${accion}"/>'>
    <input type="hidden" name="sw1"                 value='1' >
</form>

<table class="tabla">
<tr>
 <td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div><a class="btn btn-success" href="javascript:document.formaL1.submit();">Retornar</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
  </tr>
 </table>  
    
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Hora </th>
    <th bgcolor="#F2F2F2"> PACIENTE</th>
    <th bgcolor="#F2F2F2"> ESPECIALIDAD </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>
    <th bgcolor="#F2F2F2"> MOTIVO </th>
    <th bgcolor="#F2F2F2"> MEDICO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    <th bgcolor="#F2F2F2"> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarSangre}" varStatus="contador">
     <tr>
     <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.bacterias}"/></td>
       <td><c:out value="${lista.diagnostico}"/></td>   
       <td><c:out value="${lista.cadena1}"/></td>
       <td><c:out value="${lista.nombre}"/></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/SolSangre.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_sangre'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaSangre' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/SolSangre.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_sangre'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"         value='ImprimirSangre' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>

