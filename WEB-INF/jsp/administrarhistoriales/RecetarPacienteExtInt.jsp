<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <th colspan="3"><center>RECETAA DEL PACIENTE INTERNADO</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-condensed table-responsive" >
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
   
   <table>
   <tr>    
   <c:if test="${tipo_medico== '33' and administra!='7'}">      
    <td><form name=formaPre<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td colspan="2">     
         <div><a class="btn btn-success" href="javascript:document.formaPre<c:out value="${contador.count}"/>.submit();">Retormar</a></div>
  	 <input type="hidden" name="id_historial"    value='<c:out value="${id_reservacion}"/>' >
         <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' >
	 <input type="hidden" name="accion"          value='previaint' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form></td>     
   </c:if>
   <c:if test="${tipo_medico!= '33'}">      
     <td><form name=formaRet method=post action='<c:url value="/PlanAccionI.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.formaRet.submit();">Retornar</a></div>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='accion'          value='Ninguno'>
      </td>  
     </form></td>
        
    <td><form name=formaImp4 method=post action='<c:url value="/RecetarPacienteExtInt.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-warning" href="javascript:document.formaImp4.submit();">Rep.Ult.Receta</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='RepetirRecetaI'>
     </form></td>   
     
   </c:if>
   <c:if test="${urgencia== '1'}">
     <c:if test="${cod_esta!=400016}">
         <td><form name=formaImpNegra method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-info" href="javascript:document.formaImpNegra.submit();">301Negras</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Negra'>
     </form></td>   
     <td><form name=formaImpRoja method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-info" href="javascript:document.formaImpRoja.submit();">303Rojas</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Roja'>
     </form></td>   
     </c:if>    
     <c:if test="${cod_esta==400016}">
         <td><form name=formaImpRoja method=post action='<c:url value="/RecetarPaciente.do"/>'>
          <td colspan="2">
          <div><a class="btn btn-info" href="javascript:document.formaImpRoja.submit();">303Rojas</a></div></td>
            <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
            <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
            <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
            <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
            <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
            <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
            <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
            <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
            <input type="hidden" name='accion'          value='Receta'>
         </form></td>   
     </c:if>    
     
   </c:if>    
   <c:if test="${urgencia!= '1'}">    
   <td><form name=formaImpU method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-info" href="javascript:document.formaImpU.submit();">UniDosis</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='UniDosis'>
     </form></td>   
     <td><form name=formaImpMulti method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-info" href="javascript:document.formaImpMulti.submit();">Multiple</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Roja'>
     </form></td> 
   </c:if>  
   <c:if test="${restrig== 'si'}">      
   <form name=formaProt method=post action='<c:url value="/RecetarPaciente.do"/>'>
   <td colspan="2">
     <div><a class="btn btn-primary" href="javascript:document.formaProt.submit();">ProtocoloMed</a></div></td>
      <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
      <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
      <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' > 
      <input type="hidden" name="accion"          value='protocolomed'>
   </form>
   </c:if>
   <c:if test="${urgencia!= '1'}">   
    <td><form name=formaImp method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div><a class="btn btn-primary" href="javascript:document.formaImp.submit();">Imprimir</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Receta'>
     </form></td>
     </c:if>
   </tr>  
  </table>
  
 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA </th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Cant </th>
    <th bgcolor="#F2F2F2"> Dias<br>Dosif. </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yy'/><br><font color="blue"><fmt:formatDate value="${listado.fecha}" pattern='HH:mm'/></font></td>      
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td><c:out value="${listado.salida}"/></td>
       <td align="center"><c:out value="${listado.dosifica}"/></td> 
    <c:if test="${listado.id_estado == 'A'}"> 
      <c:if test="${listado.id_historia == inter}"> 
         <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPacienteExtInt.do"/>'>
           <td>      
             <div><a class="btn btn-danger btn-sm" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
             <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >         
             <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
             <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="accion"          value='eliminar' >
             <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
             <input type="hidden" name="sw"              value='1' >
           </td> 
         </form>
      </c:if>    
      <c:if test="${listado.id_historia != inter}"> 
          <form name=formaRepRE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPaciente.do"/>'>
           <td>      
             <div><a class="btn btn-info btn-sm" href="javascript:document.formaRepRE<c:out value="${contador.count}"/>.submit();"><c:out value="${listado.id_historia}"/></a></div>
             <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >         
             <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
             <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="id_historia2"    value='<c:out value="${listado.id_historia}"/>' >
             <input type="hidden" name='accion'          value='RepRoja'>
             <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
             <input type="hidden" name="sw"              value='1' >
            </td> 
         </form>
      </c:if>    
    </c:if>
    <c:if test="${listado.id_estado == 'B' or listado.id_estado == 'C'}"> 
        <td style="color:blue"><b>Dispensado</b><br><font color="green"><c:out value="${listado.id_historia}"/></font></td> 
    </c:if>  
   </tr> 
   </c:forEach>

