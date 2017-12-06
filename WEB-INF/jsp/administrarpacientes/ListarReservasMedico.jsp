<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarReservasMedico.do"/>' >
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3" style="font-size:12pt">Lista de pacientes en Reservas, Medicos, Fechas</th>
  </tr>
  <tr>
    <td width="25%" valign="top"></td>
    <td width="50%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive">
       <tr>    
         <td class="etiqueta" > Fecha Inicial ::
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
         <SELECT NAME="horai1">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minutoi1">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>
         </td> </tr>        
  
       <tr>    
         <td class="etiqueta" > Fecha Final ::	&nbsp;
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
         <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>
      </tr> 
   </table>
  </td>
  <td width="25%" valign="top"></td>
  </tr>
 </table>
</center>
<center>
    <input type="submit" name='accion' class="btn btn-success btn-lg" value='Imprimir' onclick="document.listarreservasconsul.action='<c:url value="/ListarReservasMedico.do"/>';">  
    <input type="submit" name='accion' class="btn btn-primary btn-lg" value='Buscar' onclick="document.listarreservasconsul.action='<c:url value="/ListarReservasMedico.do"/>';">  
  </center>
     <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'> 
     <input type="hidden" name='id_persona'       value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</form> 


<table class="table table-striped table-bordered table-condensed table-responsive">
   <tr style="font-size:8pt">
      <th> NRO </th>
      <th> FECHA </th>
      <th> HCL </th>
      <th> Matricula </th>
      <th> COD </th>
      <th> Carnet </th>
      <th> PACIENTE </th>
      <th> Edad </th>
      <th> CONSULTORIO </th> 
      <th> TIPO </th> 
      <th> MEDICO </th> 
      <th> MODIFICAR </th>
      <th> ELIMINAR </th> 
      <!--
      <c:if test="${lista.expedido == 'E' and id_cargo=='34'}"> 
          <th> COBRAR </th> 
      </c:if> -->
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nombres}"/>
              <c:if test="${lista.tipoconsult == '1' }">
                   <font color="Red"> _Reconsulta 1</font>
               </c:if>
               <c:if test="${lista.tipoconsult == '2' }">
                   <font color="Red"> _Reconsulta 2</font>
               </c:if>
               <c:if test="${lista.tipoconsult == '3' }">
                   <font color="Red"> _Reconsulta 3</font>
               </c:if>
               <c:if test="${lista.tipoconsult == '6' }">
                   <font color="Red"> Recons_Medico</font>
               </c:if>
               <c:if test="${lista.tipoconsult == '7' }">
                   <font color="Red"> Re_Enfermeria</font>
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
     
      <td><c:out value="${lista.nombre}"/></td>  
     
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="modificar"><a class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion" value='Cambiar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                           
         <input type="hidden" name="accion" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>