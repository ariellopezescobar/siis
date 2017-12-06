<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>
             
<c:if test="${accioncobros == 'Cobros'and sw!='3' and sweco!='sweco'}"> 
<form name=formaRegO method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
         <div><a class="btn btn-success" href="javascript:document.formaRegO.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
 </c:if>  
 <c:if test="${(accioncobros == 'Cobros' and sw=='3')}">
 <form name=formaReg method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>
         <div ><a class="btn btn-success" href="javascript:document.formaReg.submit();">Finalizar</a></div>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='cantidad'        value='<c:out value="${sotck}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
          <input type="hidden" name='fec'             value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>'>
          <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='precio'          value='<c:out value="${datos.precio_total}"/>'>
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >          
          <input type="hidden" name="accion"          value='terminar' >
 </form>
 </c:if>  
 <c:if test="${(accioncobros == 'Cobros' and sw!='3' and sweco=='sweco')}"> 
 <form name=formaEco method=post action='<c:url value="/ReporteResumen.do"/>'>
      <div><a class="btn btn-success" href="javascript:document.formaEco.submit();">Volver Economico</a></div>
      <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
      <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
      <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
      <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
      <input type="hidden" name="accion"          value='Economico' >
 </form>
 </c:if>  
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
      <th colspan="3"><center>COBROS DEL PACIENTE CON HISTORIA CLINICA (<c:if test="${sw == '1'}"><c:out value = "CONTADO"/>)</c:if><c:if test="${sw == '2'}"><c:out value = "CREDITO"/>)</c:if></center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
          <tr>    
            <td align="right" bgcolor="#F2F2F2">Nombres Completo</td>    
            <td><c:out value = "${nombres}"/></td>
          </tr> 
          <tr>    
            <td align="right" bgcolor="#F2F2F2">NIT / CLIENTE</td>    	      
            <td><c:out value = "${nit}"/></td>
          </tr> 
          <tr>    
            <td align="right" bgcolor="#F2F2F2">Monto a Cancelar</td>    	      
            <td style="font-size:12pt"><c:out value = "${datos.precio_total}"/></td>
          </tr>
         <c:if test="${tipo_medico != '2' and sweco!=sweco}">
          <tr>
            <td align="right" bgcolor="#F2F2F2">Enviar a Consultorio <font color='red'>(*)</font> </td>	      
           <td><form name="adicionar" method="POST" action='<c:url value="/PlanAccionPaciente.do"/>' >
             <input type="submit" name='accion' class="aceptar" value='InterConsulta' onclick="document.adicionar.action='<c:url value="/ConfirmarPaciente.do"/>'">
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
             <c:if test="${accioncobros == 'Cobros'}"> 
                <input type="hidden" name='id_rubro'     value='<c:out value="${id_rubro}"/>'>
             </c:if>
          </form> 
       </c:if>
        
        </td>
       </tr> 
      </table>
      <c:if test="${sw == '2' and not(accioncobros == 'Cobros')}">     
   <table class="tabla">   
      <tr><center> <form name=formaEc<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>
             <td><input type="text" name="cantidad" value="0" size=3 maxlength=6 onblur='validarNota(cantidad,1,<c:out value="${cantidad}"/>)'/></td>
       <td>     
         <div class="volver"><a href="javascript:document.formaEc<c:out value="${contador.count}"/>.submit();">PAGAR-DEUDA</a></div>
  	 <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='id_rubro'     value='<c:out value="${id_rubro}"/>'>
	 <input type="hidden" name="accion"          value='cancelar' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form></center></tr>
 </table> </c:if>            
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
        <th bgcolor="#F2F2F2"> No </th>
        <th bgcolor="#F2F2F2"> Rubro </th>
        <th bgcolor="#F2F2F2"> Laboratorio </th>
        <th bgcolor="#F2F2F2"> Indicacion </th>
        <th bgcolor="#F2F2F2"> Precio </th>
        <th bgcolor="#F2F2F2"> Eliminar </th>
     </tr> 
      <c:forEach var="estado" items="${listarcobros}" varStatus="contador">
         <tr style="font-size:9pt" >
           <td><c:out value="${contador.count}"/></td>
           <td style="font-size:6pt; color:blue"><c:out value="${estado.rubro}"/></td>  
           <td><c:out value="${estado.costo}"/></td>
           <td><c:out value="${estado.indicacion}"/></td>  
           <td><c:out value="${estado.entrada}"/></td>   
           <c:if test="${estado.id_rubro != id_rubro}">    
               <td style="size:12pt; color:red">Otro Pago</td>   
           </c:if>      
           <c:if test="${estado.id_rubro == id_rubro}">  
          <c:if test="${estado.id_empresa==0}"> 
         <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
             <input type="hidden" name="accion"       value='eliminar' >
             <input type="hidden" name="nombres"         value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="id_detalle"      value='<c:out value="${estado.id_detalle}"/>' > 
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
             <input type="hidden" name="id_costo"        value='<c:out value="${estado.id_costo}"/>' >  
             <input type="hidden" name="salida"          value='<c:out value="${estado.costo}"/>' > 
             <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name="expedido"        value=<c:out value="${estado.costo_unit}"/> > 
             <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
             <input type="hidden" name='id_factura'      value='<c:out value="${estado.id_empresa}"/>'>
             <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
             <input type="hidden" name='cantidad'        value='<c:out value="${cantidad}"/>'>
             <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
             <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
             <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
             <input type="hidden" name="sweco"           value='<c:out value="${sweco}"/>' >
             <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
           </td>
         </form></c:if>
             
           </c:if>    
        </tr>
       </c:forEach>
 </table>       
 </td>
 
 <td width="50%" valign="top">
     <form name=formal action="<c:url value="/ListaCobrarPaciente.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
           <tr>
               <td align="right" bgcolor="#F2F2F2">Rubro de Cobro: </td>	      
                <td> <SELECT NAME="id_rubro" onchange="javascript:document.formal.submit();">
                  <option value="0">-- seleccione --
                  <c:forEach var="estado" items="${listarRubros}">
                     <c:if test="${estado.id_rubro!=0 and estado.id_rubro!=1}">  
                        <OPTION value="<c:out value="${estado.id_rubro}"/>" <c:if test="${estado.id_rubro == id_rubro}">selected</c:if>> 
                            <c:out value="${estado.rubro}"/>
                        </option>
                     </c:if>
                  </c:forEach>
             </SELECT> </td> 
           </tr>    
           <tr>
             <c:if test="${id_rubro == '6'}">     
                <td align="right" bgcolor="#F2F2F2">Laboratorios: </td>	      
                <td> <SELECT NAME="id_laboratorio" onchange="javascript:document.formal.submit();">
                  <option value="0">-- seleccione --
                  <c:forEach var="listalab" items="${listarLabo1}">
                     <OPTION value="<c:out value="${listalab.id_laboratorio}"/>" <c:if test="${listalab.id_laboratorio == id_laboratorio}">selected</c:if>> 
                         <c:out value="${listalab.laboratorio}"/>
                     </option>
                  </c:forEach>
                  </SELECT> </td> 
              </c:if> 
             </tr>  
             <tr>
               <td colspan="2" class="form-inline"> <div class="form-inline"><input class="form-control" type="text" name="nombrecos" value="<c:out value = "${labora}"/>"  maxlength=10 placeholder="Buscar por Nombre Labora..."/></div>
               <input class="btn btn-primary" type="submit" name='accion1' value='Buscar'></td>
             </tr>
         </table>
          <input type="hidden" name="accion"          value='Continua'>
          <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
          <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
          <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
          <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name="sweco"           value='<c:out value="${sweco}"/>' >
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
     </form>   
 
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
        <th bgcolor="#F2F2F2"> No </th>
        <th bgcolor="#F2F2F2"> No </th>
        <th bgcolor="#F2F2F2"> Detalle </th>
        <th bgcolor="#F2F2F2"> Precio </th>
        <th bgcolor="#F2F2F2"> Indicacion </th>
        <th bgcolor="#F2F2F2"> Cobrar </th>
    </tr>  
   <c:forEach var="estadoc" items="${listarCostos}" varStatus="contador">
     <tr style="font-size:9pt" >
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${estadoc.id_laboratorio}"/>-<c:out value="${estadoc.id_costo}"/></td>
       <td><c:out value="${estadoc.costo}"/></td>
      <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaCobrarPaciente.do"/>'>  
           <td><input type="text" name="cantidad" value="<fmt:formatNumber value="${estadoc.costo_unit}" groupingUsed="false" maxFractionDigits="0"/>" size=5 maxlength=5 onblur='validar(cantidad,"9")'/></td>          
           <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td>  
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	  <input type="hidden" name="accion"          value='adicion' >
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_laboratorio'  value='<c:out value="${estadoc.id_laboratorio}"/>'>
          <input type="hidden" name='id_costo'        value='<c:out value="${estadoc.id_costo}"/>'>
          <input type="hidden" name='nombres'         value='<c:out value="${nombres}"/>'>
          <input type="hidden" name='accioncobros'    value='<c:out value="${accioncobros}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='num_cladoc'      value='<c:out value="${datos.num_cladoc}"/>'>
          <input type="hidden" name='cantidad'        value='<c:out value="${cantidad}"/>'>
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
          <input type="hidden" name='fecha'           value='<c:out value="${fecha}"/>'> 
          <input type="hidden" name='nit'             value='<c:out value="${nit}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_rubro'        value='<c:out value="${id_rubro}"/>'>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name="sweco"          value='<c:out value="${sweco}"/>' >
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >  
       </td>
     </form>
     </tr>
   </c:forEach>
</table>
    </td>
  </tr>
</table>