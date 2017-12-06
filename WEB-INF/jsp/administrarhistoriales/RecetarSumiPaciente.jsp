<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <th colspan="3"><center>RECETA DEL PACIENTE AMBULATORIO Ley475 (exSUMI)</center></th>
  </tr>
  <c:if test="${ff!= null}">  
    </tr>   
      <th colspan="3" style="font-size:14pt; color:red;"><c:out value = "${ff}"/></th>
    <tr>  
  </c:if>   
  <tr>
    <td width="40%" valign="top">
      <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">No. HCL - Nombre Completo</td>    
        <td bgcolor="#F2F2F2"><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Fecha de Nacim. / Edad</td>    
        <td bgcolor="#F2F2F2"><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="4"> <c:out value="${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
       <tr>    
        <td bgcolor="#F2F2F2">Fecha Atencion</td>    	      
        <td bgcolor="#F2F2F2"><c:out value="${fechamodifi}"/></td>
      </tr>  
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td bgcolor="#F2F2F2">Factores de Riesgo</td>    	      
            <td bgcolor="#F2F2F2" style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
   
   <table >
   <tr>    
   <c:if test="${tipo_medico== '33'}">      
    <form name=formaPre<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td colspan="2">     
         <a class="btn btn-success " href="javascript:document.formaPre<c:out value="${contador.count}"/>.submit();"><i class=" fa fa-reply"></i>Retormar</a></div>
  	 <input type="hidden" name="id_historial"    value='<c:out value="${id_reservacion}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>'>
         <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>'>
	 <input type="hidden" name="accion"          value='previa'>
	 <input type="hidden" name="sw"              value='1'>
       </td>
     </form>     
   </c:if>
   <c:if test="${tipo_medico!= '33'}">      
     <form name=formaRet method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
     <td colspan="2">
      <a class="btn btn-success " href="javascript:document.formaRet.submit();"><i class=" fa fa-reply"></i>Retorrnar</a>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
        <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='accion'          value='Ninguno'>
      </td>  
     </form>
   </c:if>
     <form name=formaImp method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
     <td colspan="2">
      <a class="btn btn-warning " href="javascript:document.formaImp.submit();"><i class=" fa fa-print"></i>Imprimir</a>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='accion'          value='Receta'>
     </td>  
     </form>  

   </tr>  
  </table>
   
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr bgColor="#DDDDDD" style="font-size:8pt">
    <th> Nro </th>
    <th> Codigo </th>
    <th> DESCRIPCIION </th>
    <th> ACCIoON </th>
    <th> ACCION </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" bgColor="#AADDDD" onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>    
       <td align="center"><c:out value="${listado.prestacion}"/></td>      
       <td>[<c:out value="${listado.id_persona}"/>]<c:out value="${listado.descripcion}"/><font color="red"><b>[<c:out value="${listado.cantidad}"/>]</b></font></td> 
      <c:if test="${tipo_medico!= '33' or administra=='7'}">  
      <form name=formaEmm<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
           <td>     
             <a class="btn btn-success btn-xs" href="javascript:document.formaEmm<c:out value="${contador.count}"/>.submit();"><i class=" fa fa-pencil-square-o" ></i>Modificar</a>
             <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
             <input type="hidden" name="id_detalle"      value='<c:out value="${listado.id_detalle}"/>' >
             <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
             <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
             <input type="hidden" name="accion"          value='modificar' >
             <input type="hidden" name="sw"              value='1' >
         </td>
        </form> 
         <form name=formaEl<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
           <td>     
             <a class="btn btn-danger btn-xs " href="javascript:document.formaEl<c:out value="${contador.count}"/>.submit();"><i class="fa fa-trash" ></i>Eliminar</a>
             <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
             <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
             <input type="hidden" name="prestacion"      value='<c:out value="${listado.prestacion}"/>' >
             <input type="hidden" name="id_detalle"      value='<c:out value="${listado.id_detalle}"/>' >
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
             <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="accion"          value='eliminar' >
             <input type="hidden" name="sw"              value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${tipo_medico== '33' and administra!='7'}">  
         <form name=formaEl2<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
           <td>     
             <a class="btn btn-danger btn-xs" href="javascript:document.formaEl2<c:out value="${contador.count}"/>.submit();"><i class="fa fa-trash" ></i>Eliminar</a>
             <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
             <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
             <input type="hidden" name="prestacion"      value='<c:out value="${listado.prestacion}"/>' >
             <input type="hidden" name="id_detalle"      value='<c:out value="${listado.id_detalle}"/>' >
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
             <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
             <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="accion"          value='eliminar' >
             <input type="hidden" name="sw"              value='1' >
           </td>
         </form>
         <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" class="btn btn-success btn-xs " href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
             <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
             <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name="id_detalle"      value='<c:out value="${listado.id_detalle}"/>' >
             <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
             <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
             <input type="hidden" name="accion"          value='modificar' >
             <input type="hidden" name="sw"              value='1' >
           </td>
         </form>
     </c:if>
     </tr>
     <tr>
      <td colspan=4 align="center"> 
      
 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:8pt">
    <th> Nro </th>
    <th> Nro </th>
    <th> Medicament </th>
    <th> FormaFar </th>
    <th> Concentra </th>
    <th> Cant. </th>
    <th> T.D. </th>
    <th> Eliminar </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
     <c:if test="${listadox.id_prestacion == listado.id_prestacion}">
       <tr style="font-size:8pt">
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td style="font-size:7pt"><c:out value="${listadox.id_detalle}"/><br><c:out value="${listadox.id_historia}"/>..<c:out value="${listadox.id_persona}"/></td>
       <td><c:out value="${listadox.medicamento}"/></td>      
       <td><c:out value="${listadox.forma_far}"/></td>      
       <td><c:out value="${listadox.concentra}"/></td>      
       <td style="font-size:12pt"><b><c:out value="${listadox.salida}"/></b></td> 
       <td style="color:blue"><c:out value="${listadox.dosifica}"/></td> 
       <c:if test="${listadox.id_estado!= 'A'}">
         <td style="color:red">Dispensado</td> 
       </c:if>    
     
       <c:if test="${listadox.id_estado== 'A' or ((listadox.id_estado== 'B' or listadox.id_estado== 'C') and administra=='7')}">
         <form name=formaF<c:out value="${contadora.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-danger btn-xs" class="btn btn-danger btn-xs" href="javascript:document.formaF<c:out value="${contadora.count}"/>.submit();"><i class="fa fa-trash" ></i>Eliminar</a></div>
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>' >         
             <input type="hidden" name='id_medicamento'  value='<c:out value="${listadox.id_medicamento}"/>' >
             <input type="hidden" name='id_prestacion'   value='<c:out value="${listadox.id_prestacion}"/>' >
             <input type="hidden" name='id_detalle'      value='<c:out value="${listadox.id_detalle}"/>'>
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
             <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
             <input type="hidden" name="accion"          value='eliminarsumi' >
             <input type="hidden" name="sw"              value='1' >
           </td>
         </form>
     </c:if>
    
     </c:if>
    </tr> 
   </c:forEach>
   </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>
    </td>
    
 <td width="60%" valign="top">
  <c:if test="${medica == 'si'}">
      <table class="table table-striped table-bordered table-condensed table-responsive" >
        <form name=formaNom action="<c:url value="/RecetarSumiPaciente.do"/>" method="POST">         
          <tr style="font-size:9pt">    
            <td align=right>Nombre Prestacion</td>    
            <td ><input class="form-control" type="text" name="nombresPres"  value="<c:out value="${nombresPres}"/>"  maxlength=20 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarNom"></td>
          </tr>  
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
          <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
          <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
          <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        </form>  
        <form name=forma action="<c:url value="/RecetarSumiPaciente.do"/>" method="POST">        
          <tr style="font-size:9pt">    
            <td align=right>Codigo Pretacion</td>    	
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarCod"></td>
          </tr>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
          <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
          <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        </form>  

        <form name=formaMed action="<c:url value="/RecetarSumiPaciente.do"/>" method="POST">        
          <tr style="font-size:9pt">    
            <td align=right>Por Medicamento</td>    	
            <td ><input class="form-control" type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarMed"></td>
          </tr>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
          <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
          <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         </form> 
      </table>  
  
       
 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:8pt">
    <th> Nro </th>
    <th> Codigo </th>
    <th> DESCRIPCION </th>            
    <th> Costo /<br>Cantid. </th>
     <th> Añadir </th>        
    </tr>  
   <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador">
      <!-- ********** buscamos si se dio el medicamento ************ -->  
   <c:set var="existeb"  value="no"/>     
   <c:forEach var="listado" items="${listarRecetas}">
   
     <c:if test="${listado.id_prestacion == lista.id_prestacion}">
           <c:set var="existeb"  value="si"/>             
     </c:if>
   </c:forEach>      
       
   <c:if test="${existeb == 'no'}"> 
     <tr style="font-size:8pt">
     <td align="center"><c:out value="${contador.count}"/></td>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <c:if test="${lista.id_prestacion=='3397' or lista.id_prestacion=='3526' or lista.id_prestacion=='3527' or lista.id_prestacion=='3528' or lista.id_prestacion=='3529' or lista.id_prestacion=='3530' or lista.id_prestacion=='3531' or lista.id_prestacion=='3532' or lista.id_prestacion=='3504' or lista.id_prestacion=='3505' or lista.id_prestacion=='3525' or lista.id_prestacion=='3441' or lista.id_prestacion=='3496' or lista.id_prestacion=='3239' or lista.id_prestacion=='3238' or lista.id_prestacion=='3397' or lista.id_prestacion=='3508' or lista.id_prestacion=='3484' or lista.id_prestacion=='3185' or lista.id_prestacion=='3186' or lista.id_prestacion=='3187' or lista.id_prestacion=='3188' or lista.id_prestacion=='3189' or lista.id_prestacion=='3434' or lista.id_prestacion=='3475'}"> 
           <td><input type="text" name="canti" value=1 size=3 maxlength=3 onblur='validar(canti,"9")'/></td>               
       </c:if>
       <c:if test="${lista.id_prestacion!='3397' and lista.id_prestacion!='3526' and lista.id_prestacion!='3527' and lista.id_prestacion!='3528' and lista.id_prestacion!='3529' and lista.id_prestacion!='3530' and lista.id_prestacion!='3531' and lista.id_prestacion!='3532' and lista.id_prestacion!='3504' and lista.id_prestacion!='3505' and lista.id_prestacion!='3525' and lista.id_prestacion!='3441' and lista.id_prestacion!='3496' and lista.id_prestacion!='3239' and lista.id_prestacion!='3238' and lista.id_prestacion!='3397' and lista.id_prestacion!='3508' and lista.id_prestacion!='3484' and lista.id_prestacion!='3185' and lista.id_prestacion!='3186' and lista.id_prestacion!='3187' and lista.id_prestacion!='3188' and lista.id_prestacion!='3189'  and lista.id_prestacion!='3434' and lista.id_prestacion!='3475'}"> 
           <td align="center"><b><c:out value="${lista.costo}"/></b></td>  
       </c:if>  
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs " href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();"><i class="fa fa-plus" ></i>Añadir</a></div>
  	 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>                  
  	 <input type="hidden" name='id_prestacion'   value='<c:out value="${lista.id_prestacion}"/>'>
         <input type="hidden" name='prestacion'      value='<c:out value="${lista.prestacion}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_detalle'      value='<c:out value="${id_detallle}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
         <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
         <input type="hidden" name='internado'       value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
         <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:if>
   </c:forEach>
