<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<table class="table table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3">RECETA DEEL PACIEENTE INTERNADO</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-bordered table-hover table-condensed table-responsive">
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>  
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Monto a Cancelar</td>    	      
        <td><b><fmt:formatNumber value="${datos.precio_total}" maxFractionDigits="2"/>&nbsp;&nbsp;&nbsp;[Bs.]</b></td>
      </tr>  
   </table>
   <table><tr><td> 
   <c:if test="${cod_esta!='200010'}">
         <form name=formaRetQ method=post action='<c:url value="/ListaRecetaI.do"/>'>
    <td colspan="2">
         <div class="volver"><a href="javascript:document.formaRetQ.submit();">Finalizar</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Receta'>
   </td>       
   </form>
   </c:if>  
   <c:if test="${cod_esta=='200010'}">
      <form name=formaRet method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
         <div class="volver"><a class="btn btn-warning" href="javascript:document.formaRet.submit();">Finalizar</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Recetaaa'>
    </td>       
   </form>
     <td colspan="2">&nbsp;&nbsp;</td> 

       <form name=formaperfil method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
             <div class="volver"><a class="btn btn-info" href="javascript:document.formaperfil.submit();">CrearPerfil-Finalizar</a></div>
              <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
              <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>  
              <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
              <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
              <input type="hidden" name="id_programa"     value='<c:out value="${id_programa}"/>'>
              <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>'>
              <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
              <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
              <input type="hidden" name='accion'          value='CrearPerfil'>
       </td>       
       </form>
       
   </c:if>  
   
   </td> 
   </tr> </table>
   
  <table class="table table-bordered table-hover table-condensed table-responsive"> 
  <tr  style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro. </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>           
    <th bgcolor="#F2F2F2"> Cantidad </th>
    <th bgcolor="#F2F2F2"> Costo </th>
    <th bgcolor="#F2F2F2"> Total </th>
    <th bgcolor="#F2F2F2"> Existencia </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr  style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><font size="3"><c:out value="${listado.num_recetak}"/></font>-<font color="blue"><c:out value="${listado.id_persona}"/></font></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>             
       <td><c:out value="${listado.concentra}"/></td>             
       <td style="color:blue; font-size: 14pt" align="center"><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>       
       <td style="color:red; font-size: 10pt" align="right"><c:out value="${listado.saldos}"/></td> 
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaRecetaI.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'> 
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'> 
  	 <input type="hidden" name="id_medicamento"  value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name="id_kardex"       value='<c:out value="${listado.id_factura}"/>'>
         <input type="hidden" name="id_receta"       value='<c:out value="${listado.id_receta}"/>' >
         <input type="hidden" name="salida"          value='<c:out value="${listado.salida}"/>' >
         <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_por'          value='<c:out value="${listado.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="expedido"        value='<c:out value="${listado.expedido}"/>' >
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name="accion"          value='eliminar'>
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>


   
</table>
   </td>
     <td width="50%" valign="top">
     <table ><tr>
     <c:if test="${accionm!='Modificar'}">
       <form name=formatodo method=post action='<c:url value="/ListaRecetaI.do"/>'>
        <td colspan="2">
             <div class="volver"><a class="btn btn-success" href="javascript:document.formatodo.submit();">EntregarTodo</a></div>
              <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
              <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>  
              <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
              <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
              <input type="hidden" name="id_programa"     value='<c:out value="${id_programa}"/>'>
              <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
              <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
              <input type="hidden" name='accion'          value='EntregarTodo'>
       </td>       
       </form>
       </c:if>
      
       </tr> </table>   
        
  <table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th bgcolor="#F2F2F2"> Nro. <br>Rec.</th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Stock <br>Total</th>
    <c:if test="${expedido=='V'}">
         <th bgcolor="#F2F2F2"> Stock <br>Venta</th>
    </c:if>  
    <c:if test="${expedido=='S'}">
         <th bgcolor="#F2F2F2"> Stock <br>SUMI</th>
         <th bgcolor="#F2F2F2">Program</th>
    </c:if>
    <c:if test="${expedido=='P'}">
         <th bgcolor="#F2F2F2"> Stock <br>Program</th>
         <th bgcolor="#F2F2F2">Program</th>
    </c:if>
    <th bgcolor="#F2F2F2"> Cantidad </th>
    <th bgcolor="#F2F2F2"> Entregar </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/><br><font color="blue"><c:out value="${listado.id_historial}"/></font></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td> 
       <td><fmt:formatNumber value="${listado.stock}" maxFractionDigits="0"/></td> 
       <c:if test="${listado.stockv > 0 and expedido=='V'}">
             <td style="color:blue; font-size: 14pt"><fmt:formatNumber value="${listado.stockv}" maxFractionDigits="0"/></td>    
       </c:if>     
       <c:if test="${listado.stockv <= 0 and expedido=='V'}">
             <td  style="color:red" align="center"><b>SIN <br>STOCK</b></td>                           
       </c:if>
       <c:if test="${listado.stocks > 0 and expedido=='S'}">
             <td style="color:blue; font-size: 14pt"><fmt:formatNumber value="${listado.stocks}" maxFractionDigits="0"/></td>    
       </c:if>     
       <c:if test="${listado.stocks <= 0 and expedido=='S'}">
             <td  style="color:red" align="center"><b>SIN <br>STOCK</b></td>                           
       </c:if>
       <c:if test="${listado.stockp > 0 and expedido=='P'}">
             <td style="color:blue; font-size: 14pt"><fmt:formatNumber value="${listado.stockp}" maxFractionDigits="0"/></td>    
       </c:if>     
       <c:if test="${listado.stockp <= 0 and expedido=='P'}">
             <td  style="color:red" align="center"><b>SIN <br>STOCK</b></td>                           
       </c:if>
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaRecetaI.do"/>'>
       <c:if test="${expedido=='P' or expedido=='S'}">
             <td><SELECT NAME="id_programa">
	         <c:forEach var="prog" items="${listarProg}">
                    <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                       <c:out value="${prog.concentra}"/>
                    </option>
                 </c:forEach>
              </SELECT></td>         
       </c:if>
       <td><input type="text" name="cantidad" value=<c:out value="${listado.salida}"/> size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_historial"      value='<c:out value="${id_historial}"/>' >  
         <input type="hidden" name="id_detalle"        value='<c:out value="${listado.id_detalle}"/>'>
         <input type="hidden" name="id_receta"         value='<c:out value="${listado.id_detalle}"/>'>
         <input type="hidden" name='id_historia'       value='<c:out value="${id_historia}"/>'>  
  	 <input type="hidden" name="id_medicamento"    value='<c:out value="${listado.id_medicamento}"/>'>
         <input type="hidden" name="numeracion"        value='<c:out value="${listado.numeracion}"/>'>
         <input type="hidden" name="expedido"          value='<c:out value="${listado.expedido}"/>'> 
         <input type="hidden" name="stock"             value='<c:out value="${listado.stock}"/>'>
         <input type="hidden" name='id_doctor'        value='<c:out value="${id_doctor}"/>'>
         <input type="hidden" name='id_persona'       value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'   value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'        value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name="accion"           value='adicion' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>

</table>
    </td>
  </tr>

</table>


