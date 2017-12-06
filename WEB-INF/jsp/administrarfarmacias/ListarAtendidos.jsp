<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" /> 

<script language='JavaScript' SRC="./validar.js"></script>

<table>
 <tr>
   <td>   
   
   <c:if test="${cod_esta != '200010'}">
    <table>
      <tr>
      <form name=forma method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-info" href="javascript:document.forma.submit();" >Nuevo Receta Venta</a>
           <input type="hidden" name='sw' value='VENTA' >
           <input type=hidden name='accion' value='adicionar'>
        </div></td>
       </form>
      </tr>
    </table>
    
    </td>
    <c:if test="${tipo_medico=='3' or tipo_medico=='13' or tipo_medico=='14' or tipo_medico=='15' or tipo_medico=='19' or tipo_medico=='23'}">      
    <td> 
    <table>
      <tr>
      <form name=formav method=post action='<c:url value="/ReporteEntregados.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-info" href="javascript:document.formav.submit();" >Reporte Ventas</a>
           <input type="hidden" name='sw' value='VENTA' >
           <input type=hidden name='accion' value='adicionar'>
        </div></td>
        </form>
      </tr>
    </table>
    </td>
    </c:if>
  
   <c:if test="${seguro_estab != '1' }"> 
  <td>   
    <table>
      <tr>
      <form name=formaxx method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-warning" href="javascript:document.formaxx.submit();" >Nuevo Receta Ley475(exSumi)</a>
           <input type="hidden" name='sw' value='SUMI' >       
           <input type=hidden name='accion' value='adicionar'>
        </div></td>
        </form>
      </tr>
    </table>
  </td> 
   </c:if>
   </c:if>
 
   <c:if test="${seguro_estab != '1' }"> 
   <td><table>
      <tr>
      <form name=formaxy method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-success" href="javascript:document.formaxy.submit();" >Nuevo Receta Programas</a>
           <input type="hidden" name='sw'   value='SSPAM' >       
           <input type=hidden name='accion' value='adicionar'>
        </div></td>
        </form>
      </tr>
    </table>
   </td> 
  
  
   <td>
    <table>
      <tr>
      <form name=formaxyb method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-primary" href="javascript:document.formaxyb.submit();" >Descargar Botiquin de Servicio</a>
           <input type="hidden" name='sw' value='Botiquin' >       
           <input type=hidden name='accion' value='adicionar'>
        </div></td>
        </form>
      </tr>
    </table>
    </td>
    </c:if>
 
   <form name=formatot method=post action='<c:url value="/ListarAtendidos.do"/>'>
   <td><table>
      <tr>
        <td colspan="1" class="form-control">
                <SELECT NAME="sig_centro"  >
                <c:forEach var="listacentro" items="${listarCentros}">
                   <option value="<c:out value="${listacentro.cod_esta}"/>" <c:if test="${listacentro.cod_esta == localidad}">selected</c:if>>
                     <c:out value="${fn:substring(listacentro.consultorio,0,25)}"/>__<c:out value="${listacentro.descripcion}"/>
                   </option>
                </c:forEach>
               </SELECT>
             <input type="hidden" name='sw' value='Gral'>       
             <input type=hidden name='accion' value='Buscar'>
        </td>
        
      </tr>
    </table>
    </td> 
    <td><table>
      <tr>
        <td colspan="1"><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>" size="25" maxlength="30" onblur='validar=(nombres,"A ")'/></td>
        <td><input class="btn btn-success" type="submit" name='accion' value="Buscar"></td>
      </tr>
    </table>
    </td> 
    </form>
</tr> 
</table>


