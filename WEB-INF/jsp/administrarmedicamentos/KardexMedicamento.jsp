<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/KardexMedicamento.do"/>' >
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
    <tr>
      <th><center>Mostrar Kardex por fecha</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive">     
            <tr><td  bgcolor="#F2F2F2" align="right"> Fecha Inicio</td>
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
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              
	      <tr><td bgcolor="#F2F2F2" align="right"> Fecha Final</td>	
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
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <c:if test="${tipo_medico == '7'}">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
        <th colspan="3"><font size=2>DATOS AC&Aacute;DEMICOS </font></th>
      </tr>
      <tr>
        <td bgcolor="#F2F2F2" align="right">Cargo  </td>      
        <td>
          <SELECT NAME="id_persona">
            <option value="0">-- seleccione --
       	    <c:forEach var="pas" items="${listaPersonas}">
    	      <OPTION value="<c:out value="${pas.id_persona}"/>" <c:if test="${pas.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${pas.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>

   </table>
  </c:if>
  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
         <th colspan="7"><font size=2><c:out value="${cod_esta}"/>-;-<c:out value="${dato.id_medicamento}"/>-;-<c:out value="${dato.medicamento}"/>-;-<c:out value="${dato.forma_far}"/>-;-<c:out value="${dato.concentra}"/> </font></th>
      </tr>
      <c:if test="${seguro_estab != '1' }">
      <tr><center>   
         <td colspan="3" align="center"><input type="submit" name="boton" class="btn btn-primary" value="Kardex Dispensado Detallado"></td> 
         <td colspan="2" align="center"><input type="submit" name="boton" class="btn btn-primary" value="Dispensado por Medicos"></td> 
         <td colspan="2" align="center"><input type="submit" name="boton" class="btn btn-primary" value="Dispensado por Especialidad"></td> 
      </center></tr>
      <tr>
         <th ><font size=2>ENTRADAS </font></th>
         <th ><font size=2>SALIDAS </font></th>
         <th ><font size=2>AJUSTES </font></th>
         <th ><font size=2>TOTAL con/0</font></th>
         <th ><font size=2>GENERAL sin/0</font></th>
         <th ><font size=2>TOTAL sin/0</font></th> 
         <th ><font size=2>TOTAL solo/0</font></th>
      </tr>
      <tr>
         <center>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS E"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS S"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS A"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="TODOS c/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="T General s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS solo/0"></td>
            <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>
            <input type="hidden" name='id_farmacia'    value='<c:out value="${id_farmacia}"/>'>
            <input type="hidden" name='cod_esta'       value='<c:out value="${cod_esta}"/>'>
         </center>
      </tr>
      <tr>
         <center>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="SUMI E"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="SUMI S"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="SUMI A"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="SUMI c/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="S General s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="SUMI s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="SUMI solo/0"></td>
            <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>
            <input type="hidden" name='id_farmacia'    value='<c:out value="${id_farmacia}"/>'>
            <input type="hidden" name='cod_esta'       value='<c:out value="${cod_esta}"/>'>
         </center>
      </tr>
      <tr>
         <center>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="VENTAS E"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="VENTAS S"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="VENTAS A"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="VENTAS c/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="V General s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="VENTAS s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="VENTAS solo/0"></td>
            <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>
            <input type="hidden" name='id_farmacia'    value='<c:out value="${id_farmacia}"/>'>
            <input type="hidden" name='cod_esta'       value='<c:out value="${cod_esta}"/>'>
         </center>
      </tr>
      <tr>
         <center>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="PROGRAMAS E"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="PROGRAMAS S"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="PROGRAMAS A"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="PROGRAMAS c/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="P General s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="PROGRAMAS s/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="PROGRAMAS solo/0"></td>
            <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>
            <input type="hidden" name='id_farmacia'    value='<c:out value="${id_farmacia}"/>'>
            <input type="hidden" name='cod_esta'       value='<c:out value="${cod_esta}"/>'>
         </center>
      </tr>
      </c:if>
      <c:if test="${seguro_estab == '1' }">
         <tr>
            <center>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS E"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-success" value="TODOS A"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="TODOS c/0"></td>
            <td align="center"><input type="submit" name="boton" class="btn btn-primary" value="T General s/0"></td>
            <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>
            <input type="hidden" name='id_farmacia'    value='<c:out value="${id_farmacia}"/>'>
            <input type="hidden" name='cod_esta'       value='<c:out value="${cod_esta}"/>'>
         </center>
         </tr> 
      </c:if>
  </table>
  <br>
  <c:if test="${seguro_estab != '1' }">
  <center>
      <SELECT NAME="id_programa">
	        <c:forEach var="prog" items="${listarProg}">
                   <c:if test="${prog.id_programa>3}">  
                      <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                          <c:out value="${prog.id_programa}"/>.<c:out value="${prog.concentra}"/>.<font color="blue">[<c:out value="${prog.ubicacion}"/>]</font>
                      </option>
                   </c:if>
                </c:forEach>
      </SELECT>  
      <input type="submit" name="boton" class="btn btn-success" value="Segun Programa">
  </center>       
  </c:if>
</form>


<%@ include file="../Inferior.jsp" %>