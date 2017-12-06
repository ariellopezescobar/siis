<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Perfil Farmacoterapeutico</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
<tr>
 <td valign="top">  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
    <th colspan="8"  bgcolor="#F2F2F2">DATOS DEL PACIENTE</th>
  </tr>
  <tr >
    <td colspan="8" width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr  style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombre Paciente</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
       <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Matricula</td>          
        <td><c:out value = "${datos.nro_registro}"/></td>
      </tr>  
      <!--<tr>    
        <td class="etiqueta">Fecha</td>          
        <td><fmt:formatDate value="${datos.fec_registro}" pattern='dd/MM/yyyy'/></td> 
      </tr> -->     
   </table>
  </td>
  </tr> 
  
  
  
  <tr>
     <td colspan="2"><form name=formaImp2 method=post action='<c:url value="/RecetasInternados.do"/>'>
      <td colspan="3">
      <div class="imprimir"><a class="btn btn-success" href="javascript:document.formaImp2.submit();">Imprimir</a></div></td>
        <input type="hidden" name="id_medicamento"    value=<c:out value="${id_medicamento}"/> >
        <input type="hidden" name="id_historial"      value=<c:out value="${id_historial}"/> >
        <input type="hidden" name="id_pedido"         value=<c:out value="${id_pedido}"/> >
        <input type="hidden" name="id_paciente"       value=<c:out value="${id_paciente}"/> >
        <input type="hidden" name='accion'            value='ImprimirPerfil2'>
     </form></td>
     <td colspan="2"><form name=formaImp method=post action='<c:url value="/RecetasInternados.do"/>'>
      <td colspan="3">
      <div class="imprimir"><a class="btn btn-success" href="javascript:document.formaImp.submit();">Imprimir</a></div></td>
        <input type="hidden" name="id_medicamento"    value=<c:out value="${id_medicamento}"/> >
        <input type="hidden" name="id_historial"      value=<c:out value="${id_historial}"/> >
        <input type="hidden" name="id_pedido"         value=<c:out value="${id_pedido}"/> >
        <input type="hidden" name="id_paciente"       value=<c:out value="${id_paciente}"/> >
        <input type="hidden" name='accion'            value='ImprimirPerfil'>
     </form></td>
 </tr>
  <tr style="font-size:8pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Codigo </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma<br> Farmac </th>
    <th bgcolor="#F2F2F2"> Cant. <br> Recet.</th>
    <th bgcolor="#F2F2F2"> Saldo </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> Tiemp. <br>Dosif. </th>
    <th bgcolor="#F2F2F2"> Revertir </th>
    <th bgcolor="#F2F2F2"> Perfil </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardexPerfil}" varStatus="contador">
       <tr style="font-size:8pt" >
       <form name=formaModint<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionI.do"/>'>
              <td align="center">     
                 <div class="modifica"><a href="javascript:document.formaModint<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>'>
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'>  
                 <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>  
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>'>
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name="modify"          value='modify' >
                 <input type="hidden" name="swx"             value='swx' >
                  <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMII)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if>     
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='10' >
              </td>
       </form>
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yy'/>&nbsp;<b><fmt:formatDate value="${listado.fecha}" pattern='HH:mm'/></b></td>
       <td><c:out value="${listado.codsumi}"/></td>  
       <td><c:out value="${listado.medicamento}"/></td>  
       <td><c:out value="${listado.forma_far}"/></td>           
       <td align="center" style="color:blue; font-size:12pt"><c:out value="${listado.suma1}"/></td> 
       <td align="center" style="color:red; font-size:12pt"><c:out value="${listado.suma4}"/></td> 
       <td><c:out value="${listado.indicacion}"/></td>  
       <td align="center"><c:out value="${listado.dosifica}"/></td>  
       <form name=formaMRev<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetasInternados.do"/>'>
           <td>     
             <div class="volver"><a class="btn btn-info btn-xs" href="javascript:document.formaMRev<c:out value="${contador.count}"/>.submit();">Revertir</a></div>
             <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
             <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> >         
             <input type="hidden" name="id_receta"       value=<c:out value="${listado.id_receta}"/> >
             <input type="hidden" name="id_kardex"       value=<c:out value="${listado.id_kardex}"/> >
             <input type="hidden" name="id_historial"    value=<c:out value="${id_historial}"/> > 
             <input type="hidden" name="id_paciente"     value=<c:out value="${id_paciente}"/> >
             <input type="hidden" name="id_persona"      value=<c:out value="${id_persona}"/> >
             <input type="hidden" name="id_pedido"       value=<c:out value="${id_pedido}"/> > 
             <input type="hidden" name="accion"          value='Revertir'>
           </td>
       </form>
       <form name=formaMReg<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetasInternados.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMReg<c:out value="${contador.count}"/>.submit();">Perfil</a></div>
             <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
             <input type="hidden" name="id_detalle"      value=<c:out value="${listado.id_detalle}"/> > 
             <input type="hidden" name="id_historial"    value=<c:out value="${id_historial}"/> > 
             <input type="hidden" name="id_paciente"     value=<c:out value="${id_paciente}"/> >
             <input type="hidden" name="id_receta"       value=<c:out value="${listado.id_receta}"/> >
             <input type="hidden" name="id_kardex"       value=<c:out value="${listado.id_kardex}"/> >
             <input type="hidden" name="id_persona"      value=<c:out value="${id_persona}"/> > 
             <input type="hidden" name="id_pedido"       value=<c:out value="${id_pedido}"/> > 
             <input type="hidden" name="accion"          value='Perfil'>
           </td>
       </form>
     </tr>  
   </c:forEach>

 </table>

