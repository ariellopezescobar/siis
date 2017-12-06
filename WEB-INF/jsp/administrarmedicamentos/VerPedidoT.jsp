<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionar" method="POST" action='<c:url value="/BuscarPedidos.do"/>' >
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
   <tr>
   <td>
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr style="font-size:9pt">
        <th colspan="3"><font size=2>Pedidos de Medicamentos Entregado y/o Recibidos
           <c:if test="${id_estado=='S'}">
                  <font color="red">RECETA Ley475 (exSUMI)</font>                         
           </c:if>
           <c:if test="${id_estado=='P'}">
                  <font color="red">RECETA Seguros (Programas)</font>                         
           </c:if>
           <c:if test="${id_estado=='E'}">
                  <font color="red">RECETA VENTA (Fondo Rotatorio)</font>                         
           </c:if>
           <c:if test="${id_estado=='R'}">
                  <font color="red">COMPRA DE MEDICAMENTOS (Ajustes) </font>                         
           </c:if>
        </font></th>
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres  </td>    
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" maxlength=50 onblur='validar(nombre,"A")'/></td>
      </tr> 
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Fecha Pedido </td>    
        <td ><SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
	         <c:out value="${dias}"/></option></c:forEach></SELECT>
	<SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
	         <c:out value="${meses}"/></option></c:forEach></SELECT>
	 <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
	         <c:out value="${anios}"/></option></c:forEach></SELECT>
         <SELECT NAME="hora">
             <c:forEach var="horas" items="${horas}">
    	       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
	         <c:out value="${horas}"/></option></c:forEach></SELECT>
         <SELECT NAME="minuto">
             <c:forEach var="minutos" items="${minutos}">
    	       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
	         <c:out value="${minutos}"/></option></c:forEach></SELECT>
         <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
       </td>                 
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Numero Documento(NIT)</td>    
        <td><input type="text" name="nit" value="<c:out value = "${nit}"/>" maxlength=15 size=15/></td>
      </tr>   
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">No. Pedido</td>
        <td><input type="text" name="id_factura" value="<c:out value = "${id_factura}"/>" maxlength=15 size=15 readonly /><font color="red">Automatico Maquina</font></td>
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">No. Orden</td>    
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=15 size=15/></td>
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Expedido a</td>    
      <c:if test="${id_estado == 'S'}">
            <td><SELECT NAME="id_expedido">
                  <option value="S">Ley475(exSUMI)</option>
                  <option value="P">Programas</option>
                  <option value="V">Venta</option>
            </SELECT></td></c:if>
       <c:if test="${id_estado == 'P'}">
            <td><SELECT NAME="id_expedido">
                  <option value="P">Programas</option>
                  <option value="V">Venta</option>
                  <option value="S">Ley475(exSUMI)</option>
            </SELECT></td></c:if>
       <c:if test="${id_estado == 'E'}">
            <td><SELECT NAME="id_expedido">
                  <option value="V">Venta</option>
                  <option value="S">Ley475(exSUMI)</option>
                  <option value="P">Programas</option>
            </SELECT></td></c:if>
       <c:if test="${id_estado == 'R'}">
            <td><SELECT NAME="id_expedido">
                  <option value="R">Recibido(Ajuste)</option>
            </SELECT></td></c:if>     
      </tr>      
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Nomto Total</td>    
        <td><input type="text" name="total" value="<c:out value = "${total}"/>" maxlength=15 size=15 readonly/></td>
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Transaccion</td>    
        <td>
           <c:if test="${id_estado=='S'}">
                  <font color="blue">RECETA Ley475(exSUMI)</font>                         
           </c:if>
           <c:if test="${id_estado=='P'}">
                  <font color="bllue">RECETA (Programas)</font>                         
           </c:if>
           <c:if test="${id_estado=='E'}">
                  <font color="blue">RECETA VENTA (Fondo Rotatorio)</font>                         
           </c:if>
           <c:if test="${id_estado=='R'}">
                  <font color="blue">ENTRADA DE MEDICAMENTOS (Ajustes) </font>                         
           </c:if>
        </td>
      </tr>
      
   <c:if test="${codesta=='200010'}">
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Tipo Receta </td>    
        <c:if test="${id_estado=='R'}">
          <c:if test="${tag == 'T'}">
            <td><SELECT NAME="tag">
                  <option value="T">Traspaso a Farmacias</option>
            </SELECT></td></c:if>
          <c:if test="${tag == 'C'}">
            <td><SELECT NAME="tag">
                  <option value="C">Caja Chica</option>
            </SELECT></td></c:if>
         <c:if test="${tag == 'A'}">
            <td><SELECT NAME="tag">
                  <option value="A">Ajustes</option>
            </SELECT></td></c:if>
         <c:if test="${tag == 'E'}">
            <td><SELECT NAME="tag">
                  <option value="E">Ingreso Compra</option>
            </SELECT></td></c:if> 
         <c:if test="${tag != 'T' and tag != 'C' and tag != 'A' and tag != 'E'}">
            <td><SELECT NAME="tag">
                  <option value="0">--Elegir--</option>
                  <option value="T">Traspaso a Farmacias</option>
                  <option value="C">Caja Chica</option>
                  <option value="A">Ajustes</option>
                  <option value="E">Ingreso Compra</option>
            </SELECT></td></c:if>
        </c:if>
 
        <td><c:if test="${id_estado!='R'}">
         <SELECT NAME="tag" >
            <c:forEach var="listatip" items="${listarTipReceta}">
               <option value="<c:out value="${listatip.descripcion}"/>" <c:if test="${listatip.descripcion == tiporecet}">selected</c:if>>
	         <c:out value="${listatip.descripcion}"/>__<c:out value="${listatip.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>
         </c:if>     
         </td>  
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Dispensado Por :</td>    
      <td>
          <SELECT NAME="id_persona">
            <option value="">-- seleccione --</option>
	    <c:forEach var="perso" items="${listarPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>__<c:out value="${perso.id_persona}"/>__<c:out value="${perso.matricula}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
          
        </td>
      </tr>
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Para Farmacia :</td>    
      <td>
          <SELECT NAME="id_farmacia">
                <c:forEach var="listaf" items="${listarFarmacia}">
                  <option value="<c:out value="${listaf.id_farmacia}"/>"<c:if test="${listaf.id_farmacia == id_farmacia}">selected</c:if>> 
                    <c:out value="${listaf.id_farmacia}"/>;<c:out value="${listaf.farmacia}"/>
                  </option>
                </c:forEach>
           </SELECT>    
        </td>
      </tr>
    </c:if>
    </table>
 </td>
