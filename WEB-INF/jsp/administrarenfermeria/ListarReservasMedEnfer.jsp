<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<form name="listarreservas" method="POST" action='<c:url value="/ListarReservasMedEnfer.do"/>' >
<table class="formulario">
  <tr>
    <th colspan="3" style="font-size:12pt">Listar reservaciones de Medicos por Fechas</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
       <tr>
        <td class="etiqueta" > Fecha Consulta</td>
       <td class="etiqueta">::</td>	
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
         <SELECT NAME="horai1">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoi1">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 
         <br>    
  
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
       
        <td class="etiqueta">Medico <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td>
          <SELECT NAME="id_persona"  onchange="javascript:document.listarreservas.submit();"> 
	    <c:forEach var="perso" items="${listamedico}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>
        </td>
               
      </tr> 
   </table>
  </td>
  </tr>
 </table>
</center>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</form> 

 <table>
      <tr>
      <form name=formae method=post action='<c:url value="/ListarReservasMedEnfer.do"/>'>
          <td colspan="2">
              <div class="agregar">
                  <a href="javascript:document.formae.submit();" >Asignar Medicos</a>
                  <input type="hidden" name="id_consultorio"  value='<c:out value="${id_consultorio}"/>'> 
                  <input type="hidden" name="id_persona"      value='<c:out value="${id_persona}"/>'>  
                  <input type=hidden name=accion              value='Asignar'>
          </div></td>
      </form> 
      
      <form name=forma method=post action='<c:url value="/ListarReservasMedEnfer.do"/>'>
          <td colspan="2">
              <div class="imprimir">
                  <a href="javascript:document.forma.submit();" >Imprimir</a>
                  <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>'> 
                  <input type="hidden" name="id_persona"      value='<c:out value="${id_persona}"/>'> 
                  <input type="hidden" name="diai"            value='<c:out value="${dia}"/>'> 
                  <input type="hidden" name="mesi"            value='<c:out value="${mes}"/>'> 
                  <input type="hidden" name="anioi"           value='<c:out value="${anio}"/>'> 
                  <input type="hidden" name="horai1"          value='<c:out value="${hora}"/>'>
                  <input type="hidden" name="minutoi1"        value='<c:out value="${minuto}"/>'> 
                  <input type="hidden" name="diai2"           value='<c:out value="${dia2}"/>'> 
                  <input type="hidden" name="mesi2"           value='<c:out value="${mes2}"/>'> 
                  <input type="hidden" name="anioi2"          value='<c:out value="${anio2}"/>'> 
                  <input type="hidden" name="horai2"          value='<c:out value="${hora2}"/>'>
                  <input type="hidden" name="minutoi2"        value='<c:out value="${minuto2}"/>'> 
                  <input type=hidden name=accion              value='Imprimir'>
          </div></td>
      </form> 
      
      <tr>
  </table>
  
<table class="tabla">
   <tr>
      <th> NRO </th>
      <th> FECHA </th>
      <th> HCL </th>
      <th> Matricula </th>
      <th> Cod </th>
      <th> PACIENTE </th>
      <th> Edad </th>
      <th> TIPO </th> 
      <th> MEDICO </th> 
      <th> Receta </th> 
      <th> Labos </th> 
      <th> Imagen </th> 
      <th> Cie10 </th>
      <th> DIAGNOSTICO </th>
      <th> DL202 </th>
      <th> MODIFICAR </th>
      <th> SIGNOS </th> 
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >                  
         <input type="hidden" name="accion" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.nombres}"/></td> 
       <td align="center"><c:out value="${lista.edad_ini}"/></td> 
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
           <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
      
      <td><c:out value="${lista.nombre}"/></td>
      <td align="center"><c:out value="${lista.suma2}"/></td>
      <td align="center"><c:out value="${lista.suma3}"/></td>
      <td align="center"><c:out value="${lista.suma4}"/></td>
      <td style="font-size:12pt"><b><c:out value="${lista.nombrecodestared}"/></b></td>
      <td><c:out value="${fn:substring(lista.cadena3,0,35)}" escapeXml="False"/></td>    
      <c:if test="${lista.id_tipo != '0' }">
          <td align="center" style="font-size:14pt; color:blue">SI</td>
      </c:if>
      <c:if test="${lista.id_tipo == '0' }">
          <td align="center">no</td>
      </c:if>
      <c:if test="${lista.suma1 == '0' }">
       <form name=formaMaM<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
       <td >     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona"     value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido"       value=<c:out value="${lista.expedido}"/> > 
         <input type="hidden" name="fecha"          value=<c:out value="${lista.fecha}"/> >  
         <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >     
         <input type="hidden" name="swinter"        value='inter' >
	 <input type="hidden" name="accionm"        value='Modificar' >
	 <input type="hidden" name="revision"       value='cie10' >
       </td>
     </form> 
         <td style="font-size:12pt;color:red">Atendido</td>
     </c:if>    
     <!--
     <form name=formaInt<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="aceptar"><a href="javascript:document.formaInt<c:out value="${contador.count}"/>.submit();">Internar</a></div>
         <input type="hidden" name="nombres"        value='<c:out value="${lista.nombres}"/>'>  
         <input type="hidden" name="id_paciente"    value='<c:out value="${lista.id_paciente}"/>'>  
         <input type="hidden" name="id_reservacion" value='<c:out value="${lista.id_reservacion}"/>'>         
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>'>   
         <input type="hidden" name="id_persona"     value='<c:out value="${lista.id_persona}"/>'> 
	 <input type="hidden" name="accion"         value='Internar' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>
     -->
     <c:if test="${id_rol2 == '26' }">
           <form name=formaADM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
           <td>     
             <div class="aceptar"><a href="javascript:document.formaADM<c:out value="${contador.count}"/>.submit();">Admision</a></div>
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
     <c:if test="${lista.suma1 != '0' }">
         <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Cambiar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion" value='Cambiar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaSig<c:out value="${contador.count}"/> method=post action='<c:url value="/SignosPaciente.do"/>'>
       <td>     
         <div class="nota"><a href="javascript:document.formaSig<c:out value="${contador.count}"/>.submit();">SigVital</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     </c:if>    
   </c:forEach>
</table>