</td>
<td valign="top">

<c:if test="${VerP=='Ver'}">
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3"  bgcolor="#F2F2F2">DATOS PERFIL MEDICAMENTO</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombre Medicamento::</td>    
        <td><c:out value = "${datomedica.medicamento}"/></td>
      </tr>
       <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Forma Far::</td>    	      
        <td><c:out value = "${datomedica.forma_far}"/></td>
      </tr>   
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Concetra::</td>          
        <td><c:out value = "${datomedica.concentra}"/></td>
      </tr>   
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Indicacion::</td>    
      </tr> 
   </table>
  </td>
  </tr>  
 </table>
</c:if>  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th colspan="3"><center>Entragar Medicamento</center> </th>
   </tr>  
   <form name=formaReceta<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetasInternados.do"/>'>
   <tr><td>Cantidad
      <SELECT NAME="cantidad">
            <option value="1" selected> 1 </option>
            <option value="2" > 2 </option>
            <option value="3" > 3 </option>
            <option value="4" > 4 </option>
            <option value="5" > 5 </option>
            <option value="6" > 6 </option>
            <option value="7" > 7 </option>
            <option value="8" > 8 </option>
            <option value="9" > 9 </option>
            <option value="10" > 10 </option>
      </SELECT></td>
         <td><input type="text" name="observa" value="" size="30" maxlength=30 placeholder="Observaciones..."/></td>
          <td align="center">     
              <div class="siguiente"><center><a class="btn btn-primary btn-xs" href="javascript:document.formaReceta.submit();">Entregar</a></center></div>
              <input type="hidden" name="id_medicamento"    value=<c:out value="${id_medicamento}"/> >
              <input type="hidden" name="id_historial"      value=<c:out value="${id_historial}"/> > 
              <input type="hidden" name="id_kardex"         value=<c:out value="${id_kardex}"/> >
              <input type="hidden" name="id_pedido"         value=<c:out value="${id_pedido}"/> >
              <input type="hidden" name="id_paciente"       value=<c:out value="${id_paciente}"/> >
              <input type="hidden" name="accion"            value='EntregarM' >
          </td>
       </form>     
   </tr>  
   
</table>    
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Entrada </th>
    <th bgcolor="#F2F2F2"> Salida </th>
    <th bgcolor="#F2F2F2"> Saldo </th>
    <th bgcolor="#F2F2F2"> Observacion </th>
   </tr>  
   <c:forEach var="lista" items="${listarKardex}" varStatus="contador">
      <tr style="font-size:8pt">
        <td align="center"><c:out value="${contador.count}"/></td>
        <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td> 
        <td align="center" style="color:blue; font-size:12pt"><c:out value="${lista.entradas}"/></td> 
        <td align="center" style="color:blue; font-size:12pt"><c:out value="${lista.salidas}"/></td> 
        <td align="center" style="color:blue; font-size:12pt"><c:out value="${lista.saldos}"/></td> 
        <td><c:out value="${lista.cadena1}"/></td> 
      </tr>
   </c:forEach>
</table>
 
</td>
</tr>
</table>