<td>   
<center >
    <br><br><br><br><br><br>  
  <input type="submit" name='boton' class="btn btn-primary btn-lg" value='Cambiar'>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion value='Cambiar'>
  <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
  <input type="hidden" name='id_factura' value='<c:out value="${id_factura}"/>'>
</td>  
<td width="30%">
</td>
</tr>
 </table>
</form>


<table class="tabla">
<tr>
<td><form name=formaC4 method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
     <td width="10%" valign="top">&nbsp;</td>
     <td colspan="2" width="10%">
      <div class="agregar"><a class="btn btn-success btn-md" href="javascript:document.formaC4.submit();">Aumentar</a></div></td>
        <input type="hidden" name="id_historial"    value='<c:out value="${id_historial}"/>' >
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>  
                 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>  
                 <input type="hidden" name="id_historia"     value='<c:out value="${id_historia}"/>' >
                 <input type="hidden" name="id_tipo_far"     value='<c:out value="${id_tipo_far}"/>' >
                 <input type="hidden" name="id_paciente"     value='<c:out value="${id_paciente}"/>' >
                 <c:if test="${expedido=='S'}">
                     <input type="hidden" name="accion"          value='SPS (exSUMI)' >
                 </c:if>     
                 <c:if test="${expedido=='P'}">
                     <input type="hidden" name="accion"          value='Recetar Asegurado' >
                 </c:if> 
                 <c:if test="${expedido=='R'}">
                     <input type="hidden" name="accion"          value='Recepcion' >
                 </c:if> 
                 <c:if test="${expedido=='E' or expedido == 'A'}">
                     <input type="hidden" name="accion"          value='Recetar' >
                 </c:if>     
                 <input type="hidden" name="swinter"         value='swinter' >
                 <input type="hidden" name="sw1"             value='1' >
     </form></td><td width="80%" valign="top">&nbsp;</td></tr>
  </table>
  
