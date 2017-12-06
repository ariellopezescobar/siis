<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <c:if test="${datos.id_tipo_far=='1'}">
                 <th colspan="6"><center><font color="red">RECEPCIION</font>[Nº.<c:out value = "${datos.id_factura}"/>] DE MEDICAMENTOS</center></th>
    </c:if>
    <c:if test="${datos.id_tipo_far=='2'}">
                 <th colspan="6"><center><font color="red">AJUSTE POSITIVO</font>[Nº.<c:out value = "${datos.id_factura}"/>]DE MEDICAMENTOS</center></th>
    </c:if>
    <c:if test="${datos.id_tipo_far=='3'}">
                 <th colspan="6"><center><font color="red">AJUSTE NEGATIVO</font>[Nº.<c:out value = "${datos.id_factura}"/>] DE MEDICAMENTOS</center></th>
    </c:if>
    <c:if test="${datos.id_tipo_far=='4'}">
                 <th colspan="6"><center><font color="red">TRASPASOS </font>[Nº.<c:out value = "${datos.id_factura}"/>] A FARMACIAS</center></th>
    </c:if>
    <c:if test="${datos.id_tipo_far=='6'}">
                 <th colspan="6"><center><font color="red">CAJA CHICA </font>[Nº.<c:out value = "${datos.id_factura}"/>] A FARMACIAS</center></th>
    </c:if>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>    
        <td bgcolor="#F2F2F2" align="right">Nombre Proveedor</td>    
        <td><c:out value = "${datos.nombres}"/></td>
        <td bgcolor="#F2F2F2" align="right">Fecha Dato</td>    
        <td><fmt:formatDate value="${datos.fec_registro}" pattern="dd-MM-yyyy"/></td>
      </tr> 
      <tr>    
        <td bgcolor="#F2F2F2" align="right">Numero Documento(NIT)</td>     
        <td><c:out value = "${datos.nit}"/></td>
        <td bgcolor="#F2F2F2"  align="right">Nº Orden de Compra</td>       
        <td><c:out value = "${datos.num_cladoc}"/></td>
      </tr>  
      <tr>    
        <td bgcolor="#F2F2F2" align="right">Finaciamiento</td>       
        <td><c:if test="${datos.tipo=='P'}">
            <c:forEach var="prog" items="${listarProg}">
                       <c:if test="${prog.id_programa==id_programa}">  
                              Prog.<font color="blue"><c:out value="${prog.concentra}"/></font>
                       </c:if>
            </c:forEach>
            </c:if>
            <c:if test="${datos.tipo=='S'}">
                 <font color="blue">SUMI</font>
            </c:if>
            <c:if test="${datos.tipo=='V'}">
                 <font color="blue">Ventas</font> 
            </c:if></td>
        <td bgcolor="#F2F2F2" align="right">Monto a Total</td>          
        <td><c:out value = "${datos.precio_total}"/></td>
      </tr>  
   </table>
   
  
   <form name=formaRet method=post action='<c:url value="/ListarAtendidos.do"/>'>
         <div class="volver"><a class="btn btn-success" href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
   </form>

  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> COD </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Tipo </th>
    <th bgcolor="#F2F2F2"> Cant </th>
    <th bgcolor="#F2F2F2"> Ajuste</th>
    <th bgcolor="#F2F2F2"> Costo </th>
    <th bgcolor="#F2F2F2"> Total </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
   </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><font color="blue" size="4"><c:out value="${listado.id_farmacia}"/></font></td>
       <td><b><c:out value="${listado.codsumi}"/></b></td> 
       <td><c:out value="${listado.medicamento}"/></td>
       <td><c:out value="${listado.forma_far}"/></td>   
       <td><c:out value="${listado.concentra}"/></td>   
       <c:if test="${listado.expedido=='P'}">
          <c:forEach var="prog" items="${listarProg}">
             <c:if test="${listado.id_programa==prog.id_programa}">
                <td align="center" style="font-size: 8pt; color:green;"><c:out value="${prog.concentra}"/></td>   
                </option>
             </c:if>   
          </c:forEach>         
       </c:if>
       <c:if test="${listado.expedido!='P'}">
            <td align="center" style="font-size: 11pt"><c:out value="${listado.expedido}"/></td>   
       </c:if>
       <c:if test="${listado.entrada>'0'}">
            <td style="color:blue"><b><c:out value="${listado.entrada}"/></b></td>  
       </c:if>
       <c:if test="${listado.salida>'0'}">
            <td style="color:red"><b><c:out value="${listado.salida}"/></b></td>  
       </c:if>       
     <c:if test="${listado.ajuste>'0'}">
            <td style="color:greem"><b><c:out value="${listado.ajuste}"/></b></td>  
       </c:if>
       <td><c:out value="${listado.ajuste}"/></td>             
       <td><c:out value="${listado.costo_unit}"/></td>                    
       <td><c:out value="${listado.precio_totalc}"/></td>                           
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecepcionMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name='id_medicamento'  value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name='entrada'         value='<c:out value="${listado.entrada}"/>' > 
        <input type="hidden" name='id_kardex'        value='<c:out value="${listado.id_factura}"/>' >
         <input type="hidden" name='ajuste'          value='<c:out value="${listado.ajuste}"/>' >                  
         <input type="hidden" name='expedido'        value='<c:out value="${listado.expedido}"/>' >                           
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_programa'     value='<c:out value="${id_programa}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_farmac'       value='<c:out value="${listado.id_farmacia}"/>'>
         <input type="hidden" name='id_farmacia'     value='<c:out value="${id_farmacia}"/>'>
         <input type="hidden" name='tipo'            value='<c:out value="${tipodato}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name='valor_1'         value='<c:out value="${valor_1}"/>' >
         <input type="hidden" name='accion'          value='eliminar' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>

