<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <th colspan="3"><center>RECEETA DEL PACIENTE EXXTERNO</center></th>
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
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
   
 <table class="table table-striped table-bordered table-condensed table-responsive" >  
 <tr>     
 <c:if test="${tipo_medico== '33'}">      
  <form name=formaRet method=post action='<c:url value="/ListarAtendidos.do"/>'>
  <td colspan="2">
     <div><a class="btn btn-success" href="javascript:document.formaRet.submit();">Rettornar</a></div></td>
      <input type="hidden" name="id_historial"    value='<c:out value="${id_reservacion}"/>' >
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
      <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
      <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
      <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
      <input type="hidden" name='urgencias'       value='<c:out value="${urgencias}"/>'>  
      <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
      <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' > 
      <input type="hidden" name="accion"          value='previa' >
  </form>
</c:if>
<c:if test="${tipo_medico!= '33' and swfar== '1'}">      
  <form name=formaRet4 method=post action='<c:url value="/ListarAtendidos.do"/>'>
  <td colspan="2">
     <div><a class="btn btn-success" href="javascript:document.formaRet4.submit();">RetornarF</a></div></td>
      <input type="hidden" name="id_historial"    value='<c:out value="${id_reservacion}"/>' >
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
      <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
      <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
      <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
      <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
      <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' > 
      <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>' >
      <input type="hidden" name="accion"          value='previafarma' >     
  </form>
</c:if>
<c:if test="${tipo_medico!= '33' and sweco!='sweco' and swfar!= '1'}">      
  <form name=formaRet3 method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
     <td colspan="2">
     <div"><a class="btn btn-success" href="javascript:document.formaRet3.submit();">Retorrnar</a></div></td>
      <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
      <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
      <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
      <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name='accion'          value='Ninguno'>
  </form>
</c:if>

<c:if test="${tipo_medico!= '33' and sweco=='sweco'}">      
  <form name=formaRet method=post action='<c:url value="/ReporteResumen.do"/>'>
  <td colspan="2">
     <div><a class="btn btn-info" href="javascript:document.formaRet.submit();">Volver Economico</a></div></td>
      <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
      <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
      <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
      <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
      <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="accion"          value='Economico' >
  </form></td>
</c:if>

