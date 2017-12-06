<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaRet method=post action='<c:url value="/ListarAtendidos.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3">RECEPCION DE MEDICAMENTOS</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%"> 
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr> 
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Monto a Cancelar</td>          
        <td><c:out value = "${datos.precio_total}"/></td>
      </tr>  
   </table>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> No </th>
    <th> MEDICAMENTO </th>
    <th> Forma </th>
    <th> Concentra </th>
    <th> Tipo </th>
    <th> Cant </th>
    <th> Ajuste</th>
    <th> Costo </th>
    <th> Total </th>
    <th> Eliminar </th>
   </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
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
       <td style="color:blue"><b><c:out value="${listado.entrada}"/></b></td>             
       <td><c:out value="${listado.ajuste}"/></td>             
       <td><c:out value="${listado.costo_unit}"/></td>                    
       <td><c:out value="${listado.precio_totalc}"/></td>                           
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/RecepcionMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name='id_medicamento'  value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name='entrada'         value='<c:out value="${listado.entrada}"/>' > 
        <input type="hidden" name='id_kardex'        value='<c:out value="${listado.id_factura}"/>' >
         <input type="hidden" name='ajuste'          value='<c:out value="${listado.ajuste}"/>' >                  
         <input type="hidden" name='expedido'        value='<c:out value="${listado.expedido}"/>' >                           
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
	 <input type="hidden" name='valor_1'         value='<c:out value="${valor_1}"/>' >
         <input type="hidden" name='accion'          value='eliminar' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
   </c:forEach>