</table>
    </td>
  <td width="50%" valign="top">
  <c:if test="${recepcion == 'no'}">
     <form name=forma action="<c:url value="/RecepcionMedicamento.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-condensed table-responsive"> 
          <tr>    
            <td align=right <tr style="font-size:9pt">>Nombre Meedicamento</td>    	
            <td ><input  type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombremed,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" value="Buscar"></td>
          </tr>  
         </table>
      <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='id_farmacia'     value='<c:out value="${id_farmacia}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
      <input type="hidden" name='id_programa'     value='<c:out value="${id_programa}"/>'>
      <input type="hidden" name='tipo'            value='<c:out value="${tipodato}"/>'>
      <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
      <input type="hidden" name="accion"          value='Buscar'>
     </form>     

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr  style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Codigo </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA </th>        
    <th bgcolor="#F2F2F2"> CONCENT </th>    
    <th bgcolor="#F2F2F2"> STOCK </th>
    <th bgcolor="#F2F2F2"> ACCION </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentos}" varStatus="contador">
     <tr  style="font-size:9pt">
       <td style="font-size:8pt"><font color="blue"><c:out value="${listado.id_medicamento}"/></font><br><c:out value="${listado.codsumi}"/></td>  
       <td><c:out value="${listado.medicamento}"/></td>  
       <td><c:out value="${listado.forma_far}"/></td>                 
       <td><c:out value="${listado.concentra}"/></td>      
       <td style="font-size:10pt"><c:out value="${listado.stock}"/></td>             
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/RecepcionMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Recepcion</a></div>
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_programa'     value='<c:out value="${id_programa}"/>'>
         <input type="hidden" name='id_farmacia'     value='<c:out value="${id_farmacia}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='tipo'            value='<c:out value="${tipodato}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="accion"          value='adicion' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
   </table>
  </c:if> 
     
     <c:if test="${recepcion == 'si'}">
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th colspan="2" bgcolor="#F2F2F2" ><center>DATOS DEL MEDICAMENTO</center></th>
    </tr>
   <tr style="font-size:9pt">
      <td bgcolor="#F2F2F2" align="right"> (codigo)::<br>Nombre:: </td>
      <td bgcolor="#F2F2F2" ><font size="2"><c:out value="${dato.id_medicamento}"/></font><br><c:out value="${dato.medicamento}"/></td>
    </tr>       
    <tr style="font-size:9pt">
        <td bgcolor="#F2F2F2" align="right"> Forma Farma::<br>Concentra::</td>
        <td bgcolor="#F2F2F2" ><c:out value="${dato.forma_far}"/><br><c:out value="${dato.concentra}"/></td>
    </tr> 
    <c:if test="${estab=='200010' }">
        <tr style="font-size:9pt">
          <td bgcolor="#F2F2F2" align="right"> Stock Total:: </td>
          <td bgcolor="#F2F2F2" ><font color="red" size="4"><c:out value="${dato.stock}"/></font></td>
        </tr> 
    </c:if>      
    <c:if test="${estab!='200010' }">  
    <tr style="font-size:9pt">
        <td bgcolor="#F2F2F2" align="right"> Costo Unit::<br>Precio Venta::</td>
        <td bgcolor="#F2F2F2" ><c:out value="${dato.costo_unit}"/><br><c:out value="${dato.precio_venta}"/></font></td>
    </tr>        
    <tr style="font-size:9pt">
      <td bgcolor="#F2F2F2" align="right"> Stock S::<br>Stock P::<br>Stock V::<br>Stock Total:: </td>
      <td bgcolor="#F2F2F2" ><font color="blue" size="4"><c:out value="${dato.stocks}"/></font><br><font color="green" size="2"><c:out value="${dato.stockp}"/></font><br><font size="2"><c:out value="${dato.stockv}"/></font><br><font color="red" size="2"><c:out value="${dato.stock}"/></font></td>
    </tr>        
    <tr style="font-size:9pt">
        <td bgcolor="#F2F2F2" align="right" >Fecha Vencim::<br>Nro. Lore::</td>    
        <td bgcolor="#F2F2F2" ><font size="2"><fmt:formatDate value="${dato.fecha_ven}" pattern='dd/MM/yyyy'/><br><c:out value="${dato.nro_lote}"/></td>	                 
      </tr>    
    </c:if>  
     <form name=forma action="<c:url value="/RecepcionMedicamento.do"/>" method="POST">        
          <tr>
               <th colspan="3"><center>INTRODUZCA LOS DATOS FARMACIA</center></th>
          </tr>
          <tr >    
             <td align="right">Cantidad</td>    
             <td><input type="text" name="cantidad" value="" size=8 maxlength=8 onblur='validar(cantidad,"9")'/></td>                      
          </tr>    
          <tr>    
             <td align="right">Costo Unitario</td>    
             <td><input type="text" name="costo_unit" value=<c:out value="${dato.costo_unit}"/> size=8 maxlength=8 onblur='validar(costo_unit,"9")'/></td>                      
          </tr>
          <c:if test="${datos.tipo=='V'}">
              <tr>    
                 <td align="right">Precio Venta</td>    
                 <td><input type="text" name="precio_venta" value=<c:out value="${dato.precio_venta}"/> size=8 maxlength=8 onblur='validar(precio_venta,"9")'/></td>                      
              </tr>  
          </c:if>
                  
          <tr>    
             <td align="right">Numero de Lote</td>    	       
             <td><input type="text" name="nro_lote" value=<c:out value="${dato.nro_lote}"/> size=15 maxlength=15 onblur='validar(nro_lote,"A9")'/></td>                      
          </tr> 
          <tr>
          <td align="right">Fecha de Vencimiento <font color='red'>(*)</font> </td>    
          
          <td>
               <SELECT NAME="dia_r"> <c:forEach var="dias" items="${dias}">
                   <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia_r}">selected</c:if>> 
                     <c:out value="${dias}"/>
                   </option>  </c:forEach>
               </SELECT>
               <SELECT NAME="mes_r"> <c:forEach var="meses" items="${meses}">
                   <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes_r}">selected</c:if>> 
                     <c:out value="${meses}"/>
                   </option>   </c:forEach>
               </SELECT>
               <SELECT NAME="anio_r">  <c:forEach var="anios" items="${anios}">
                   <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio_r}">selected</c:if>> 
                     <c:out value="${anios}"/>
                   </option>   </c:forEach>
                </SELECT>
            </td>    
         </tr>
        </table>
         <center>
             <input type="submit" name='accion' class="btn btn-primary" value='Aceptar'>  
             <input type="submit" name='accion' class="btn btn-warning" value='Regresar'>  
             <input type="hidden" name="id_medicamento"  value=<c:out value="${id_medicamento}"/> >
             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name='id_programa'     value='<c:out value="${id_programa}"/>'>
             <input type="hidden" name='id_farmacia'     value='<c:out value="${id_farmacia}"/>'>
             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
             <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
             <input type="hidden" name='tipo'            value='<c:out value="${tipodato}"/>'>
             <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
             <input type="hidden" name="sw"              value='1' >      
         </center>
       </form>   
      
     </c:if> 
     
    </td>
  </tr>

</table>