<c:if test="${listaporcancel == '1'}">  
     <br>
    <table>
      <tr>
      <form name=formapp method=post action='<c:url value="/ListarAtendidos.do"/>'>
        <td align="center" style="font-size:15pt">Pacientes que no fueron a Cobranza&nbsp;&nbsp;</td>
        <td>
          <div><a class="btn btn-info btn-xs" href="javascript:document.formapp.submit();" >Mostrar Recetas por Pagar</a>
           <input type=hidden name='accione' value='mostrarPagos'>
         </div></td>
       </form>
      </tr>
    </table>
    <br>

   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> NIT </th>    
    <th bgcolor="#F2F2F2"> MONTO </th>    
    <th bgcolor="#F2F2F2"> ESTADO </th>
    <th bgcolor="#F2F2F2"> DISP </th>
    <c:if test="${seguro_estab != '1' }"> 
        <th bgcolor="#F2F2F2"> IMPRIMIR </th>
    </c:if> 
    
    <c:if test="${factur!='2'}">
         <th bgcolor="#F2F2F2"> COBRAR </th>
     </c:if> 
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
 <c:if test="${mostrarpagos == '1'}">     
 <c:if test="${(tipo_medico!='3' and tipo_medico!='13' and tipo_medico!='14' and tipo_medico!='15' and tipo_medico!='19' and tipo_medico!='23') }">      
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <tr style="font-size:9pt">
       <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteEntregados.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >
                 <input type="hidden" name="id_por"    value=<c:out value="${lista.id_dispensa}"/> >
                 <input type="hidden" name="accion"    value='Eliminar' >
                 <input type="hidden" name="sw1"       value='1' >
              </td>
           </form>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td>      
       <td><center><c:out value="${lista.id_estado}"/></center></td>
       <td><c:out value="${lista.id_dispensa}"/></td>
      <c:if test="${seguro_estab != '1' }"> 
        <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();">Orden</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
	 <input type="hidden" name="accion" value='Imprimir'>
	 <input type="hidden" name="sw" value='VENTA'>
       </td>
     </form>
     </c:if>  
     
     <c:if test="${factur!='2'}">
         <form name=formaMRCo<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarFarmacia.do"/>'>
           <td>     
             <div class="agregar"><a class="btn btn-success btn-xs" href="javascript:document.formaMRCo<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
             <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >         
             <input type="hidden" name="id_persona"    value='<c:out value="${id_persona}"/>' >      
             <input type="hidden" name='precio_total'  value='<c:out value="${lista.precio_total}"/>'> 
             <input type="hidden" name="accion"        value='TerminarCobro' >
             <input type="hidden" name="num_recibo"   value='0'>
             <input type="hidden" name="sw" value='VENTA' >
           </td>
         </form>
     </c:if> 
     
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Ver Pedido</a></div>
  	 <input type="hidden" name="id_pedido"  value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
	 <input type="hidden" name="accion"     value='entregar' >
	 <input type="hidden" name="sw"         value='VENTA' >
       </td>
     </form>
     
     </c:forEach>
   
   <c:forEach var="lista" items="${listapago1}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td>      
       <td><c:out value="${lista.id_estado}"/></td>
      <td><c:out value="${lista.id_dispensa}"/></td>
     <form name=formaMRx<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaMRx<c:out value="${contador.count}"/>.submit();">Ver Pedido</a></div>
  	 <input type="hidden" name="id_pedido"   value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_persona"  value='<c:out value="${id_persona}"/>' >         
	 <input type="hidden" name="accion"      value='entregar' >
	 <input type="hidden" name="sw"          value='VENTA' >
       </td>
     </form>
    </tr> 
   </c:forEach>
  </c:if> 
  </c:if> 
  
   <c:if test="${(tipo_medico=='3' or tipo_medico=='13' or tipo_medico=='14' or tipo_medico=='15' or tipo_medico=='19' or tipo_medico=='23') }">      
   <c:forEach var="lista" items="${listapago}" varStatus="contador">
     <c:if test="${(usuario==lista.id_dispensa) }">        
     <tr style="font-size:9pt">
       <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteEntregados.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >
                 <input type="hidden" name="accion" value='Eliminar' >
                 <input type="hidden" name="sw1" value='1' >
              </td>
           </form>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/>_<c:out value="${lista.cod_esta}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td>      
       <td><center><c:out value="${lista.id_estado}"/></center></td>
       <td><c:out value="${lista.id_dispensa}"/></td>
     <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();">Orden</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
	 <input type="hidden" name="accion" value='Imprimir'>
	 <input type="hidden" name="sw" value='VENTA'>
       </td>
     </form>
     <form name=formaMRCo<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarFarmacia.do"/>'>
       <td>     
         <div class="agregar"><a class="btn btn-success btn-xs" href="javascript:document.formaMRCo<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	 <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_persona"    value='<c:out value="${id_persona}"/>' >      
         <input type="hidden" name='precio_total'  value='<c:out value="${lista.precio_total}"/>'> 
         <input type="hidden" name="accion"        value='TerminarCobro' >
         <input type="hidden" name="num_recibo"   value='0'>
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Ver Pedido</a></div>
  	 <input type="hidden" name="id_pedido" value=<c:out value="${lista.id_pedido}"/> >         
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
	 <input type="hidden" name="accion" value='entregar' >
	 <input type="hidden" name="sw" value='VENTA' >
       </td>
     </form>
     </c:if>
     </tr>
     </c:forEach> 
  </c:if> 
  
