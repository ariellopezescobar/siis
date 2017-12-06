<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaBN method=post action='<c:url value="/ListarAdmisiones.do"/>'>
  <table valign=top border="0" cellspacing="0">
   <tr>
    <td width="15%"></td>
    <td width="70%">
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
        <tr><td colspan="3">
            <center> Listar Admisiones Hospitalarias</center>
        </td></tr>
        <tr>
          <td align=right>Dato Documento</td>
          <td class=colb><input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarAdm"></td>
        </tr> 
      </table>
    </td>
   <td width="15%"></td> 
   </tr>
  </table>
 </form>
 
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th> No </th>
    <th> FECHA </th>
    <th> Hora </th>
    <th> PACIENTE</th>
    <th> HOSPITAL</th>
    <th> ESPECIALIDAD</th>
    <th> DIAGNOSTICO </th>
    <th> ELIMINAR </th> 
    <th> IMPRIMIR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarAdmi}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
     <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td style="color:red"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.bilirrubina}"/></td>
       <td><c:out value="${lista.bacterias}"/></td>  
       <td><c:out value="${lista.diagnostico}" escapeXml="False"/></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/AdmisionHosp.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_admi'         value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name="accion"          value='ModificaAdm' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/AdmisionHosp.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-success btn-xs" href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_admi'        value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="accion"         value='ImprimirAdm' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     <c:if test="${lista.egreso == '0'}">
        <form name=formaIii<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPac.do"/>'>
       <td>     
         <div class="modificar"><a class="btn btn-primary btn-xs" href="javascript:document.formaIii<c:out value="${contador.count}"/>.submit();"> Internar</a></div>
         <input type="hidden" name='id_admi'         value='<c:out value="${lista.id_laboratorio}"/>'>
         <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
         <input type="hidden" name='id_piso'         value='<c:out value="${lista.suma1}"/>'>
         <input type="hidden" name='id_sala'         value='<c:out value="${lista.suma2}"/>'>
         <input type="hidden" name='id_cama'         value='<c:out value="${lista.suma3}"/>'>
         <input type="hidden" name="accion"          value='Terminar' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     </c:if> 
     <c:if test="${lista.egreso == '1'}">
         <td>Internado</td>
     </c:if> 
     </tr>
   </c:forEach>
 </table>