<center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Codigo </th>
    <th bgcolor="#F2F2F2"> ID<br>Medicam</th>
    <th bgcolor="#F2F2F2"> Folio </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO / INSUMO </th>
    <th bgcolor="#F2F2F2"> Forma <br>Farm  </th>
    <th bgcolor="#F2F2F2"> Concentra  </th>
    <th bgcolor="#F2F2F2"> Seguro </th>
    <th bgcolor="#F2F2F2"> Entrada  </th>
    <th bgcolor="#F2F2F2"> Salida </th>
    <th bgcolor="#F2F2F2"> Ajuste  </th>
    <th bgcolor="#F2F2F2"> Precio <br> Costo  </th>
    <!--<th> Saldo  </th>-->
    <c:if test="${id_estado=='R'}">
      <th bgcolor="#F2F2F2"> TIPO  </th>
    </c:if>
    <th bgcolor="#F2F2F2"> Precio <br> Venta </th>
    <th bgcolor="#F2F2F2"> TOTAL </th>
    <th bgcolor="#F2F2F2"> Fecha <br> Dato Kardex  </th>
    <th bgcolor="#F2F2F2"> Fecha <br> Registro  </th>
    <th bgcolor="#F2F2F2"> Modificar </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
   <form name=formaMo<c:out value="${contador.count}"/> method=post action='<c:url value="/BuscarPedidos.do"/>'>
       <tr style="font-size:9pt" >
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center"><font color="red"><b><c:out value="${listado.codsumi}"/><br></b></font><c:out value="${listado.id_factura}"/></td>
       <td><input type="text" name="id_medicamento" value="<c:out value="${listado.id_medicamento}" />" maxlength=4 size=4 onblur='validar(id_medicamento,"9")' /></td>       
       <td><input type="text" name="id_folio" value="<c:out value="${listado.num_recetak}" />" maxlength=4 size=4 onblur='validar(id_folio,"9")' /></td>             
       <td style="color:blue"><c:out value="${fn:substring(listado.medicamento,0,25)}"/>...<font color="red"><c:out value="${listado.id_farmacia}"/></font></td>
       <td style="font-size:7pt"><c:out value="${fn:substring(listado.forma_far,0,15)}"/></td>
       <td  style="font-size:7pt"><c:out value="${fn:substring(listado.concentra,0,10)}"/></td>
       <td>
           <SELECT NAME="id_programa">
               <option value="0">Venta</option>
	        <c:forEach var="prog" items="${listarProg}">
                   <c:if test="${prog.id_programa!='2' and prog.id_programa!='3' and prog.id_programa!='4' and prog.id_programa!='5'}"> 
                      <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == listado.id_programa}">selected</c:if>> 
                          <c:out value="${prog.id_programa}"/>.<c:out value="${prog.concentra}"/>
                      </option>
                   </c:if>
                </c:forEach>
           </SELECT>   
       </td>
          <td><input type="text" name="entrada" value="<fmt:formatNumber value="${listado.entrada}" pattern="#.00" maxFractionDigits="0"/>" maxlength=6 size=3 onblur='validar(entrada,"9")'/></td>                         
          <td><input type="text" name="salida" value="<fmt:formatNumber value="${listado.salida}" pattern="#.00" maxFractionDigits="0"/>" maxlength=6 size=3 onblur='validar(salida,"9")'/></td>
          <td><input type="text" name="ajuste" value="<fmt:formatNumber value="${listado.ajuste}" pattern="#.00" maxFractionDigits="0"/>" maxlength=6 size=3 onblur='validar(ajuste,"9")'/></td>
          <!-- para mostrar saldos a lado<td><input type="text" name="ajuste" value="<fmt:formatNumber value="${listado.saldos}" pattern="#.00" maxFractionDigits="0"/>" maxlength=6 size=3 onblur='validar(ajuste,"9")'/></td>-->
          <td><input type="text" name="costo" value="<c:out value="${listado.costo_unit}"/>" maxlength=6 size=3 onblur='validar(costo,"9")'/></td>
          
        <c:if test="${id_estado=='R'}">
           <c:if test="${listado.expedido=='S'}">
              <td><SELECT NAME="expedido" >
                    <option value="S" > Ley475(exSUMI) </option>
                    <option value="P" > Programas </option>
                    <option value="V" > Venta </option>
              </SELECT></td>
           </c:if>
           <c:if test="${listado.expedido=='V'}">
              <td><SELECT NAME="expedido" >
                    <option value="V" > Venta </option>
                    <option value="S" > Ley475(exSUMI) </option>
                    <option value="P" > Programas </option>
              </SELECT></td>
           </c:if>
           <c:if test="${listado.expedido=='P'}">
              <td><SELECT NAME="expedido" >
                    <option value="P" > Programas </option>
                    <option value="V" > Venta </option>
                    <option value="S" > Ley475(exSUMI) </option>
              </SELECT></td>
           </c:if>
       </c:if>
        <td><b><input type="text" name="precio" value="<c:out value="${listado.precio_venta}"/>" maxlength=6 size=3 onblur='validar(precio,"9")'/></b></td>
       <c:if test="${id_estado=='R'}">
           <td style="font-size:11pt" align="right"><fmt:formatNumber value="${listado.entrada*listado.costo_unit+listado.ajuste*listado.costo_unit}" maxFractionDigits="2"/></td>     
       </c:if>
       <c:if test="${id_estado=='S' or id_estado=='P'}">
           <td style="font-size:11pt" align="right"><fmt:formatNumber value="${listado.salida*listado.costo_unit}" maxFractionDigits="2"/></td>     
       </c:if>
       <c:if test="${id_estado=='E'}">
           <td style="font-size:11pt" align="right"><b><fmt:formatNumber value="${listado.salida*listado.precio_venta}" maxFractionDigits="2"/></b></td>     
       </c:if>
       
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy'/><br><font color="blue"><fmt:formatDate value="${listado.fecha}" pattern='HH:mm:ss:SS'/></font></td>
       <td><fmt:formatDate value="${listado.fecha_ini}" pattern='dd/MM/yyyy'/><br><font color="blue"><fmt:formatDate value="${listado.fecha_ini}" pattern='HH:mm:ss:SS'/></font></td>
       
          <td align="center">     
             <div><a class="btn btn-warning btn-xm" href="javascript:document.formaMo<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
             <input type="hidden" name="id_pedido"     value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name="id_detalle"    value='<c:out value="${listado.id_factura}"/>' >
             <input type="hidden" name="id_persona"    value='<c:out value="${listado.id_persona}"/>' >
             <input type="hidden" name="id_medicamento2" value='<c:out value="${listado.id_medicamento}"/>' >
             <input type="hidden" name="nombres"       value='<c:out value="${nombres}"/>' >
             <input type="hidden" name="nit"           value='<c:out value="${nit}"/>' >
             <input type="hidden" name="total"         value='<c:out value="${total}"/>' >
             <input type="hidden" name="expedido"      value='<c:out value="${id_estado}"/>' >
             <input type="hidden" name="id_estado"     value='<c:out value="${id_estado}"/>' >
             <input type="hidden" name="num_cladoc"    value='<c:out value="${num_cladoc}"/>' >
             <input type="hidden" name="id_factura"    value='<c:out value="${id_factura}"/>' >
             <input type="hidden" name="dia"           value='<c:out value="${dia}"/>' >
             <input type="hidden" name="mes"           value='<c:out value="${mes}"/>' >
             <input type="hidden" name="anio"          value='<c:out value="${anio}"/>' >
             <input type="hidden" name="boton"         value='Arreglar' >
             <input type="hidden" name="sw1"           value='1' >
          </td>
       </form>    
      </tr>    
   </c:forEach>
     
     <tr>
        <td colspan="5" align="center" style="font-size:12pt; color:green">Se modifico el registro... <font color="red"><c:out value="${id_detalle}"/></font></td>
        <c:if test="${id_estado=='E'}">
           <td colspan="8" align="right" style="font-size:13pt; color:blue">Total Pagado</td>    
       </c:if>
       <c:if test="${id_estado!='E'}">
           <td colspan="8" align="right" style="font-size:13pt; color:blue">Total Pagado</td>    
       </c:if>
        <td align="right" style="font-size:14pt; color:blue"><c:out value="${total}"/></td>
     </tr>
</table>

</center> 