<c:if test="${codesta=='200010'}">  
    <c:if test="${urgencia!='1'}">
    <c:if test="${nrecant>0}">    
    <td><form name=formaImp4 method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaImp4.submit();">Rep.Ult.Receta</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
        <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
        <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='RepetirReceta'>
     </form></td>    
     </c:if>
     </c:if>
     <c:if test="${urgencia== '1'}"> 
     <c:if test="${codesta=='200010'}">
        <c:if test="${cod_esta!='400016'}">
            <td><form name=formaImpNegra method=post action='<c:url value="/RecetarPaciente.do"/>'>
              <td colspan="2">
              <div><a class="btn btn-warning" href="javascript:document.formaImpNegra.submit();">301Negras</a></div></td>
                <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
                <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
                <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
                <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                <input type="hidden" name='accion'          value='Negra'>
             </form></td>   
             <td><form name=formaImpRoja method=post action='<c:url value="/RecetarPaciente.do"/>'>
              <td colspan="2">
              <div><a class="btn btn-warning" href="javascript:document.formaImpRoja.submit();">303Rojas</a></div></td>
                <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>       
                <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
                <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
                <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                <input type="hidden" name='accion'          value='Roja'>
             </form></td>
        </c:if>
        <c:if test="${cod_esta=='400016'}">
            <td><form name=formaImpNegra method=post action='<c:url value="/RecetarPaciente.do"/>'>
              <td colspan="2">
              <div><a class="btn btn-warning" href="javascript:document.formaImpNegra.submit();">301Negras</a></div></td>
                <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
                <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
                <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
                <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                <input type="hidden" name='accion'          value='N301'>
             </form></td>   
             <td><form name=formaImpRoja method=post action='<c:url value="/RecetarPaciente.do"/>'>
              <td colspan="2">
              <div><a class="btn btn-warning" href="javascript:document.formaImpRoja.submit();">303Rojas</a></div></td>
                <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>       
                <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
                <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
                <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                <input type="hidden" name='accion'          value='R303'>
             </form></td>
             
             

        </c:if>    
     </c:if>
     <c:if test="${cod_esta=='200721' }">      
         <td><form name=formaImp method=post action='<c:url value="/RecetarPaciente.do"/>'>
          <td colspan="2">
          <div><a class="btn btn-warning" href="javascript:document.formaImp.submit();">Imprimir</a></div></td>
            <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
            <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
            <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
            <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
            <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
            <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
            <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
            <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
            <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
            <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
            <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
            <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
            <input type="hidden" name='accion'          value='Receta'>
         </form></td>
     </c:if>
   </c:if>    
   <c:if test="${restrig== 'si'}">      
   <form name=formaProt method=post action='<c:url value="/RecetarPaciente.do"/>'>
   <td colspan="2">
     <div><a class="btn btn-info" href="javascript:document.formaProt.submit();">ProtocoloMed</a></div></td>
      <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
      <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
      <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
      <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
      <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
      <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' > 
      <input type="hidden" name="accion"          value='protocolomed'>
   </form>
   </c:if>
   <c:if test="${urgencia!= '1'}">   
     <td><form name=formaImpU method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-warning" href="javascript:document.formaImpU.submit();">UniDosis</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
        <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
        <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
        <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='UniDosis'>
     </form></td>    
    </c:if>     
   </c:if>  
   
   
  <c:if test="${urgencia!= '1'}"> 
   <td><form name=formaImp method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-warning" href="javascript:document.formaImp.submit();">Imprimir</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
        <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
        <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
        <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Receta'>
     </form></td>
    </c:if> 
  </tr>    
  </table>  
  
  
  <c:if test="${area=='T'}">
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Cant </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
  </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
      <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.indicacion}"/></td>      
       <td><c:out value="${listado.salida}"/></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
       <td>      
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >         
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> >
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='area'            value='<c:out value="${area}"/>'>
         <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
         <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
         <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
         <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
	 <input type="hidden" name="accion"          value='eliminar' >
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
	 <input type="hidden" name="sw"              value='1' >
       </td> 
     </form>
     </tr> 
   </c:forEach>
   </table>
  </c:if>
  
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <c:if test="${area!='T'}"> 
  <tr style="font-size:10pt">
    <th bgcolor="#F2F2F2"> No<br>Rec. </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Cant </th>
    <c:if test="${codesta!='200010'}"> 
        <th bgcolor="#F2F2F2"> Costo<br>Unid. </th>
    </c:if>
    <th bgcolor="#F2F2F2"> Dias<br>Dosif. </th>
    <c:if test="${codesta=='200010'}"> 
        <th bgcolor="#F2F2F2"> Indicacion </th>
    </c:if>
    <th bgcolor="#F2F2F2"> Eliminar </th>
  </tr>  
  </c:if>
  
  <c:if test="${sweco=='sweco' and area!='T'}"> 
    
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></td>
       <c:if test="${codesta!='200010'}"> 
           <td><c:out value="${listado.costo_unit}"/></td>
       </c:if>
       <td><c:out value="${listado.dosifica}"/></td>  
       <c:if test="${codesta=='200010'}"> 
           <td><c:out value="${listado.indicacion}"/></td> 
       </c:if>
     <c:if test="${listado.id_estado=='C' or listado.id_estado=='B'}">  
          <td style="color:blue">Entregado</td>   
     </c:if>
     <c:if test="${listado.id_estado!='C' and listado.id_estado!='B'}">  
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
       <td>      
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
  	 <input type="hidden" name="id_medicamento"  value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name="id_detalle"      value='<c:out value="${listado.id_detalle}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
         <input type="hidden" name='area'            value='<c:out value="${area}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
         <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
         <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
         <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
         <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
	 <input type="hidden" name="accion"          value='eliminar' >
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
	 <input type="hidden" name="sw"              value='1' >
       </td> 
     </form>
     </c:if>
     </tr>
   </c:forEach>
   
   </table>
   
    </td>
   
    <td width="60%" valign="top">
  <form name=forma action="<c:url value="/RecetarPaciente.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-condensed table-responsive" >
          <tr style="font-size:10pt">    
            <td class="colh" align=right>Nombre / Codigo</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres"  value="<c:out value="${nombres}"/>" size="20"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input type="submit" value="Buscar"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
  <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
  <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
  <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
  <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
  <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
  <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
  <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
  <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>  
  <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
 </form>
         
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:10pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma </th>                
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Stock<br>Total </th>
    <c:if test="${expedido=='E'}">
        <th bgcolor="#F2F2F2"> Stock<br>Venta </th>
    </c:if>
    <c:if test="${expedido=='P' or expedido=='S'}">
        <th bgcolor="#F2F2F2"> Stpck<br>Prog. </th>
        <c:if test="${codesta!='200010'}"> 
             <th bgcolor="#F2F2F2" style="font-size:10"> Precio </th>
        </c:if> 
        
    </c:if>
    
    <th bgcolor="#F2F2F2"> CANT</th>
    <th bgcolor="#F2F2F2"> INDICACION </th>   
    <th bgcolor="#F2F2F2"> Dias<br>Dosif. </th>  
    <th bgcolor="#F2F2F2"> Recetar </th>
    </tr>  
   <c:if test="${expedido == 'E' or expedido == 'A'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
             <tr style="font-size:9pt">
               <td align="center"><c:out value="${contador.count}"/></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td><c:out value="${lista.forma_far}"/></td>          
               <td><c:out value="${lista.concentra}"/></td> 
               <td><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></td>
               <c:if test="${lista.stockv>0 and expedido=='E'}">
                   <td style="font-size:14; color:blue" align="center"><b><fmt:formatNumber value="${lista.stockv}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stockv<=0 and expedido=='E'}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>     
                <td><SELECT NAME="dosifica">
                     <option value="0">----</option>  
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>
               <td>     
                 <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento" value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                 <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
                 <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                 <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
                 <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>
             </form>
       </tr>
         
   </c:forEach>
  </c:if>
  <c:if test="${expedido=='P' or expedido=='S'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
             <c:if test="${lista.id_medicamento < 20000 }">
             <tr style="font-size:9pt">
               <td align="center"><c:out value="${contador.count}"/></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td style="font-size: 7pt"><c:out value="${lista.forma_far}"/></td>          
               <td style="font-size: 7pt"><c:out value="${lista.concentra}"/></td>
               <td><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></td>
               <c:if test="${lista.stockp>0 and expedido=='P'}">
                   <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${lista.stockp}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stockp<=0 and expedido=='P'}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <c:if test="${codesta!='200010'}"> 
                  <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>
               </c:if> 
               
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>
               <td><SELECT NAME="dosifica">
                     <option value="0">----</option>  
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>
               <td>     
                 <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento"  value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                 <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
                 <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                 <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
                 <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>   
             </form>
           </tr>   
          </c:if>
   </c:forEach>
  </c:if>
