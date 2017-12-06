<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Reporte Economico del Paciente</div>

<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
   <td width="50%" valign="top"> 
   <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES PACIENTE </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nº HCL</td>    
        <td><c:out value = "${hcl}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Nombres Cliente</td>    
        <td><input type="text" name="nombres"  value='<c:out value="${nombres}"/>' size="40" maxlength="40"></td>
      </tr>   
      <tr>
        <td class="etiqueta">CI/Cliente </td>    
        <td><input type="text" name="ciu"  value='<c:out value="${ciu}"/>' size="12" maxlength="12" onblur='validar(ciu,"A9")'></td>
      </tr>
      <tr>
        <td class="etiqueta">Fecha Atencion </td>    
        <td><c:out value="${dia}"/>/<c:out value="${mes}"/>/<c:out value="${anio}"/></td>	                 
      </tr>
      <tr>
        <td class="etiqueta">Tipo de Afiliacion</td>
         <td ><c:if test="${expedido=='S'}">Ley475</c:if>
            <c:if test="${expedido=='V'}">Venta</c:if>
            <c:if test="${expedido=='P'}"><c:out value="${lista.seguro}"/></c:if> 
      </tr> 
      <tr>
        <td class="etiqueta">TOTAL ATENCION </td>    
        <td style="color:blue; font-size:14pt"><b><fmt:formatNumber value="${total2+totalfar-totaldeudapag}" maxFractionDigits="2"/></b></td>	                 
      </tr>
      <tr>
        <td class="etiqueta">TOTAL FACTURADO </td>    
        <td style="color:blue; font-size:14pt"><b><fmt:formatNumber value="${totalcfc+totalcff}" maxFractionDigits="2"/></b></td>	                 
      </tr>
      <tr>
        <td class="etiqueta">TOTAL SIN FACTURAR </td>    
        <td style="color:red; font-size:14pt"><b><fmt:formatNumber value="${totalsfc+totalsff-totaldeudapag}" maxFractionDigits="2"/></b></td>	                 
      </tr>
    </table>
<table class="formulario" width="100%" border="1"> 
    <tr> 
     
       <td> 
      <c:if test="${Factura == 2}"> 
         <c:if test="${estadfact != 'impresa' and deuda != 'M'}"> 
        
         <center>
           <input type="submit" name='accion' class="adicionar" value='Imprimir Factura'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="hcl"             value='<c:out value="${hcl}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="totalT"          value='<c:out value="${total2+totalfar}"/>' >
             <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
      </c:if> 
      
      <c:if test="${estadfact == 'impresa' and deuda != 'M'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="adicionar" value='Imprimir Copia'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="totalT"          value='<c:out value="${total2+totalfar}"/>' >
             <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
      </c:if> 
      
     </c:if> 
     </td>  
     <td> 
     <c:if test="${deuda == 'M'}"> 
         <font color="blue" size="5">En plan de pagos</font>
     </c:if>     
     <c:if test="${deuda != 'M'}"> 
    <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="btn btn-primary" value='Pasarlo Plan de Pagos'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="nombrespac"      value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
       </c:if>
       </td> 
     <td> 
    <form name="adicionar" method="POST" action='<c:url value="/ReporteResumen.do"/>' > 
         <center>
           <input type="submit" name='accion' class="btn btn-success" value='Imprimir Economico'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
       </td> 
   </tr>   