</table>
</c:if>



<c:if test="${listacancelados == '1' }">
<div class="form-control" style="font-size:14pt"> Pacientes a Entregar Medicamentos</div>
<br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> NIT </th>    
    <th bgcolor="#F2F2F2"> CANCELADO </th>
    <th bgcolor="#F2F2F2"> DISP </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/>_<c:out value="${lista.cod_esta}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td>
       <td><c:out value="${lista.id_dispensa}"/></td>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_pedido" value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_persona" value='<c:out value="${id_persona}"/>' >         
	 <input type="hidden" name="accion" value='entregarmed' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

</c:if>


<c:if test="${seguro_estab != '1' }">   
<c:if test="${listafar == '1' }">
<div class="form-control" style="font-size:14pt"> Pacientes a Entregar Medicamentos (Enviado por el Medico)</div>
<br>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> NOMBRE COMPLETO </th>    
    <th bgcolor="#F2F2F2"> Edad </th>    
    <th bgcolor="#F2F2F2"> Seguro </th> 
    <th bgcolor="#F2F2F2"> CONSULTORIO </th> 
    <th bgcolor="#F2F2F2"> MEDICO </th> 
    <th bgcolor="#F2F2F2"> RECETA </th>
    <th bgcolor="#F2F2F2"> ENTREGAR </th>  
    </tr>  
  
     <c:forEach var="lista" items="${listarAtendidos}" varStatus="contador">
      <c:if test="${lista.fecha==now}">
      <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td style="font-size:14pt" >z</td>    
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td style="font-size:12pt">     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>
       <td  style="font-size:14pt"><c:out value="${lista.nombres}"/>_<c:out value="${lista.cod_esta}"/>
               <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="3"> RIESGO</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '2' }">
                   <font color="Red"  size="3"> MORA</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '3' }">
                   <font color="Red" size="3"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '4' }">
                   <font color="Red" size="3"> Sin DOC</font>
               </c:if>
       </td> 
       <td align="center"><c:out value="${lista.edad}"/></td>
       <td  style="font-size:19pt"><c:out value="${lista.expedido}"/></td>    
       <td  style="font-size:14pt"><c:out value="${lista.nombre}"/>_<font color="red"><c:out value="${lista.id_por}"/></font></td>     
    <form name=formaPre<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaPre<c:out value="${contador.count}"/>.submit();">Previa</a></div>
  	 <input type="hidden" name="id_historial" value='<c:out value="${lista.id_historial}"/>' >
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>' >
         <input type="hidden" name="id_paciente"  value='<c:out value="${lista.id_paciente}"/>' > 
         <input type="hidden" name="id_persona"   value='<c:out value="${lista.id_persona}"/>' > 
         <input type="hidden" name="id_farmacia2" value='<c:out value="${lista.id_farmacia}"/>' > 
         <input type="hidden" name="nombres"      value='<c:out value="${lista.nombres}"/>' > 
         <input type="hidden" name="expedido"     value='<c:out value="${lista.expedido}"/>' >
         <input type="hidden" name="cod_esta"     value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="sig_centro"   value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="nombre"       value='<c:out value="${lista.nombre}"/>' >
	 <input type="hidden" name="accion"       value='previa'>
	 <input type="hidden" name="sw"           value='1' >
       </td>
     </form>     
    <form name=formaMa<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMa<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_historial" value='<c:out value="${lista.id_historial}"/>' >
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>' >
         <input type="hidden" name="id_farmacia2" value='<c:out value="${lista.id_farmacia}"/>' > 
         <input type="hidden" name="expedido"     value='<c:out value="${lista.expedido}"/>' >
         <input type="hidden" name="cod_esta"     value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="sig_centro"   value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="id_paciente" value='<c:out value="${lista.id_paciente}"/>' >         
	 <input type="hidden" name="accion" value='entregar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>   
    </c:if>
    </tr>
   </c:forEach>
   
   
     <c:forEach var="lista" items="${listarAtendidos}" varStatus="contador">
      <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="blue"><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm:ss'/></b></font></td> 
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>
       <td style="color:blue"><c:out value="${lista.nombres}"/>_<c:out value="${lista.cod_esta}"/>
               <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="3"> RIESGO</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '2' }">
                   <font color="Red"  size="3"> MORA</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '3' }">
                   <font color="Red" size="3"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '4' }">
                   <font color="Red" size="3"> Sin DOC</font>
               </c:if>
       </td>
       <td align="center"><c:out value="${lista.edad}"/></td>
       <c:if test="${lista.expedido == 'E' }">
            <td style="color:blue">Externo</td>
       </c:if>
       <c:if test="${lista.expedido == 'S' }">
           <td style="color:red">Ley 475</td>
       </c:if> 
       <c:if test="${lista.expedido == 'P' }">
           <td align="center"><c:out value="${lista.cadena2}"/></td>
       </c:if>       
       <td><c:out value="${lista.accion}"/></td>
       <td><c:out value="${lista.nombre}"/>_<font color="red"><c:out value="${lista.id_por}"/></font></td>     
    <form name=formaPre<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaPre<c:out value="${contador.count}"/>.submit();">Previa</a></div>
  	 <input type="hidden" name="id_historial" value='<c:out value="${lista.id_historial}"/>' >
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>' >
         <input type="hidden" name="id_paciente"  value='<c:out value="${lista.id_paciente}"/>' > 
         <input type="hidden" name="id_farmacia2" value='<c:out value="${lista.id_farmacia}"/>' > 
         <input type="hidden" name="id_persona"   value='<c:out value="${lista.id_persona}"/>' > 
         <input type="hidden" name="expedido"     value='<c:out value="${lista.expedido}"/>' > 
         <input type="hidden" name="sig_centro"   value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="cod_esta"     value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="nombres"      value='<c:out value="${lista.nombres}"/>' > 
         <input type="hidden" name="nombre"       value='<c:out value="${lista.nombre}"/>' >
	 <input type="hidden" name="accion"       value='previa'>
	 <input type="hidden" name="sw"           value='1'>
       </td>
     </form>     
    <form name=formaMa<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMa<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_historial"  value='<c:out value="${lista.id_historial}"/>' >
         <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="id_farmacia2" value='<c:out value="${lista.id_farmacia}"/>' > 
         <input type="hidden" name="id_consultorio" value='<c:out value="${lista.id_consultorio}"/>' >
         <input type="hidden" name="sig_centro"   value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="cod_esta"      value='<c:out value="${lista.cod_esta}"/>' > 
         <input type="hidden" name="expedido"      value='<c:out value="${lista.expedido}"/>' >
	 <input type="hidden" name="accion" value='entregar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>
