<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <table><tr><td><form name=formaPre method=post action='<c:url value="/ListarAtendidos.do"/>'>
         <div class="volver"><a class="btn btn-success" href="javascript:document.formaPre.submit();">Regresar</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
</form></td></tr></table>  

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>DATOS PERSONALES PACIENTE EN FARMACIA</center></th>
  </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombre Paciente</td>    
        <td><c:out value = "${nombres}"/></td>
      </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombre Dispensador</td>    
        <td><c:out value = "${nombre}"/>__<c:out value = "${sig_centro}"/>__<c:out value = "${servicio}"/></td>
      </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Edad</td>    
        <td style="color:blue"><b>Edad::<c:out value = "${edad}"/>años;<c:out value = "${mes}"/>meses;<c:out value = "${dia}"/>dias</b></td>                                  
      </tr>
</table>

<c:if test="${expedido=='S'}"> 
<center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr bgColor="#DDDDDD" style="font-size:8pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> CODIGO </th>
    <th bgcolor="#F2F2F2"> DESCRIPCIION </th>
    <th bgcolor="#F2F2F2"> COSTO </th>
    
    </tr>  
   <c:forEach var="listado" items="${listarRecetasPres}" varStatus="contador">
       <tr bgColor="#AADDDD" >
       <td style="color:blue" align="center"><c:out value="${contador.count}"/></td>
       <td style="color:blue" align="center"><fmt:formatDate value="${listado.fecha_fin}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="black" size="2"><b><fmt:formatDate value="${listado.fecha_fin}" pattern='HH:mm:ss'/></b></font></td>      
       <td style="color:blue" align="center"><c:out value="${listado.prestacion}"/></td>      
       <td style="color:blue"><c:out value="${listado.descripcion}"/><font color="red"><b>[<c:out value="${listado.cantidad}"/>]</b></font></td> 
       <td style="color:blue" align="center"><c:out value="${listado.costo}"/></td> 
       
     </tr>
     <tr>
      <td colspan=4 align="center"> 
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th style="color:green" bgcolor="#F2F2F2"> NRO </th>
    <th style="color:green" bgcolor="#F2F2F2"> FECHA </th>
    <th style="color:green" bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th style="color:green" bgcolor="#F2F2F2"> FORMA FARMACO </th>
    <th style="color:green" bgcolor="#F2F2F2"> CONCENTRACION </th>
    <th style="color:green" bgcolor="#F2F2F2"> CANTIDAD </th>
    <th style="color:green" bgcolor="#F2F2F2"> INDIICACION </th>
    <th style="color:green" bgcolor="#F2F2F2"> TIEMPO<br>DOSIFICA </th>
    </tr>  
    <c:forEach var="listadox" items="${listarRecetasP}" varStatus="contador">
     <c:if test="${listadox.id_prestacion == listado.id_prestacion}">
       <tr style="font-size:8pt" >
       <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
              <td align="center">     
                 <div class="modifica"><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>  
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if>     
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='1' >
              </td>
       </form>
       <td ><b><fmt:formatDate value="${listadox.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="blue" size="2"><fmt:formatDate value="${listadox.fecha}" pattern='HH:mm:ss'/></font></b></b></td> 
       <td ><b><c:out value="${listadox.medicamento}"/></b></td>      
       <td ><b><c:out value="${listadox.forma_far}"/></b></td>      
       <td ><b><c:out value="${listadox.concentra}"/></b></td>      
       <td align="center" style="color:blue; font-size:12pt"><b><fmt:formatNumber value="${listadox.salida}" maxFractionDigits="0"/></b></td>           
       <td ><b><c:out value="${listadox.indicacion}"/></b></td>   
        <td style="color:blue" align="center"><c:out value="${listadox.dosifica}"/></td> 
     </c:if>
    </tr> 
   </c:forEach>
   </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>  
  </center>
   </c:if>
   
   
