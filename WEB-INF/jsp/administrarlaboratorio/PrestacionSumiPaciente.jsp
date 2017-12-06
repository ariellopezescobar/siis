<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Ambulatorio Paciente Laboratorio</div>

<form name=formaRet method=post action='<c:url value="/LabPacPendiente.do"/>'>
         <div><a class="btn btn-success" href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
           <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
</form>
<table class="table table-striped table-bordered  table-condensed table-responsive"> 
  <tr>
    <th colspan="3"><center>PRESTACIONES DEL PACIENTE (LABORATORIOS)</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%">
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL:</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres:</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n:</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Edad:</td>    	      
        <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
      </tr> 
   </table>
  <table class="table table-striped table-bordered table-condensed table-responsive"> 
   <tr style="font-size:9pt" bgColor="#DDDDDD">
     <th bgcolor="#F2F2F2"> NRO </th>
     <th bgcolor="#F2F2F2"> CODIGO </th>
     <th bgcolor="#F2F2F2"> DESCRIPCION </th>
     <th bgcolor="#F2F2F2"> ACCION </th>
    </tr> 
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.prestacion}"/></td>      
       <td><c:out value="${listado.descripcion}"/>_<font color="red"><c:out value="${listado.cantidad}"/></font></td>             
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/LabSumiPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >         
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${listado.id_prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='eliminar' >
	 <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
     </tr> 
   </c:forEach>
    </table>
    </td>

   <td width="50%" valign="top">

   <form name=forma action="<c:url value="/LabSumiPaciente.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-condensed table-responsive"> 
          <tr>    
            <td align=right>Codigo Pretacion</td>    
            <td ><input type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarCod"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
  <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
  <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
</form>  
   <form name=formaNom action="<c:url value="/LabSumiPaciente.do"/>" method="POST">        
         <table >
          <tr>    
            <td align=right>Nombre Prestacion</td>    	
            <td ><input type="text" name="nombresPres"  value="<c:out value="${nombresPres}"/>"  maxlength=20 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarNom"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
  <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
   <input type="hidden" name="sw"             value='<c:out value="${sw}"/>' >
</form>  
       
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> Presta </th>
    <th> DESCRIPCION </th>            
    <th> COSTO </th>            
    <th> AÑADIR </th>
    </tr>  
   <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador">
     <c:set var="existeb"  value="no"/>     
     <c:forEach var="listado" items="${listarRecetas}">
        <c:if test="${listado.id_prestacion == lista.id_prestacion}">
             <c:set var="existeb"  value="si"/>             
        </c:if>
     </c:forEach>     
  <c:if test="${existeb == 'no'}"> 
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <td><c:out value="${lista.costo}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/LabSumiPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion"     value=<c:out value="${id_reservacion}"/> >                  
  	 <input type="hidden" name="id_prestacion"      value=<c:out value="${lista.id_prestacion}"/> >
         <input type="hidden" name="prestacion"         value=<c:out value="${lista.prestacion}"/> >
         <input type="hidden" name='id_persona'         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'           value='<c:out value="${expedido}"/>'>         
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion"             value='adicion' >
	 <input type="hidden" name="sw"                 value='<c:out value="${sw}"/>' >
       </td>
     </form>
    </tr>   
   </c:if>   
   </c:forEach>
</table>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> Presta </th>
    <th> DESCRIPCION </th>            
    <th> COOSTO </th>            
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarPrestacionesCot}" varStatus="contador">
     <c:set var="existeb"  value="no"/>     
     <c:forEach var="listado" items="${listarRecetas}">
        <c:if test="${listado.id_prestacion == lista.id_prestacion}">
             <c:set var="existeb"  value="si"/>             
        </c:if>
     </c:forEach>     
  <c:if test="${existeb == 'no'}"> 
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td> 
       <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/LabSumiPaciente.do"/>'>
       <c:if test="${lista.id_prestacion=='3186' or lista.id_prestacion=='3188' or lista.id_prestacion=='3189' }"> 
           <td><input type="text" name="canti" value=1 size=3 maxlength=3 onblur='validar(canti,"9")'/></td>               
       </c:if>
       <c:if test="${lista.id_prestacion!='3186' and lista.id_prestacion!='3188' and lista.id_prestacion!='3189' }"> 
           <td align="center"><b><c:out value="${lista.costo}"/></b></td>  
       </c:if>   
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >                  
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
         <input type="hidden" name="prestacion" value=<c:out value="${lista.prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
     </tr>  
     </c:if> 
   </c:forEach>
</table>
   </td>
  </tr>
</table>
