<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarReservasConsul.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="70%">
  <tr>
    <th colspan="3" style="font-size:12pt">Lista de pacientes en espera en consultorios</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <tr>
        <td align="right" bgcolor="#F2F2F2">Servicio  </td>	      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.listarreservasconsul.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>
	            </option>
                </c:if>      
	    </c:forEach>
           </SELECT>	
        </td>
       </tr> 
       <tr>
        <td align="right" bgcolor="#F2F2F2">Medico  </td>
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

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:8pt">
      <th bgcolor="#F2F2F2"> No </th>
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
      <th bgcolor="#F2F2F2"> ELIMINAR </th> 
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
                   <font color="Red"> Reconst_Medico</font>
               </c:if>
               <c:if test="${lista.tipoconsult == '7' }">
                   <font color="Red"> Reconst_Enferm.</font>
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
         <div><a class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion" value='Cambiar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
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