</table>

   <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:8pt">
    <th> No.</th>
    <th> Codigo </th>
    <th> DESCRIPCION </th>            
    <th> Costo /<br>Cantid. </th> 
    <th> Añadir </th>        
    </tr>  
   <c:forEach var="lista" items="${listarPrestacionesCot}" varStatus="contador">
       
         <!-- ********** buscamos si se dio el medicamento ************ -->  
   <c:set var="existeb"  value="no"/>     
   <c:forEach var="listado" items="${listarRecetas}">
     <c:if test="${listado.id_prestacion == lista.id_prestacion}">
           <c:set var="existeb"  value="si"/>             
     </c:if>
   </c:forEach>      
       
   <c:if test="${existeb == 'no'}">   
     <tr style="font-size:8pt">
      <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td> 
       <c:if test="${lista.id_prestacion=='3186' or lista.id_prestacion=='3188' or lista.id_prestacion=='3189' or lista.id_prestacion=='3526' or lista.id_prestacion=='3527' or lista.id_prestacion=='3528' or lista.id_prestacion=='3529' or lista.id_prestacion=='3530' or lista.id_prestacion=='3531' or lista.id_prestacion=='3532' or lista.id_prestacion=='3504' or lista.id_prestacion=='3505' or lista.id_prestacion=='3525' or lista.id_prestacion=='3441' or lista.id_prestacion=='3496' or lista.id_prestacion=='3239' or lista.id_prestacion=='3238' or lista.id_prestacion=='3508' or lista.id_prestacion=='3397' or lista.id_prestacion=='3484'}"> 
           <td><input type="text" name="canti" value=1 size=3 maxlength=3 onblur='validar(canti,"9")'/></td>               
       </c:if>
       <c:if test="${lista.id_prestacion!='3186' and lista.id_prestacion!='3188' and lista.id_prestacion!='3189' and lista.id_prestacion!='3526' and lista.id_prestacion!='3527' and lista.id_prestacion!='3528' and lista.id_prestacion!='3529' and lista.id_prestacion!='3530' and lista.id_prestacion!='3531' and lista.id_prestacion!='3532' and lista.id_prestacion!='3504' and lista.id_prestacion!='3505' and lista.id_prestacion!='3525' and lista.id_prestacion!='3441' and lista.id_prestacion!='3496' and lista.id_prestacion!='3239' and lista.id_prestacion!='3238' and lista.id_prestacion!='3508' and lista.id_prestacion!='3397' and lista.id_prestacion!='3484'}"> 
           <td align="center"><b><c:out value="${lista.costo}"/></b></td>  
       </c:if> 
    <c:if test="${tipo_medico!= '33' or administra=='7'}">  
    
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs " href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();"><i class="fa fa-plus" ></i>Añadir</a></div>
  	 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>                  
  	 <input type="hidden" name='id_prestacion'   value='<c:out value="${lista.id_prestacion}"/>'>
         <input type="hidden" name='prestacion'      value='<c:out value="${lista.prestacion}"/>'>
         <input type="hidden" name='id_detalle'      value='<c:out value="${id_detallle}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='internado'       value='<c:out value="${lista.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
         <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name='accion'          value='adicion' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
    </c:if>
    </c:if>
   </c:forEach>
