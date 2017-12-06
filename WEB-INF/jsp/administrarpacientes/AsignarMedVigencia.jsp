<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/AsignarMedVigencia.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3" style="font-size:12pt" bgcolor="#F2F2F2"><center>Asignar Pacientes Vigencia</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
       <tr>
        <td align=right bgcolor="#F2F2F2">Servicio  </td>	      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.listarreservasconsul.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_consultorio!=28 and estado.id_consultorio!=21 and estado.id_consultorio!=33 and estado.id_consultorio!=26 and estado.id_consultorio!=38 and estado.id_consultorio!=34 and estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>
	            </option>
                </c:if>      
	    </c:forEach>
           </SELECT>	
        </td>
       </tr> 
       <tr>
        <td align=right bgcolor="#F2F2F2">Medico </td>
        <td>
          <SELECT NAME="id_persona"  onchange="javascript:document.listarreservasconsul.submit();">
            <option value="0">-- seleccione --  
	    <c:forEach var="perso" items="${listaPersonas}">
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
 

     
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> COD </th>
    <th bgcolor="#F2F2F2"> Carnet </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> TIPO </th>  
    <th bgcolor="#F2F2F2"> Patronal </th> 
    <th bgcolor="#F2F2F2"> EMPRESA </th> 
    <th bgcolor="#F2F2F2"> CONSULTORIO </th>    
    <th bgcolor="#F2F2F2"> MEDICO </th> 
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <form name=formaEq<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservas.do"/>'>
       <td>     
         <div><a href="javascript:document.formaEq<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >                           
         <input type="hidden" name="accion1" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form> 
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><font color="blue">&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></font></td>       
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b><br><c:out value="${lista.id_reservacion}"/></td>    
       <td><c:out value="${lista.nro_registro}"/></td>
       <td align="center" style="color:red"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nombres}"/>
           <c:if test="${lista.id_riesgo == '0' }">
               <font> Normal</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '1' }">
               <font color="Red"  size="3"> RIESGO</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '2' }">
               <font color="Red"  size="3"> MORA</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '3' }">
               <font color="Red" size="3"> ACCID.</font>
           </c:if>
           <c:if test="${lista.id_riesgo == '4' }">
               <font color="Red" size="3"> SinDOC</font>
           </c:if> 
       </td> 
       
       <td align="center"><c:out value="${lista.edad_ini}"/></td> 
       <c:if test="${lista.id_historia == 0 }">
             <td><c:out value="${lista.consultorio}"/></td>
       </c:if>
       <c:if test="${lista.id_historia != 0 }">
          <c:forEach var="listaPer" items="${listarPersonas}">
             <c:if test="${lista.id_persona==listaPer.id_persona}"> 
                <td>Interconsulta:<font color="green"><c:out value="${listaPer.nombres}"/></font></td>
             </c:if>  
          </c:forEach> 
      </c:if>
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
                <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
      
      <td style="color:blue"><c:out value="${lista.suma70}"/></td>
       <td><c:out value="${lista.cadena4}"/></td>
       <td><c:out value="${lista.consultorio}"/></td> 
       <td><c:out value="${lista.nombre}"/></td> 
      
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td >     
         <div ><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Asignar Medico</a></div>
  	 <input type="hidden" name="id_paciente"      value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="id_reservacion"   value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="tipoconsult"      value=<c:out value="${lista.tipoconsult}"/> >
         <input type="hidden" name="id_riesgo"        value=<c:out value="${lista.id_riesgo}"/> >
         <input type="hidden" name="accion"           value='Cambiar' >
	 <input type="hidden" name="sw"               value='1' >
         <input type="hidden" name="resvig"           value='1' >
       </td>   
     </form>
    </tr>
   </c:forEach>
</table>