</table>     
   </td> 
   <td width="50%" valign="top"> 
   
  <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="4"><font size=2>TOTAL DEL PACIENTE </font></th>
      </tr>
        <tr>
          <th> No </th>
          <th> DETALLE RUBRO </th>    
          <th> Totales </th>
       </tr>
       <tr>
          <td>1</td> 
          <td>FARMACIA</td>
          <td align="right"><fmt:formatNumber value="${totalfar}" maxFractionDigits="2"/></td> 
       </tr>
       <c:forEach var="lpedido" items="${listaCobrosOtros}" varStatus="contador">
          <tr><td><c:out value="${contador.count+1}"/></td> 
          <td><c:out value="${lpedido.nombre}"/></td>
          <td align="right"><fmt:formatNumber value="${lpedido.total}" maxFractionDigits="2"/></td></tr> 
       </c:forEach>
  </table>
  
  <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="4"><font size=2>Facturas Emitidas </font></th>
      </tr>
      <c:forEach var="factem" items="${factemitidas}">
          <tr>
             <td><c:out value="${factem.id_pais}"/></td>
             <td style="font-size: 9pt"><fmt:formatDate value="${factem.fec_registro}" pattern='dd/MM/yyyy'/><br><font color="blue"><fmt:formatDate value="${factem.fec_registro}" pattern='HH:mm:ss'/></font></td>      
             
             <c:if test="${factem.id_estado == 'A'}"> 
                 <td><c:out value="${factem.nombres}"/><font color="red" >&nbsp;ANULADO</font></td>
                  <td align="right"><fmt:formatNumber value="${factem.precio_total}" maxFractionDigits="2"/></td>
             </c:if>
             <c:if test="${factem.id_estado == 'V'}"> 
                  <td><c:out value="${factem.nombres}"/></td>
                  <td align="right"><fmt:formatNumber value="${factem.precio_total}" maxFractionDigits="2"/></td>
             </c:if>
             
          </tr> 
       </c:forEach>
  </table>
     
 </td>
  </tr>
  
  <tr>
   <td width="50%" valign="top"> 
     <table class="table table-striped table-bordered table-condensed table-responsive">
     <tr>
         <th colspan="10"> RECETAS EMITIDAS EN FARMACIA </th>
     </tr>  
     
     <tr>
       <th> Nro </th>
       <th> Fecha </th>
       <th colspan="6"> Num. Documto</th>
       <th colspan="2"> Monto</th>
     </tr>  
    <c:forEach var="listafar" items="${listaCobrosFar}" varStatus="contador">
       <tr bgColor="#DDDAAA">
           <td><c:out value="${contador.count}"/></td>
           <td style="font-size: 9pt"><fmt:formatDate value="${listafar.fec_registro}" pattern='dd/MM/yyyy'/><br><font color="blue"><fmt:formatDate value="${listafar.fec_registro}" pattern='HH:mm:ss'/></font></td>      
           <td colspan="6"><c:out value="${listafar.id_pedido}"/>;<c:if test="${listafar.id_factura>0}"><font color="blue" size="3">FACTURADO=<c:out value="${listafar.id_factura}"/></font></c:if> ;<c:out value="${listafar.nit}"/></td>
           <td style="font-size: 9pt; color:red" align="right" colspan="2"><font size="4"><b>
             <form name=formaU<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteResumen.do"/>'>
                 <div><a href="javascript:document.formaU<c:out value="${contador.count}"/>.submit();"> <fmt:formatNumber value="${listafar.precio_total}" maxFractionDigits="1"/></a></div>
                 <input type="hidden" name="id_pedido"     value='<c:out value="${listafar.id_pedido}"/>' >
                 <input type="hidden" name="accion"        value='Valorar' >
                 <input type="hidden" name="sw1"           value='1' >
               </form>
           </b></font></td> 
       </tr>
       <tr style="font-size:9pt">
          <th> No </th>
          <th> Fecha </th>
          <th> Medicamento </th>
          <th> Forma <br>Far. </th>
          <th> Concentra </th>    
          <th> Cant. </th>
          <th> Costo <br>Unit </th>
          <th> Precio <br>Unit. </th>
          <th> Total </th>
          <th> Modif </th>
      </tr>  
     <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
      <c:if test="${listafar.id_pedido==listado.id_pedido}">    
       <tr style="font-size:9pt">
      
        <form name=formaMoRe<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>     
          <td style="font-size: 7pt" align="center"><c:out value="${contador.count}"/></td>
         
              <td style="font-size: 7pt"><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy'/><font color="blue"><br><fmt:formatDate value="${listado.fecha}" pattern='HH:mm:ss'/></font></td>  
          
          <c:if test="${listado.id_historia==0}">
                <td style="font-size: 7pt"><c:out value="${listado.medicamento}"/></td>           
          </c:if>         
          <c:if test="${listado.id_historia>0}">
                <td style="font-size: 7pt"><c:out value="${listado.medicamento}"/><font color="red" style="font-size:7pt">_Fact Nº=</font><font><c:out value="${listado.id_historia}"/></font></td>      
          </c:if>         
          
          <td style="font-size: 7pt"><c:out value="${listado.forma_far}"/></td>      
          <td style="font-size: 7pt"><c:out value="${listado.concentra}"/></td>      
          <td style="font-size: 7pt" align="center"><fmt:formatNumber value="${listado.salida}" maxFractionDigits="0"/></td>
          <td style="font-size: 8pt" align="center"><fmt:formatNumber value="${listado.costo_unit}" maxFractionDigits="2"/></td>
          <td style="font-size: 8pt" align="center"><fmt:formatNumber value="${listado.precio_venta}" maxFractionDigits="2"/></td>
          <th style="font-size: 11pt"><fmt:formatNumber value="${listado.precio_total}" maxFractionDigits="1"/></th>
          <!--hasta 22-04-2014 se pudia modificar los medicamentos pero solo se aumeta en recetas y no asi en kardex, que es mejor que se haga con respaldo de farmacia mas -->
          
          <td align="center" style="font-size: 7pt">     
                <div ><b><a href="javascript:document.formaMoRe<c:out value="${contador.count}"/>.submit();"> Modificar</a></b></div>
                 <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name="id_pedido"       value='<c:out value="${listado.id_pedido}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
                 <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
                 <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'> 
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                     <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                     <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
                 </c:if>     
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                     <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
                 </c:if>     
                 <input type="hidden" name="swinter"         value='swinter'>
                 <input type="hidden" name="sweco"           value='sweco'>
             </td>
        </form>
      </c:if> 
     </c:forEach>
    </c:forEach>  
   </table>
   
     <c:if test="${addfar=='nada'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/PlanAccionPaciente.do"/>' > 
         <center>
           <input type="submit" name='accionf' class="btn btn-info" value='Adicionar'>
         </center>
             <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
             <input type="hidden" name="id_pedido"       value='<c:out value="${listado.id_pedido}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
             <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'> 
             <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
             <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >
             <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
             <input type="hidden" name="fecha"           value='<c:out value="${fecha}"/>' >
             <c:if test="${expedido=='S'}">
                 <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
             </c:if>     
             <c:if test="${expedido=='P'}">
                 <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
             </c:if>     
             <c:if test="${expedido=='E' or expedido == 'A'}">
                 <input type="hidden" name="accion"          value='Recetar' >
                 <input type="hidden" name='accioncobro'     value='<c:out value="${accioncobro}"/>'>
             </c:if>     
             <input type="hidden" name="swinter"         value='swinter'>
             <input type="hidden" name="sweco"           value='sweco'>
       </form>
    </c:if>
  </td>
  
   <td width="50%" valign="top"> 
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
      <tr>
        <th colspan="6"><font size=2>OTRAS ACCIONES GENERALES </font></th>
      </tr>
       <tr>
          <th> No </th>    
          <th colspan="3"> Detalle </th>    
          <th colspan="2"> Total </th>
       </tr> 
       
    <c:forEach var="lpedidod" items="${listaCobrosOtros}" varStatus="contador1">
         <tr>
          <td><c:out value="${contador1.count}"/></td> 
          <td colspan="2" align="center" style="color:green"><b><c:out value="${lpedidod.nombre}"/></b></td>
          <td align="right"><b><c:out value="${lpedidod.total}"/></b></td> 
          </tr>
          
          <tr>
          <th> No </th>
          <th> Fecha </th>
          <th> Detalle </th>
          <th> Costo </th>
          <th> Total </th>
          <th> Modif </th>
      </tr>  
     <c:forEach var="listadet" items="${listarCostosT}" varStatus="contador">
      <c:if test="${lpedidod.id_pedido==listadet.id_pedido and lpedidod.id_rubro==listadet.id_rubro}">    
       <!-- ********** Esto es para el efecto ************ -->
        <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#D9D9FF" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
       <!-- ********** Fin  efecto ************ -->
        <form name=formaMoC<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>     
          <td style="font-size: 8pt" align="center"><c:out value="${contador.count}"/></td>
          <td style="font-size: 8pt"><fmt:formatDate value="${listadet.fecha}" pattern='dd/MM/yyyy'/><br><font color="blue"><fmt:formatDate value="${listadet.fecha}" pattern='HH:mm:ss'/></font></td>  
          <c:if test="${listadet.id_empresa>'0'}">
              <td style="font-size: 8pt"><c:out value="${listadet.costo}"/>__<c:out value="${listadet.indicacion}"/><font color="red" style="font-size:7pt">_Fact Nº=</font><font><c:out value="${listadet.id_empresa}"/></font></td>      
          </c:if>
          <c:if test="${listadet.id_empresa=='0'}">
              <td style="font-size: 8pt"><c:out value="${listadet.costo}"/>__<c:out value="${listadet.indicacion}"/></td>      
          </c:if>
          
          <td style="font-size: 8pt" align="right"><c:out value="${listadet.costo_unit}"/></td>
          <td style="font-size: 8pt" align="right"><c:out value="${listadet.entrada}"/></td>
          <td align="center" style="font-size: 8pt">     
                <div ><b><a href="javascript:document.formaMoC<c:out value="${contador.count}"/>.submit();"> Modificar</a></b></div>
                <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
                <input type="hidden" name=accion        value='Adicionar'>
                <input type="hidden" name='id_reservacion' value='<c:out value="${id_historial}"/>'>
                <input type="hidden" name="id_paciente"    value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name="id_pedido"      value='<c:out value="${listadet.id_pedido}"/>'>
                <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
                <input type="hidden" name="id_persona"     value='<c:out value="${id_persona}"/>'>
                <input type="hidden" name="id_rubro"       value='<c:out value="${listadet.id_rubro}"/>'>
                <input type="hidden" name='id_seguro'      value='<c:out value="${id_seguro}"/>'> 
                <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>'>
                <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
                <input type="hidden" name="id_paciente"    value='<c:out value="${id_paciente}"/>'>
                <input type="hidden" name="fecha"          value='<c:out value="${fecha}"/>'>
                <input type="hidden" name="accioncobros"   value='Cobros'>
                <input type="hidden" name="sweco"          value='sweco'>
             </td>
        </form>
      </c:if> 
     </c:forEach>
     
     </c:forEach>
      
  </table> 
    <c:if test="${add=='nada'}"> 
        <form name="adicionar" method="POST" action='<c:url value="/ListaCobrarPaciente.do"/>' > 
         <center>
           <input type="submit" name='accionf' class="btn btn-info" value='Adicionar'>
         </center>
            <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
            <input type="hidden" name=accion        value='Adicionar'>
            <input type="hidden" name='id_reservacion' value='<c:out value="${id_historial}"/>'>
            <input type="hidden" name="id_paciente"    value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name="id_pedido"      value='<c:out value="${listadet.id_pedido}"/>'>
            <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
            <input type="hidden" name="id_rubro"       value='<c:out value="${listadet.id_rubro}"/>'>
            <input type="hidden" name='id_seguro'      value='<c:out value="${id_seguro}"/>'> 
            <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>'>
            <input type="hidden" name="expedido"       value='<c:out value="${expedido}"/>'>
            <input type="hidden" name="id_persona"     value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name="fecha"          value='<c:out value="${fecha}"/>'>
            <input type="hidden" name="accioncobros"   value='Cobros'>
            <input type="hidden" name="sweco"          value='sweco'>
       </form>
    </c:if>
  </td>
  </tr>
</table>   