</table>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:10pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma</th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Stock<br>Total </th>
    <c:if test="${expedido=='E'}">
        <th bgcolor="#F2F2F2"> Stock<br>Venta </th>
    </c:if>
    <c:if test="${expedido=='P' or expedido=='S'}">
        <th bgcolor="#F2F2F2"> Stpck<br>Prog. </th>
        <th bgcolor="#F2F2F2" style="font-size:10"> Precio </th>  
    </c:if>
      
    <th bgcolor="#F2F2F2"> CANT </th>
    <th bgcolor="#F2F2F2"> INDICACION </th>
    <th bgcolor="#F2F2F2"> Dias<br>Dosif. </th>
    <th bgcolor="#F2F2F2"> Recetar </th>
    </tr>  
    <c:if test="${area!='T'}"> 
   <c:forEach var="listado" items="${listarMedicamentosCot}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       
       <td><c:out value="${listado.medicamento}"/></td>      
       <td style="font-size: 7pt"><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 7pt"><c:out value="${listado.concentra}"/></td>      
       <td><fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/></td> 
       <c:if test="${listado.stockv>0 and expedido=='E'}">
           <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${listado.stockv}" maxFractionDigits="0"/></b></td>
       </c:if>
       <c:if test="${listado.stockv<=0 and expedido=='E'}">
           <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
       </c:if>
       <c:if test="${listado.stockp>0 and expedido=='P'}">
           <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${listado.stockp}" maxFractionDigits="0"/></b></td>
       </c:if>
       <c:if test="${listado.stockp<=0 and expedido=='P'}">
           <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
       </c:if>
       <c:if test="${codesta!='200010'}"> 
          <td style="font-size: 10pt"><b><c:out value="${listado.precio_venta}"/></b></td>             
       </c:if> 
       
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td> 
       <td><SELECT NAME="dosifica">
                     <option value="0">----</option>  
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>  
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
         <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
         <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
         <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
         <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
         <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
         <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
         <input type="hidden" name="accion"          value='adicion' >
         <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr>
    </c:forEach>
   </c:if> 
    </table>
   </td>
    
   </tr>
 </table>
  </c:if>
   
   <c:if test="${sweco!='sweco' }"> 
   <c:if test="${area!='P' and area!='T'}">     
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td style="font-size:14pt; color:blue" align="center"><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></td>
       <c:if test="${codesta!='200010'}"> 
           <td align="center"><c:out value="${listado.precio_total}"/></td> 
       </c:if>
       <td align="center"><c:out value="${listado.dosifica}"/></td>  
       <c:if test="${codesta=='200010'}"> 
           <td style="font-size:9pt"><font size="1"><c:out value="${listado.indicacion}"/></font></td> 
       </c:if> 
       <c:if test="${listado.id_estado=='C' or listado.id_estado=='B'}">  
          <td style="color:blue">Entregado</td>   
     </c:if>
     <c:if test="${listado.id_estado!='C' and listado.id_estado!='B'}">  
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
       <td>      
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >         
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> >
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='area'            value='<c:out value="${area}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
         <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
         <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
         <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
	 <input type="hidden" name="accion"          value='eliminar' >
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
	 <input type="hidden" name="sw"              value='1' >
       </td> 
     </form>
     </c:if>
    </tr>  
   </c:forEach>
   </c:if>
   