</c:if>



<c:if test="${listafari == '1' }">
<c:if test="${tipo_medico!='3' and tipo_medico!='13' and tipo_medico!='14' and tipo_medico!='15' and tipo_medico!='19' and tipo_medico!='23'}">      
<div class="form-control" style="font-size:14pt"> Pacientess que estan Internados</div>
<br>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>    
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Seguro </th> 
    <th bgcolor="#F2F2F2"> CONSULTORIO </th> 
    <th bgcolor="#F2F2F2"> MEDICO </th> 
    <th bgcolor="#F2F2F2"> RECETA </th>
    <th bgcolor="#F2F2F2"> ENTREGAR </th>  
    </tr>  
   <c:forEach var="listaI" items="${listarAtendidosI}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center" ><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listaI.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="blue"><b><fmt:formatDate value="${listaI.fecha}" pattern='HH:mm:ss'/></b></font></td> 
       <form name=formaHin<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaHin<c:out value="${contador.count}"/>.submit();"><c:out value="${listaI.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listaI.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listaI.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>
       <td style="color:blue"><c:out value="${listaI.nombres}"/>_<c:out value="${listaI.cod_esta}"/>
              <c:if test="${listaI.id_riesgo == '1' }">
                   <font color="Red"  size="3"> RIESGO</font>
               </c:if>
               <c:if test="${listaI.id_riesgo == '2' }">
                   <font color="Red"  size="3"> MORA</font>
               </c:if>
               <c:if test="${listaI.id_riesgo == '3' }">
                   <font color="Red" size="3"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${listaI.id_riesgo == '4' }">
                   <font color="Red" size="3"> Sin DOC</font>
               </c:if>
       </td>
       <td align="center"><c:out value="${listaI.edad}"/></td>
       <c:if test="${listaI.expedido == 'E' or listaI.expedido == 'A' }">
            <td style="color:blue" align="center">Externo</td>
       </c:if>
       <c:if test="${listaI.expedido == 'S' }">
           <td style="color:red" align="center">Ley 475</td>
       </c:if> 
       <c:if test="${listaI.expedido == 'P' }">
          <td  align="center"><c:out value="${listaI.cadena2}"/></td>
       </c:if>
       <td><c:out value="${listaI.accion}"/></td>
       <td><c:out value="${listaI.nombre}"/>_<font color="red"><c:out value="${listaI.id_por}"/></font></td>     
    <form name=formaPrei<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaPrei<c:out value="${contador.count}"/>.submit();">Previa</a></div>
  	 <input type="hidden" name="id_historial"   value='<c:out value="${listaI.id_historial}"/>' >
         <input type="hidden" name="id_historia"    value='<c:out value="${listaI.id_historia}"/>' >
         <input type="hidden" name="id_paciente"    value='<c:out value="${listaI.id_paciente}"/>' > 
         <input type="hidden" name="id_farmacia2"   value='<c:out value="${listaI.id_farmacia}"/>' > 
         <input type="hidden" name="id_consultorio" value='<c:out value="${listaI.id_consultorio}"/>' >
         <input type="hidden" name="nombres"        value='<c:out value="${listaI.nombres}"/> '> 
         <input type="hidden" name="expedido"       value='<c:out value="${listaI.expedido}"/>' > 
         <input type="hidden" name="cod_esta"       value='<c:out value="${listaI.cod_esta}"/>' > 
         <input type="hidden" name="sig_centro"     value='<c:out value="${listaI.cod_esta}"/>' > 
         <input type="hidden" name="id_persona"     value='<c:out value="${listaI.id_persona}"/>' >
         <input type="hidden" name="nombre"         value='<c:out value="${listaI.nombre}"/>' >
	 <input type="hidden" name="accion"         value='previaint'>
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>     
    <form name=formaMai<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAtendidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMai<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_historial"   value='<c:out value="${listaI.id_historial}"/>' >
         <input type="hidden" name="id_historia"    value='<c:out value="${listaI.id_historia}"/>' >
         <input type="hidden" name="expedido"       value='<c:out value="${listaI.expedido}"/>' > 
         <input type="hidden" name="cod_esta"       value='<c:out value="${listaI.cod_esta}"/>' > 
         <input type="hidden" name="sig_centro"     value='<c:out value="${listaI.cod_esta}"/>' > 
         <input type="hidden" name="id_farmacia2"   value='<c:out value="${listaI.id_farmacia}"/>' > 
         <input type="hidden" name="id_consultorio" value='<c:out value="${listaI.id_consultorio}"/>' >
         <input type="hidden" name="id_paciente"    value='<c:out value="${listaI.id_paciente}"/>' >
         <input type="hidden" name="id_persona"     value='<c:out value="${listaI.id_persona}"/>' >
	 <input type="hidden" name="accion"         value='entregarint'>
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>
</c:if> 
</c:if> 
    
</c:if> 