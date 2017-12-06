<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="formulario">
  <tr>
    <th bgcolor="#F2F2F2"><table border="0">
<tr><td bgcolor="#F2F2F2">    
<c:if test="${codesta!='200010'}">
      <form name=formaRet method=post action='<c:url value="/ListaReceta.do"/>'>
         <div class="volver"><a class="btn btn-primary" href="javascript:document.formaRet.submit();">Finalizar</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Receta'>
       </form>
 </c:if>
 <c:if test="${codesta=='200010'}">
      <form name=formaRet method=post action='<c:url value="/ListarAtendidos.do"/>'>
         <div class="volver"><a class="btn btn-primary" href="javascript:document.formaRet.submit();">Finalizar</a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='accion'          value='Receta'>
       </form>
 </c:if>
</td>
</tr>
</table>

    </th>
    <th colspan="1" bgcolor="#F2F2F2">RECETA ENVIADA DEL PACIENTE EXTERNO</th>
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
   
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Mediicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>           
    <th bgcolor="#F2F2F2"> Cantidad </th>
    <th bgcolor="#F2F2F2"> Costo </th>
    <th bgcolor="#F2F2F2"> Total </th>
    <th bgcolor="#F2F2F2"> Existencia </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listadok" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><font size="3"><c:out value="${listadok.num_recetak}"/></font>-<font color="blue"><c:out value="${listadok.id_persona}"/></font></td>
       <td><c:out value="${listadok.medicamento}"/></td>      
       <td><c:out value="${listadok.forma_far}"/></td>             
       <td><c:out value="${listadok.concentra}"/></td>             
       <td style="color:blue; font-size: 14pt" align="center"><fmt:formatNumber value="${listadok.salida}" maxFractionDigits="0"/></td>             
       <td><c:out value="${listadok.precio_venta}"/></td>                    
       <td><c:out value="${listadok.precio_total}"/></td>      
       <td style="color:red; font-size: 10pt" align="right"><c:out value="${listadok.saldos}"/></td>   
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaReceta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_historial" value=<c:out value="${id_historial}"/> >         
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${listadok.id_medicamento}"/> >
         <input type="hidden" name="id_kardex"       value=<c:out value="${listadok.id_factura}"/> >
         <input type="hidden" name="id_receta"       value=<c:out value="${listadok.id_receta}"/> >
         <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
         <input type="hidden" name="salida"          value=<c:out value="${listadok.salida}"/> >
         <input type="hidden" name="id_programa"     value='<c:out value="${id_programa}"/>'>
         <input type="hidden" name='sig_centro'        value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name="id_farmacia2"      value='<c:out value="${id_farmacia2}"/>' >
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_por'          value='<c:out value="${listadok.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="accionm"         value='<c:out value="${accionm}"/>'>
         <input type="hidden" name="fechar"          value=<c:out value="${fechar}"/> > 
	 <input type="hidden" name="accion"          value='eliminar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     </tr>
   </c:forEach>

</table>
    </td>

  <td width="50%" valign="top">
       
 <c:if test="${accionm!='Modificar'}">
 <table>
    <tr><td>  
       <form name=formatodo method=post action='<c:url value="/ListaReceta.do"/>'>
        <td colspan="2">
             <div class="volver"><a class="btn btn-success" href="javascript:document.formatodo.submit();">EntregarTodo</a></div>
              <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
              <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>  
              <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
              <input type="hidden" name='id_doctor'       value='<c:out value="${id_doctor}"/>'>
              <input type="hidden" name='sig_centro'      value='<c:out value="${sig_centro}"/>'>
              <input type="hidden" name="id_farmacia2"    value='<c:out value="${id_farmacia2}"/>' >
              <input type="hidden" name="id_programa"     value='<c:out value="${id_programa}"/>'>
              <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>'>
              <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
              <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
              <input type="hidden" name='accion'          value='EntregarTodo'>
       </td>       
       </form></td> 
       
       </tr> 
    </table>   
   </c:if> 

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No <br>Rec.</th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Con-<br>cent</th>
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
    <th bgcolor="#F2F2F2"> Canti<br>dad </th>
    <th bgcolor="#F2F2F2"> Entre<br>gar </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td style="font-size: 9pt"><c:out value="${listado.forma_far}"/></td>      
       <td style="font-size: 9pt"><c:out value="${listado.concentra}"/></td>
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
             <td style="color:blue; font-size: 12pt"><fmt:formatNumber value="${listado.stockp}" maxFractionDigits="0"/></td>    
       </c:if>     
       <c:if test="${listado.stockp <= 0 and expedido=='P'}">
             <td  style="color:red" align="center"><b>SIN <br>STOCK</b></td>     
       </c:if>
       <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaReceta.do"/>'>
       <c:if test="${expedido=='P' or expedido=='S'}">
             <td><SELECT NAME="id_programa">
	         <c:forEach var="prog" items="${listarProg}">
                      <c:if test="${prog.id_programa== id_programa or prog.id_programa>4}">
                        <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                           <c:out value="${prog.concentra}"/>
                        </option>
                      </c:if>  
                 </c:forEach>
              </SELECT></td>         
       </c:if>
       <td style="font-size: 13pt;" align="center" bgcolor="#5387ed" ><input type="text" name="cantidad" value="<fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/>" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_historial"      value='<c:out value="${id_historial}"/>'>
         <input type="hidden" name="id_detalle"        value='<c:out value="${listado.id_detalle}"/>'>
         <input type="hidden" name="id_receta"         value='<c:out value="${listado.id_detalle}"/>' >
         <input type="hidden" name="id_historia"       value='<c:out value="${listado.id_historia}"/>' >
  	 <input type="hidden" name="id_medicamento"    value='<c:out value="${listado.id_medicamento}"/>'>
         <input type="hidden" name='sig_centro'        value='<c:out value="${sig_centro}"/>'>
         <input type="hidden" name="id_farmacia2"      value='<c:out value="${id_farmacia2}"/>' >
         <input type="hidden" name="expedido"          value='<c:out value="${expedido}"/>'>
         <input type="hidden" name="id_programa"       value='<c:out value="${id_programa}"/>'>
         <input type="hidden" name="stock"             value='<c:out value="${listado.stock}"/>'>
         <input type="hidden" name="numeracion"        value='<c:out value="${listado.numeracion}"/>'>
         <input type="hidden" name='id_persona'        value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="accionm"           value='<c:out value="${accionm}"/>'>
         <input type="hidden" name='id_consultorio'    value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'         value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="fechar"            value=<c:out value="${fechar}"/> > 
	 <input type="hidden" name="accion"            value='adicion' >
	 <input type="hidden" name="sw"                value='1' >
       </td>
     </form>
   </c:forEach>

</table>
    </td>
  </tr>

</table>