</table>
    </td>
    <td width="50%" valign="top">
  <form name=forma action="<c:url value="/RecetarPacienteExtInt.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-condensed table-responsive" >
          <tr>    
            <td align=right bgcolor="#F2F2F2">Nombre Medicamento:</td>    
            <td><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary btn-lg" type="submit" value="Buscar"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
  <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
  <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>  
  <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
 </form>       
  
 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA </th>                
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Stock </th>
    <c:if test="${codesta!=200010}">
         <th  bgcolor="#F2F2F2" style="font-size:10"> PRECIO </th>     
    </c:if>
    <th bgcolor="#F2F2F2"> CANT</th>
    <th bgcolor="#F2F2F2"> INDICACION </th>
    <th bgcolor="#F2F2F2"> Dosifica<br>dias </th>
    <th bgcolor="#F2F2F2"> RECETAR </th>
    </tr>  
   <c:if test="${expedido == 'E'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
         <c:set var="existeb"  value="no"/>    
         <c:forEach var="listado" items="${listarRecetas}">   
             <c:if test="${listado.id_medicamento == lista.id_medicamento}">
                   <c:set var="existeb"  value="si"/>             
             </c:if>
         </c:forEach>      
         <c:if test="${existeb == 'no'}">     
             <tr style="font-size:9pt">
               <td align="center"><c:out value="${contador.count}"/></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td><c:out value="${lista.forma_far}"/></td>          
               <td><b><c:out value="${lista.concentra}"/></b></td> 
               <c:if test="${lista.stock>0}">
                   <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stock<=0}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <c:if test="${codesta!=200010}">
                  <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>      
               </c:if>
               
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPacienteExtInt.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td> 
               <td><SELECT NAME="dosifica">
                      
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td> 
               <td>     
                 <div><a class="btn btn-success btn-sm" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento" value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
                 <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>                
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>
             </form>
         </c:if>   
      </tr>    
   </c:forEach>
  </c:if>
  <c:if test="${expedido == 'P'}">
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
             <c:if test="${lista.id_medicamento < 20000 }">
               <tr style="font-size:9pt">
               <td align="center"><c:out value="${contador.count}"/></td>
               <td><c:out value="${lista.medicamento}"/></td>      
               <td><c:out value="${lista.forma_far}"/></td>          
               <td><b><c:out value="${lista.concentra}"/></b></td>
               <c:if test="${lista.stock>0}">
                   <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>
               </c:if>
               <c:if test="${lista.stock<=0}">
                   <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
               </c:if>
               <c:if test="${codesta!=200010}">
                  <td style="font-size: 10pt"><b><c:out value="${lista.precio_venta}"/></b></td>      
               </c:if>
               
             <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPacienteExtInt.do"/>'>
               <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>  
               <td><SELECT NAME="dosifica">
             
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>
               <td>     
                 <div><a class="btn btn-success btn-sm" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
                 <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
                 <input type="hidden" name="id_medicamento"  value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>   
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>                
                 <input type="hidden" name="accion"          value='adicion' >
                 <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
                 <input type="hidden" name="sw"              value='1' >
               </td>   
             </form>
          </c:if>
      </tr>      
   </c:forEach>
  </c:if>
</table>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA</th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Stock </th>
    <c:if test="${codesta!=200010}">
         <th  bgcolor="#F2F2F2" style="font-size:10"> PRECIO </th>     
    </c:if>
     
    <th bgcolor="#F2F2F2"> CANT </th>
    <th bgcolor="#F2F2F2"> INDICACION </th>
    <th bgcolor="#F2F2F2"> Dosifica<br>dias </th>
    <th bgcolor="#F2F2F2"> RECETAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentosCot}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>             
       <td><b><c:out value="${listado.concentra}"/></b></td>      
       <c:if test="${listado.stock>0}">
           <td style="font-size:11; color:blue" align="center"><b><fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/></b></td>
       </c:if>
       <c:if test="${listado.stock<=0}">
           <td style="font-size: 10pt; color:red" align="center"><b>Sin Stock</b></td>
       </c:if> 
       <c:if test="${codesta!=200010}">
          <td style="font-size: 10pt"><b><c:out value="${listado.precio_venta}"/></b></td>             
       </c:if>
       
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarPacienteExtInt.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>    
       <td><SELECT NAME="dosifica">
                    
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td>
       <td>     
         <div><a class="btn btn-success btn-sm" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Recetar</a></div>
         <input type="hidden" name="id_reservacion"  value=<c:out value="${id_reservacion}"/> >                  
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='modify'          value='<c:out value="${modify}"/>'>
         <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
         <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>               
         <input type="hidden" name="spam"            value='<c:out value="${spam}"/>' >
         <input type="hidden" name="accion"          value='adicion' >
         <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
     </tr>  
    </c:forEach>
    </table>
   </td>
   </tr>
 </table>