</table>
    </td>
  <td width="50%" valign="top">
  <c:if test="${recepcion == 'no'}">
     <form name=forma action="<c:url value="/RecepcionMedicamento.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Nombre Mediicamento</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombremed,"A ")'/></td>            
            <td coslpan=3><input type="submit" value="Buscar"></td>
          </tr>  
         </table>
      <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
     </form>     

   <table class="tabla">
  <tr>
    <th> Codigo </th>
    <th> MEDICAMENTO </th>
    <th> FORMA </th>        
    <th> CONCENT </th>    
    <th> STOCK </th>
    <th> ACCION </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentos}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td style="font-size:8pt"><font color="blue"><c:out value="${listado.id_medicamento}"/></font><br><c:out value="${listado.codsumi}"/></td>  
       <td><c:out value="${listado.medicamento}"/></td>  
       <td><c:out value="${listado.forma_far}"/></td>                 
       <td><c:out value="${listado.concentra}"/></td>      
       <td style="font-size:10pt"><c:out value="${listado.stock}"/></td>             
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/RecepcionMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Recepcion</a></div>
  	 <input type="hidden" name="id_medicamento"  value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="accion"          value='adicion' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
   </c:forEach>
   </table>
   
     </c:if> 
     <c:if test="${recepcion == 'si'}">
     <table class="formulario">
    <tr>
      <th colspan="3">DATOS DEL MEDICAMENTO</th>
    </tr>
   <tr>
      <td class="etiqueta"> (codigo)::<br>Nombre:: </td>
      <td colspan="2"><font size="2"><c:out value="${dato.id_medicamento}"/></font><br><c:out value="${dato.medicamento}"/></td>
    </tr>       
    <tr>
        <td class="etiqueta"> Forma Farma::<br>Concentra::</td>
        <td colspan="2"><c:out value="${dato.forma_far}"/><br><c:out value="${dato.concentra}"/></td>
    </tr>   
    <tr>
        <td class="etiqueta"> Costo Unit::<br>Precio Venta::</td>
        <td colspan="2"><c:out value="${dato.costo_unit}"/><br><c:out value="${dato.precio_venta}"/></font></td>
    </tr>        
    <tr>
      <td class="etiqueta"> Stock S::<br>Stock P::<br>Stock V::<br>Stock Total:: </td>
      <td colspan="2"><font color="blue" size="2"><c:out value="${dato.stocks}"/></font><br><font color="green" size="2"><c:out value="${dato.stockp}"/></font><br><font size="2"><c:out value="${dato.stockv}"/></font><br><font color="red" size="2"><c:out value="${dato.stock}"/></font></td>
    </tr>        
    <tr>
        <td class="etiqueta">Fecha Vencim::<br>Nro. Lore::</td>    
        <td colspan="2"><font size="2"><fmt:formatDate value="${dato.fecha_ven}" pattern='dd/MM/yyyy'/><br><c:out value="${dato.nro_lote}"/></td>	                 
      </tr>    
   
     <form name=forma action="<c:url value="/RecepcionMedicamento.do"/>" method="POST">        
          <tr>
               <th colspan="3">INTRODUZCA LOS DATOS</th>
          </tr>
          <tr>    
             <td class="etiqueta">Cantidad</td>    
       	     <td class="etiqueta">::</td>	
             <td><input type="text" name="cantidad" value="<c:out value = "${cantidad}"/>" size=8 maxlength=8 onblur='validar(cantidad,"9")'/></td>                      
          </tr>  
          </tr>  
          <tr>    
             <td class="etiqueta">Tipo Transaccion</td>    
       	     <td class="etiqueta">::</td>	
             <td>
                <c:if test="${tipodato!='1' and tipodato!='-1'}">
                    <SELECT NAME="tipo">
                    <option value="0" selected> Recepcion </option>
                    <option value="-1" > Ajuste (-) </option>
                    <option value="1" > Ajuste (+) </option>
                </c:if>
                <c:if test="${tipodato=='1'}">
                    <SELECT NAME="tipo">
                    <option value="1" selected> Ajuste (+) </option>
                    <option value="-1" > Ajuste (-) </option>
                    <option value="0" > Recepcion </option>
                </c:if>
                <c:if test="${tipodato=='-1'}">
                    <SELECT NAME="tipo">
                    <option value="-1" selected> Ajuste (-) </option>
                    <option value="1" > Ajuste (+) </option>
                    <option value="0" > Recepcion </option>
                    
                </c:if>
              </SELECT>           
            </td>
         </tr>  
         <tr>    
             <td class="etiqueta">Expedido</td>    
       	     <td class="etiqueta">::</td>
	     <td>
                <SELECT NAME="expedido" onchange="javascript:document.forma.submit();">
                  <c:if test="${expedido=='V'}">  
                      <option value="V" selected> Venta </option>
                      <option value="S" > Sumi(SPS) </option>
                      <option value="P" > Programa </option>
                  </c:if>
                  <c:if test="${expedido=='S'}">  
                      <option value="S" selected> Sumi(SPS) </option>
                      <option value="P" > Programa </option>
                      <option value="V" > Venta </option>
                  </c:if>
                  <c:if test="${expedido=='P'}">  
                      <option value="P" selected> Programa </option>
                      <option value="V" > Venta </option>
                      <option value="S" > Sumi(SPS) </option>
                  </c:if>
                  <c:if test="${expedido!='V' and expedido!='S' and expedido!='P'}">  
                      <option value="V" selected> Venta </option>
                      <option value="S" > Sumi(SPS) </option>
                      <option value="P" > Programa </option>
                  </c:if>
                </SELECT>  
            </td>
          </tr>
          <c:if test="${programa == 'progra' and expedido=='P'}">
          <tr>    
             <td class="etiqueta">Programas</td>    
       	     <td class="etiqueta">::</td>	
             <td>
                <SELECT NAME="id_programa">
	        <c:forEach var="prog" items="${listarProg}">
                  <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                    <c:out value="${prog.concentra}"/>
                  </option>
                </c:forEach>
              </SELECT>           
            </td>
         </tr>
         </c:if> 
          <tr>    
             <td class="etiqueta">Costo Unitario</td>    
       	     <td class="etiqueta">::</td>	
             <td><input type="text" name="costo_unit" value=<c:out value="${dato.costo_unit}"/> size=8 maxlength=8 onblur='validar(costo_unit,"9")'/></td>                      
          </tr>
          <tr>    
             <td class="etiqueta">Precio Venta</td>    
       	     <td class="etiqueta">::</td>	
             <td><input type="text" name="precio_venta" value=<c:out value="${dato.precio_venta}"/> size=8 maxlength=8 onblur='validar(precio_venta,"9")'/></td>                      
          </tr>          
          <tr>    
             <td class="etiqueta">Numero de Lote</td>    
       	     <td class="etiqueta">::</td>	       
             <td><input type="text" name="nro_lote" value=<c:out value="${dato.nro_lote}"/> size=15 maxlength=15 onblur='validar(nro_lote,"A9")'/></td>                      
             </td>
          </tr> 
          <tr>
          <td class="etiqueta">Fecha de Vencimiento <font color='red'>(*)</font> </td>    
          <td class="etiqueta">::</td>
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
         <input type="submit" name='accion' class="aceptar" value='Aceptar'>  
         <input type="submit" name='accion' class="aceptar" value='Cancelar'>  
	 <input type="hidden" name="id_medicamento"  value=<c:out value="${id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="sw"              value='1' >      
         </center>
     </form>   
     
     </c:if> 
     
    </td>
  </tr>

</table>


