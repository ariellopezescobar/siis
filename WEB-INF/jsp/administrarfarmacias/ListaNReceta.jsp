<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="formulario">
  <tr><td>
    <form name=formaRet method=post action='<c:url value="/ListaNReceta.do"/>'>
         <a class="btn btn-success" href="javascript:document.formaRet.submit();">Finalizar</a>
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' > 
          <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
          <input type="hidden" name="accion"          value='terminar' >
      </form></td>
   <td align="center" >
       <font size="4"><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RECETA DEL PAACIIENTE &nbsp;&nbsp;&nbsp;<c:out value = "${swb}"/></center></font>
   </td>
 </tr>  
</table>
   
<table class="formulario">
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres::</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
       <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">No Documento::</td>    	      
        <td><c:out value = "${datos.nit}"/></td>
      </tr>  
      <tr style="font-size:12pt">    
        <td align="right" bgcolor="#F2F2F2"">Monto a Cancelar::</td>    	      
        <td><fmt:formatNumber value="${datos.precio_total}" maxFractionDigits="2"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="blue" size="2">Nº. Documento :<c:out value = "${folio}"/></font></td>
      </tr>  
   </table>
   
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nº Folio</th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma</th>
    <th bgcolor="#F2F2F2"> Concentra </th>
    <th bgcolor="#F2F2F2"> Cantidad </th>
    <th bgcolor="#F2F2F2"> Costo </th>
    <th bgcolor="#F2F2F2"> Total </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listarKardex}" varStatus="contador">
     <tr style="font-size:9pt">
       <td><c:out value="${contador.count}"/><br><font color="red" size="5"><c:out value="${listado.num_recetak}"/></font></td>
       <td><c:out value="${listado.medicamento}"/></td>
      <td><c:out value="${listado.forma_far}"/></td>             
       <td><b><c:out value="${listado.concentra}"/></b></td>
       <td style="font-size:10pt" align="center"><b><c:out value="${listado.salida}"/></b></td>             
       <td><c:out value="${listado.precio_venta}"/></td>                    
       <td><c:out value="${listado.precio_total}"/></td>                           
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_medicamento"  value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name="salida"          value='<c:out value="${listado.salida}"/>' > 
         <input type="hidden" name="id_kardex"        value=<c:out value="${listado.id_factura}"/> >
         <input type="hidden" name="expedido"        value='<c:out value="${listado.expedido}"/>' >                  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='folio'           value='<c:out value="${folio}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="accion"          value='eliminar' >
	 <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >
       </td>
     </form>
    </tr>  
   </c:forEach>

</table>      
    </td>
    <td width="50%" valign="top">
     <form name=forma action="<c:url value="/ListaNReceta.do"/>" method="POST">        
         <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
          <tr>   
            <td  align=right>Nombre Medicamento::</td>    	
            <td><input type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombremed,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" value="Buscar"></td>
          </tr>  
         </table>
      <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >         
      <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
      <input type="hidden" name='folio'          value='<c:out value="${folio}"/>'>
      <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
     </form>    
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma</th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Stock </th>
    <c:if test="${expedido=='E'}">
        <th bgcolor="#F2F2F2"> Precio </th>    
    </c:if>
    <c:if test="${expedido!='E'}">
        <th bgcolor="#F2F2F2"> Costo </th>
        <th bgcolor="#F2F2F2">Program</th>
    </c:if>
    <th bgcolor="#F2F2F2"> Cantidad</th>
    <th bgcolor="#F2F2F2"> Entregar </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentos}" varStatus="contador">
       <tr style="font-size:9pt">
       <td><c:out value="${listado.id_medicamento}"/><br><font color="red" size="2"><b><c:out value="${listado.codsumi}"/></b></font></td>  
       <td><c:out value="${listado.medicamento}"/></td> 
       <td style="font-size: 6pt"><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 6pt"><b><c:out value="${listado.concentra}"/></b></td>    
       <td><c:out value="${listado.stock}"/></td>      
     <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
      <c:if test="${expedido=='E'}">      
          <td ><input type="text" name="precio" value='<c:out value="${listado.precio_venta}"/>' size=3 maxlength=6 /></td>                 
      </c:if>
      <c:if test="${expedido!='E'}">      
          <td ><c:out value="${listado.costo_unit}"/></td>
          <c:if test="${expedido=='P' or expedido=='S'}">
             <td><SELECT NAME="id_programa">
	         <c:forEach var="prog" items="${listarProg}">
                    <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                       <c:out value="${prog.concentra}"/>
                    </option>
                 </c:forEach>
              </SELECT></td>         
       </c:if>       
      </c:if>
      <c:if test="${cod_esta!='200010'}">
          <c:if test="${listado.stock > 0}">
              <td align="center" bgcolor="blue" ><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validarNota(cantidad,1,<c:out value="${listado.stock}"/>)'/></td>                 
          </c:if>     
          <c:if test="${listado.stock <= 0}">
              <td style="color:red">No Existe</td>                 
          </c:if>  
       </c:if> 
       <c:if test="${cod_esta=='200010'}"> 
             <td align="center" bgcolor="blue" ><input type="text" name="cantidad" value="1" size=3 maxlength=6 /></td>                 
       </c:if>     
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_medicamento" value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='folio'           value='<c:out value="${folio}"/>'>
          <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
    </tr>  
   </c:forEach>