</table>
   </c:if> 
   
   <c:if test="${medica == 'no'}"> 
     <form name=forma action="<c:url value="/RecetarSumiPaciente.do"/>" method="POST">        
         <table >   
          <tr>    
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="Otra Prestacion"></td>
          </tr> 
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
  <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
  <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
  <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
  <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
  <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
</form> 
     
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:8pt">
    <th> No. </th>
    <th> MEDICAMENTO </th>
    <th> FORMA </th>                
    <th> CONCENTRA </th> 
    <th> Stock<br>Total </th>           
    <th> Cant. </th>            
    <th> INDICACION </th>
    <th> Dosifica<br>dias </th>
    </tr>  
    
   <c:forEach var="lista" items="${listarRecetasPres}" varStatus="contador">     
   <!-- ********** buscamos si se dio el medicamento ************ -->  
   <c:set var="existe"  value="no"/>     
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
     <c:if test="${listadox.id_medicamento == lista.id_medicamento}">
           <c:set var="existe"  value="si"/>             
     </c:if>
   </c:forEach>                
       <!-- ********** mostramos los medicamentos aun no entregados ************ -->     
         <tr style="font-size:8pt">
              <td align="center"><c:out value="${contador.count}"/></td>
              <td><c:out value="${lista.medicamento}"/></td>      
              <td><c:out value="${lista.forma_far}"/></td>          
              <td><c:out value="${lista.concentra}"/></td>
              <c:if test="${lista.stock > 0}">
                  <td style="font-size:14; color:blue" align="center"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>
              </c:if>     
              <c:if test="${lista.stock <= 0}">
                  <td style="font-size: 9pt; color:red" align="center"><b>Sin <br>Stock</b></td>
              </c:if>
             <form name=formaMedPres<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarSumiPaciente.do"/>'>
               <td><input type="text" name="entrada" value="<fmt:formatNumber value="${lista.entrada}" maxFractionDigits="0"/>" size="3" maxlength="5" onblur='validar(entrada,"9")'/></td>               
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>    
               <td><SELECT NAME="dosifica">
                     <c:if test="${id_consultoriofar==11}">
                          <option value="1">1</option>  
                     </c:if>
                     <c:if test="${id_consultoriofar!=11}">
                          <option value="0">----</option>  
                     </c:if> 
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>
               <td>     
                 <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaMedPres<c:out value="${contador.count}"/>.submit();"><i class="fa fa-plus" ></i>Añadir</a></div>
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>                  
                 <input type="hidden" name='id_medicamento'  value='<c:out value="${lista.id_medicamento}"/>'>
                 <input type="hidden" name='id_prestacion'   value='<c:out value="${lista.id_prestacion}"/>'>
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name="fechamodif"      value='<fmt:formatDate value="${fechamodif}" pattern='dd/MM/yyyy HH:mm'/>' >
                 <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                 <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
                 <input type="hidden" name='accion'          value='adicionsumi' >
                 <input type="hidden" name='sw'              value='1' >
               </td>
             </form> 
      </tr>
   </c:forEach>
</table>
   </c:if> 
   </td>
  </tr>
</table>