</table>
    </td>
    <td width="60%" valign="top">
  <c:if test="${area!='T'}">   
  <form name=forma action="<c:url value="/RecetarPaciente.do"/>" method="POST">        
         <table><tr >    
            <td class="colh" align=right>Nombre / Codigoo</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input type="submit" value="Buscar"></td>
          </tr></table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
  <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
  <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
  <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
  <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
  <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
  <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
  <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
  <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>  
  <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
 </form>   
  </c:if>  
   
  <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDIICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma </th>                
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Stock<br>Total </th>
    <c:if test="${codesta!='200010'}"> 
          <th bgcolor="#F2F2F2" style="font-size:10"> Precio </th>
    </c:if> 
    <th bgcolor="#F2F2F2"> CANT</th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Dosifica<br>dias </th>
    <th bgcolor="#F2F2F2"> Recetar </th>
    </tr>  
   <c:if test="${expedido == 'E' or expedido == 'A'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
     <!-- ********** buscamos si se dio el medicamento ************ -->  
         <c:set var="existeb"  value="no"/>    
         <c:forEach var="listado" items="${listarRecetas}">   
             <c:if test="${listado.id_medicamento == lista.id_medicamento}">
                   <c:set var="existeb"  value="si"/>             
             </c:if>
         </c:forEach>      
         <c:if test="${existeb == 'no'}">     
             <tr style="font-size:9pt">
               <td align="center"><c:out value="${lista.id_medicamento}"/><br><font color="blue"><c:out value="${lista.codsumi}"/></font></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td><c:out value="${lista.forma_far}"/></td>          
               <td><c:out value="${lista.concentra}"/></td> 
               <c:if test="${lista.stock>0}">
                   <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stock<=0}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <c:if test="${codesta!='200010'}"> 
                   <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>
               </c:if> 
               
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
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
                 <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento"  value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
                 <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                 <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
                 <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>
             </form>
         </c:if>   
         
   </c:forEach>
  </c:if>
  <c:if test="${expedido == 'P' or expedido == 'S'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
       <!-- ********** buscamos si se dio el medicamento ************ -->  
         <c:set var="existeb"  value="no"/>    
         <c:forEach var="listado" items="${listarRecetas}">   
             <c:if test="${listado.id_medicamento == lista.id_medicamento}">
                   <c:set var="existeb"  value="si"/>             
             </c:if>
         </c:forEach>      

         <c:if test="${existeb == 'no'}">     
             <tr style="font-size:9pt">
               <td align="center"><c:out value="${lista.id_medicamento}"/><br><font color="blue"><c:out value="${lista.codsumi}"/></font></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td style="font-size: 7pt"><c:out value="${lista.forma_far}"/></td>          
               <td style="font-size: 7pt"><c:out value="${lista.concentra}"/></td>
               <c:if test="${lista.stock>0}">
                   <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stock<=0}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <c:if test="${codesta!='200010'}"> 
                   <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>
               </c:if> 
               
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
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
                 <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento"  value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                 <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
                 <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
                 <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
                 <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>   
             </form>
         
     </c:if>
   </c:forEach>
  </c:if>