</table>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> id </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma</th>
    <th bgcolor="#F2F2F2"> Concentra</th>    
    <th bgcolor="#F2F2F2"> Stock </th>
    <c:if test="${expedido=='E'}">
        <th bgcolor="#F2F2F2"> Precio </th>    
    </c:if>
    <c:if test="${expedido!='E'}">
        <th bgcolor="#F2F2F2"> Costo </th>
        <th bgcolor="#F2F2F2">Program</th>
    </c:if>   
    <th bgcolor="#F2F2F2"> Cantidad</th>
    <th bgcolor="#F2F2F2"> Entregar </th>
    </tr>  
   <c:forEach var="listado" items="${listarMedicamentosCot}" varStatus="contador">
     <tr style="font-size:9pt">
       <td><c:out value="${listado.id_medicamento}"/><br><font color="red" size="2"><b><c:out value="${listado.codsumi}"/></b></font></td>  
       <td><c:out value="${listado.medicamento}"/></td> 
       <td style="font-size: 6pt"><c:out value="${listado.forma_far}"/></td>             
       <td style="font-size: 6pt"><b><c:out value="${listado.concentra}"/></b></td>      
       <td><c:out value="${listado.stock}"/></td>      
              
    <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/ListaNReceta.do"/>'>
        <c:if test="${expedido=='E'}">      
          <td ><input type="text" name="precio" value='<c:out value="${listado.precio_venta}"/>' size=3 maxlength=6 /></td>                 
      </c:if>
      <c:if test="${expedido!='E'}">      
          <td ><c:out value="${listado.costo_unit}"/></td>   
          <c:if test="${expedido=='P' or expedido=='S'}">
             <td><SELECT NAME="id_programa">
	         <c:forEach var="prog" items="${listarProg}">
                    <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                       <c:out value="${prog.concentra}"/>
                    </option>
                 </c:forEach>
              </SELECT></td>         
       </c:if>
      </c:if>
         <c:if test="${cod_esta!='200010'}">
          <c:if test="${listado.stock > 0}">
              <td align="center" bgcolor="blue" ><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validarNota(cantidad,1,<c:out value="${listado.stock}"/>)'/></td>                 
          </c:if>     
          <c:if test="${listado.stock <= 0}">
              <td style="color:red">No Existe</td>                 
          </c:if> 
         </c:if> 
         <c:if test="${cod_esta=='200010'}"> 
             <td align="center" bgcolor="blue" ><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validarNota(cantidad,1,<c:out value="${listado.stock}"/>)'/></td>                 
         </c:if>     
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Entregar</a></div>
  	 <input type="hidden" name="id_medicamento" value='<c:out value="${listado.id_medicamento}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='folio'           value='<c:out value="${folio}"/>'>
         <input type="hidden" name="valor_1"         value='<c:out value="${valor_1}"/>' >
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
    </tr>  
   </c:forEach>

</table>

    </td>
  </tr>

</table>