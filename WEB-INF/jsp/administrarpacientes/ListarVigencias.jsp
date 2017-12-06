<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table>
  <tr>
  <form name=forma method=post action='<c:url value="/ListarPacientes.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a class="btn btn-primary" href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>
<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarVigencia.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3" style="font-size:12pt"><center>Pacientes Habilitar Vigencia Derecho</center></th>
  </tr>
  <tr style="font-size:9pt">
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
       <tr style="font-size:9pt">
        <td align="right">Consultorio  </td>	      
        <td>
          <SELECT NAME="sw" onchange="javascript:document.listarreservasconsul.submit();">
	        <option value="">-- seleccione --</option>
                <option value="0">Pacientes Sin Habilitar</option>
                <option value="1">Pacientes Emergencia</option>
                <option value="2">Consulta Externa</option>
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
  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
      <th bgcolor="#F2F2F2"> NRO </th>
      <th bgcolor="#F2F2F2"> FECHA </th>
      <th bgcolor="#F2F2F2"> HCL </th>
      <th bgcolor="#F2F2F2"> Matricula </th>
      <th bgcolor="#F2F2F2"> COD </th>
      <th bgcolor="#F2F2F2"> Edad </th>
      <th bgcolor="#F2F2F2"> Carnet </th>
      <th bgcolor="#F2F2F2"> PACIENTE </th>
      <th bgcolor="#F2F2F2"> Patronal </th> 
      <th bgcolor="#F2F2F2"> EMPRESA </th> 
      <th bgcolor="#F2F2F2"> TIPO </th> 
      <th bgcolor="#F2F2F2"> MEDICO </th> 
      <th bgcolor="#F2F2F2"> HABILITAR </th>
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <form name=formaEq<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservas.do"/>'>
       <td>     
         <div><a href="javascript:document.formaEq<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                           
         <input type="hidden" name="accion1" value='EliminarReserva'>
         <input type="hidden" name="sw1" value='1'>
       </td>
     </form>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.edad_ini}"/></td>
       <td><c:out value="${lista.carnet}"/></td>
       <c:if test="${lista.codestaref == '0' }">
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
       </c:if>
       <c:if test="${lista.codestaref != '0' }">
          <td><c:out value="${lista.nombres}"/><br><font color="red" size="4">Transferido : &nbsp;&nbsp;<c:out value="${lista.nombrecodestared}"/></font></td>
       </c:if>
       <td style="color:blue"><c:out value="${lista.suma70}"/></td>
       <td><c:out value="${lista.cadena4}"/></td>
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
            <c:if test="${lista.id_seguro=='35'}"> 
                 <td align="center"><c:out value="${lista.cadena2}"/></td>
            </c:if>
            <c:if test="${lista.id_seguro!='35'}"> 
                 <td align="center" style="color:red"><c:out value="${lista.cadena2}"/></td>
            </c:if>
      </c:if>
     
      <td><c:out value="${lista.nombre}"/></td>
          
     <form name=formaFich<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigencia.do"/>'>
       <td>    <div class="modificar"><a class="btn btn-info" href="javascript:document.formaFich<c:out value="${contador.count}"/>.submit();">DarFicha</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion"          value='DarFicha'>
	 <input type="hidden" name="sw"              value='1'>
       </td>
     </form>
     <c:if test="${lista.id_historia == '0' }">
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigencia.do"/>'>
       <td>     
         <div class="modificar"><a class="btn btn-success" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">NO Habilitado</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion"          value='VigenciaH'>
	 <input type="hidden" name="sw"              value='1'>
       </td>
     </form>
     </c:if>
     <c:if test="${lista.id_historia == '1' }">
     <form name=formaMv<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigencia.do"/>'>
       <td>     
         <div class="aceptar"><a class="btn btn-danger" href="javascript:document.formaMv<c:out value="${contador.count}"/>.submit();">Habilitado Emerg.</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion"          value='VigenciaD'>
	 <input type="hidden" name="sw"              value='2' >
       </td>
     </form>
     <form name=formaMvdoca<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="nota"><a class="btn btn-warning" href="javascript:document.formaMvdoca<c:out value="${contador.count}"/>.submit();">Doc. Vigencia</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${lista.id_consultorio}"/> >                  
         <input type="hidden" name="accion"          value='ReservarVig' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
     </c:if>
     <c:if test="${lista.id_historia == '2' }">
     <form name=formaMv<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigencia.do"/>'>
       <td>     
         <div class="siguiente"><a class="btn btn-primary" href="javascript:document.formaMv<c:out value="${contador.count}"/>.submit();">Habilitado Externa</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion"          value='VigenciaD'>
	 <input type="hidden" name="sw"              value='0' >
       </td>
     </form>
     <form name=formaMvdoca<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="nota"><a class="btn btn-warning" href="javascript:document.formaMvdoca<c:out value="${contador.count}"/>.submit();">Doc. Vigencia</a></div>
         <input type="hidden" name="id_paciente"     value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion"  value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio"  value=<c:out value="${lista.id_consultorio}"/> >                  
         <input type="hidden" name="accion"          value='ReservarVig' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
     </c:if>
     </tr>
   </c:forEach>
</table>