</table>


<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:10pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma</th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Stock<br>Total </th>
    <c:if test="${codesta!='200010'}"> 
        <th bgcolor="#F2F2F2" style="font-size:10"> Precio </th> 
    </c:if> 
    <th bgcolor="#F2F2F2"> CANT </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Dosifica<br>dias </th>
    <th bgcolor="#F2F2F2"> RECETAR </th>
    </tr>  
    <tr style="font-size:10pt">
    <c:if test="${area=='T'}">
       <form name=formaEnPar<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
        <td>0</td><td colspan="5"><input type="text" name="otromedica" value="" size=50 maxlength=100 /></td>
        <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
        <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>        
          <td><SELECT NAME="dosifica">
                             <c:forEach var="dias" items="${dias}">
                               <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                             </c:forEach>
                           </SELECT></td>
        <td>     
          <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaEnPar<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
          <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
  	  <input type="hidden" name="id_medicamento"  value='15'>
          <input type="hidden" name='area'            value='<c:out value="${area}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
          <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
          <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
          <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
          <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
          <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
          <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
          <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
          <input type="hidden" name="accion"          value='adicion' >
          <input type="hidden" name="sw"              value='1' >
        </td>
       </form>
      </c:if> 
    </tr> 
  <c:if test="${area!='T'}"> 
   <c:forEach var="listado" items="${listarMedicamentosCot}" varStatus="contador">
    <!-- ********** buscamos si se dio el medicamento ************ -->  
   <c:set var="existeb"  value="no"/>    
   <c:forEach var="lista" items="${listarRecetas}">   
     <c:if test="${listado.id_medicamento == lista.id_medicamento}">
           <c:set var="existeb"  value="si"/>             
     </c:if>
   </c:forEach>      
   <c:if test="${existeb == 'no'}">   
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${listado.id_medicamento}"/><br><font color="blue"><c:out value="${listado.codsumi}"/></font></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td style="font-size: 7pt"><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 7pt"><c:out value="${listado.concentra}"/></td>      
       <c:if test="${listado.stock>0}">
           <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/></b></td>
       </c:if>
       <c:if test="${listado.stock<=0}">
           <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
       </c:if>
       <c:if test="${codesta!='200010'}"> 
          <td style="font-size: 10pt"><b><c:out value="${listado.precio_venta}"/></b></td>             
       </c:if> 
       
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
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
         <div><a class="btn btn-warning btn-xs" class="btn btn-primary" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
         <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
         <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
         <input type="hidden" name='swfar'           value='<c:out value="${swfar}"/>'>
         <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
         <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
         <input type="hidden" name="accion"          value='adicion' >
         <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
     </c:if>
     </tr>
    </c:forEach>
  </c:if>  
    </table>
   </td>
   </tr>
 </table>
 </c:if>