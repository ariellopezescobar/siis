<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarReservasConsul.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th align="center" colspan="3" style="font-size:12pt"><center>Lista de pacientes en espera en Consultorios, Medicos, Fechas</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <tr>
              
         <td bgcolor="#E0ECF8" >Fecha Consulta<br><font size="2"><b>&nbsp;DESDE:</b></font><SELECT NAME="diai">
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
         <SELECT NAME="horai1">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoi1">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 
         <br>    
           <font size="2"><b>HASTA:</b></font>
         <SELECT NAME="diai2">
             <c:forEach var="dias" items="${dias}">
    	       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
	         <c:out value="${dias}"/></option></c:forEach></SELECT>
	<SELECT NAME="mesi2">
             <c:forEach var="meses" items="${meses}">
    	       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
	         <c:out value="${meses}"/></option></c:forEach></SELECT>
	 <SELECT NAME="anioi2">
             <c:forEach var="anios" items="${anios}">
    	       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
	         <c:out value="${anios}"/></option></c:forEach></SELECT>
         <SELECT NAME="horai2">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoi2">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>        
         <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>

       
      
        <td bgcolor="#E0ECF8">Servicio / Consultorio<br>
          <SELECT NAME="id_consultorio" onchange="javascript:document.listarreservasconsul.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_especialidad!=99 and estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>
	            </option>
                </c:if>      
	    </c:forEach>
           </SELECT>	
        </td>

        <td bgcolor="#E0ECF8">Medico / Especialista<br>
          <SELECT NAME="id_persona"  onchange="javascript:document.listarreservasconsul.submit();">
            <option value="0">-- seleccione --  
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>
	       <br>
          <input type="submit" name='accion' class="btn btn-info" value='CambiarConsultorio' onclick="document.listarreservasconsul.action='<c:url value="/ListarReservasConsul.do"/>';">       
        </td>
               
      </tr> 
   </table>
  </td>
  </tr>
 </table>
</center>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</form> 

 <table >
      <tr>
      <form name=forma method=post action='<c:url value="/ListarReservasConsul.do"/>'>
          <td colspan="2">
              <div class="imprimir">
                  <a class="btn btn-success" href="javascript:document.forma.submit();" >Imprimir</a>
                  <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>'> 
                  <input type="hidden" name="id_persona" value='<c:out value="${id_persona}"/>'> 
                  <input type="hidden" name="diai" value='<c:out value="${dia}"/>'> 
                  <input type="hidden" name="mesi" value='<c:out value="${mes}"/>'> 
                  <input type="hidden" name="anioi" value='<c:out value="${anio}"/>'> 
                  <input type="hidden" name="horai1" value='<c:out value="${hora}"/>'>
                  <input type="hidden" name="minutoi1" value='<c:out value="${minuto}"/>'> 
                  <input type="hidden" name="diai2" value='<c:out value="${dia2}"/>'> 
                  <input type="hidden" name="mesi2" value='<c:out value="${mes2}"/>'> 
                  <input type="hidden" name="anioi2" value='<c:out value="${anio2}"/>'> 
                  <input type="hidden" name="horai2" value='<c:out value="${hora2}"/>'>
                  <input type="hidden" name="minutoi2" value='<c:out value="${minuto2}"/>'> 
                  <input type=hidden name=accion value='Imprimir'>
          </div></td>
      </form> 
      <tr>
  </table>
  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
      <th bgcolor="#F2F2F2"> NRO </th>
      <th bgcolor="#F2F2F2"> FECHA </th>
      <th bgcolor="#F2F2F2"> HCL </th>
      <th bgcolor="#F2F2F2"> Matricula </th>
      <th bgcolor="#F2F2F2"> COD </th>
      <th bgcolor="#F2F2F2"> Carnet </th>
      <th bgcolor="#F2F2F2"> PACIENTE </th>
      <th bgcolor="#F2F2F2"> Edad </th>
      <th bgcolor="#F2F2F2"> CONSULTORIO </th> 
      <th bgcolor="#F2F2F2"> TIPO </th> 
      <th bgcolor="#F2F2F2"> MEDICO </th> 
      <th bgcolor="#F2F2F2"> MODIFICAR </th>
      <th bgcolor="#F2F2F2"> INTERNAR </th> 
      <c:if test="${id_rol2 == '26' }">
           <th bgcolor="#F2F2F2"> Hoja<br>Admision </th> 
      </c:if>
      <th bgcolor="#F2F2F2"> ELIMINAR </th> 
      <!--
      <c:if test="${lista.expedido == 'E' and id_cargo=='34'}"> 
          <th> COBRAR </th> 
      </c:if> -->
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center">
        <c:out value="${contador.count}"/>
       </td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nombres}"/>
       <c:if test="${lista.id_riesgo == '1' }">
               <font color="Red"  size="4"> RIESGO</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '2' }">
               <font color="Red"  size="4"> MORA</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '3' }">
               <font color="Red" size="4"> ACCID.TRAB.</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '4' }">
               <font color="Red" size="4"> Sin DOC</font>
           </c:if>
       </td> 
       <td align="center"><c:out value="${lista.edad_ini}"/></td>
       <td style="font-size:10pt;color:blue"><c:out value="${lista.consultorio}"/></td>    
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
           <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
      <c:forEach var="listacount" items="${milistaCount}">
          <c:if test="${listacount.id_persona==lista.id_persona}"> 
                <td><c:out value="${lista.nombre}"/>_<font color="red"><c:out value="${listacount.suma1}"/></font></td>  
          </c:if> 
      </c:forEach>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion" value='Cambiar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaInt<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-primary" href="javascript:document.formaInt<c:out value="${contador.count}"/>.submit();">Internar</a></div>
         <input type="hidden" name="nombres"        value='<c:out value="${lista.nombres}"/>'>  
         <input type="hidden" name="id_paciente"    value='<c:out value="${lista.id_paciente}"/>'>  
         <input type="hidden" name="id_reservacion" value='<c:out value="${lista.id_reservacion}"/>'>         
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>'>   
         <input type="hidden" name="id_persona"     value='<c:out value="${lista.id_persona}"/>'> 
	 <input type="hidden" name="accion"         value='Internar' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>
     
     <c:if test="${id_rol2 == '26' }">
           <form name=formaADM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
           <td>     
             <div><a href="javascript:document.formaADM<c:out value="${contador.count}"/>.submit();">Admision</a></div>
             <input type="hidden" name="nombres"        value='<c:out value="${lista.nombres}"/>'>  
             <input type="hidden" name="id_paciente"    value='<c:out value="${lista.id_paciente}"/>'>  
             <input type="hidden" name="id_reservacion" value='<c:out value="${lista.id_reservacion}"/>'>         
             <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>'>   
             <input type="hidden" name="id_persona"     value='<c:out value="${lista.id_persona}"/>'> 
             <input type="hidden" name="accion"         value='Admision'>
             <input type="hidden" name="sw"             value='1' >
           </td>
         </form>
     </c:if>
 
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >                           
         <input type="hidden" name="accion" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
   </tr>
   </c:forEach>
</table>