<c:if test="${expedido=='S'}"> 
<center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr bgColor="#DDDDDD">
    <th colspan="4" style="color:red"> OTROS MEDICAMENTOS ADICIONALES </th>
    </tr>

     <tr>
      <td colspan=4 align="center"> 
   <table class="tabla">
  <tr style="font-size:9pt">
    <th style="color:green" bgcolor="#F2F2F2"> NRO </th>
    <th style="color:green" bgcolor="#F2F2F2"> Nro<br>Fol.</th>
    <th style="color:green" bgcolor="#F2F2F2"> FECHA </th>
    <th style="color:green" bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th style="color:green" bgcolor="#F2F2F2"> FORMA FARMACO </th>
    <th style="color:green" bgcolor="#F2F2F2"> CONCENTRACION </th>
    <th style="color:green" bgcolor="#F2F2F2"> CANTIDAD </th>
    <th style="color:green" bgcolor="#F2F2F2"> INDICACION </th>
    </tr>  
    <c:forEach var="listadox" items="${listarRecetasP}" varStatus="contador">
     <c:if test="${listadox.id_prestacion == '0'}">
       <tr style="font-size:9pt" <c:if test="${(contadora.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> >
       <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
              <td align="center">     
                 <div class="modifica"><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if>     
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='1' >
              </td>
       </form>
       <td><c:out value="${listadox.numeracion}"/></td>
       <td ><b><fmt:formatDate value="${listadox.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="blue" size="2"><fmt:formatDate value="${listadox.fecha}" pattern='HH:mm:ss'/></font></b></td> 
       <td ><b><c:out value="${listadox.medicamento}"/></b></td>      
       <td ><b><c:out value="${listadox.forma_far}"/></b></td>      
       <td ><b><c:out value="${listadox.concentra}"/></b></td>
       <td align="center" style="color:blue; font-size:12pt"><b><fmt:formatNumber value="${listadox.salida}" maxFractionDigits="0"/></b></td>              
       <td ><b><c:out value="${listadox.indicacion}"/></b></td>           
     </c:if>
   </c:forEach>
   </table>       
      </td>     
     </tr>
       
  
    </table>  
    
  </center>
   </c:if>
   
   
   
  <c:if test="${expedido!='S'}"> 
   <center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr bgcolor="#F2F2F2" style="font-size:8pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA FARMACO </th>
    <th bgcolor="#F2F2F2"> CONCENTRACION </th>
    <th bgcolor="#F2F2F2"> CANTIDAD </th>
    <th bgcolor="#F2F2F2" style="color:green"> TIEMPO<br>DOSIFICA </th>
    <th bgcolor="#F2F2F2"> INDIICACION </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetasP}" varStatus="contador">
       <tr style="font-size:9pt" >
       <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
              <td align="center">     
                 <div class="modifica"><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
                 <input type="hidden" name='servicio'        value='<c:out value="${servicio}"/>'>
                 <input type="hidden" name='id_tipointer'    value='<c:out value="${id_tipointer}"/>'>
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>  
                 <input type="hidden" name='id_personafar'   value='<c:out value="${id_personafar}"/>'>
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if>     
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='1' >
              </td>
       </form>
       <td align="center"><c:out value="${listado.id_detalle-170000}"/></td>
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="blue" size="2"><b><fmt:formatDate value="${listado.fecha}" pattern='HH:mm:ss'/></b></font></b></td> 
       <td><b><c:out value="${listado.medicamento}"/></b></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td align="center" style="color:blue; font-size:12pt"><b><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></b></td> 
       <td align="center"><c:out value="${listado.dosifica}"/></td>
       <!--<td align="right">
           <c:if test="${listado.stock<=0}">
                <font color="red" size="5"><fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/></font>
           </c:if>
           <c:if test="${listado.stock>0}">
                <fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/>
           </c:if> 
       </td> -->
       <td><c:out value="${listado.indicacion}"/></td>  
     </tr>           
   </c:forEach>

</table> </center>
</c:if>


<form name="adicionacat" method="POST">
<center>
     <input type="submit" class="btn btn-primary btn-lg" value='Entregar' onclick="document.adicionarpaciente.action='<c:url value="/ListaNReceta.do"/>'"></td>
     <input type="hidden" name="id_historial"  value='<c:out value="${id_historial}"/>' >
     <input type="hidden" name="id_historia"   value='<c:out value="${id_historia}"/>' >
     <input type="hidden" name='expedido'      value='<c:out value="${expedido}"/>'>  
     <input type="hidden" name='sig_centro'    value='<c:out value="${sig_centro}"/>'>
     <input type="hidden" name='servicio'      value='<c:out value="${servicio}"/>'>
     <input type="hidden" name='cod_esta'      value='<c:out value="${cod_esta}"/>'>
     <input type="hidden" name="id_farmacia2"  value='<c:out value="${id_farmacia2}"/>' >
     <input type="hidden" name='id_tipointer'  value='<c:out value="${id_tipointer}"/>'>
     <input type="hidden" name="id_paciente"   value='<c:out value="${id_paciente}"/>' >
     <input type="hidden" name="id_doctor"     value='<c:out value="${id_persona}"/>' >
     <input type="hidden" name='id_personafar' value='<c:out value="${id_personafar}"/>'>
     <input type="hidden" name="accion"        value='entregar'>
     <input type="hidden" name="sw"            value='1' >
</center>
</form>

<center><div class="form-control" style="font-size:14pt"> <center>Receta Anterior del Paciente</center></div></center>
<center><table class="formulario">
 
  <tr>  
<td>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma Far </th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Cant. </th>
    <th bgcolor="#F2F2F2" style="color:green"> Tiempo<br>Dosifica </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
     <tr style="font-size:9pt" >
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td><fmt:formatDate value="${listadox.fecha_ini}" pattern='dd/MM/yyyy H:mm'/></td> 
       <td><b><c:out value="${listadox.medicamento}"/></b></td> 
       <td><c:out value="${listadox.forma_far}"/></td>
       <td><c:out value="${listadox.concentra}"/></td>
       <td><fmt:formatNumber value="${listadox.salida}" maxFractionDigits="0"/></td>   
       <td align="center"><c:out value="${listadox.dosifica}"/></td>
       <td><c:out value="${listadox.indicacion}"/></td>   
       <td><c:out value="${listadox.medico}"/></td>   
     </tr>  
   </c:forEach>
   </table>

</td>
</tr>
</table></center>