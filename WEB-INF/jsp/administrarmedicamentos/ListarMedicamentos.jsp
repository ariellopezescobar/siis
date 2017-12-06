<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<form name=formax3 method=post action='<c:url value="/ListarMedicamentos.do"/>'>
    <th colspan="2">
      <div style="font-size:14pt; color:black">
       Administraci&oacute;n <a href="javascript:document.formax3.submit();" ><font size="4"></font></a>de Medicamentos
       <input type="hidden" name=accion value='Veractua'>
    </div></th>
    </form>  
    
<form name=formax action="<c:url value="/ListarMedicamentos.do"/>" method="POST">
<table>
<tr>
<td>    
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:12pt">
        <td bgcolor="#F2F2F2" align=center colspan=5>Medicamento</td>
  </tr>    
  <tr>    
        <td align=right>Nombre</td>    	
        <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=40 onblur='validar=(nombres,"A ")'/></td>            
        <td>
            <input style="font-size:12pt" class="btn btn-success" type="submit" name='accion' value="Buscar">
            <c:if test="${rol!=31}">
              <input style="font-size:12pt" class="btn" type="submit" name='accion' value='Actualiza'> 
            </c:if> 
            
        </td>
      </tr>  
</table>
</form>

    <table>
      <tr>
      <form name=forma method=post action='<c:url value="/NuevoMedicamento.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a style="font-size:12pt"  class="btn btn-primary" href="javascript:document.forma.submit();" >Nuevo</a>
           <input type="hidden" name=accion value='Adicionar'>
           <input type="hidden" name=accion2 value='Adicionar2'>
        </div></td>
        </form>
      <tr>
    </table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> ID <br>Med</th>
    <th bgcolor="#F2F2F2"> Cod<br>Med. </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> Forma<br>Far. </th>    
    <th bgcolor="#F2F2F2"> Concent </th>
    <c:if test="${seguro_estab != '1' }">
          <th bgcolor="#F2F2F2"> Stock<br>Ley475</th>
    </c:if>
    <th bgcolor="#F2F2F2"> Stock<br>Prog.</th>
    <c:if test="${codesta!=200010}">
           <th bgcolor="#F2F2F2"> Stock<br>Venta</th>      
    </c:if>  
    <th bgcolor="#F2F2F2"><b>STOCK<br>TOTAL</b></th>
    
    <c:if test="${codesta!=200010}">
           <th bgcolor="#F2F2F2"> Costo<br>Unit.</th>
           <th bgcolor="#F2F2F2"> Precio<br>Venta</th> 
    </c:if>  
    
    <th bgcolor="#F2F2F2"> Fecha<br>Vencim.</th>
    <!--<th> Min<br>Emerg.</th>
    <th> Min<br>C.Externa</th>
    <th> Max<br>Emerg.</th>
    <th> Max<br>C.Externa</th> -->
      <th bgcolor="#F2F2F2"> MODIFICAR </th>
      <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    <th bgcolor="#F2F2F2"> KARDEX </th> 
    </tr>  
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
     <tr style="font-size:9pt">
        <td align="center" style="font-size:6pt"><c:out value="${contador.count}"/></td>
        <form name=formaAct<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarMedicamentos.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaAct<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.id_medicamento}"/></a></div>
                 <input type="hidden" name="id_medicamento" value=<c:out value="${lista.id_medicamento}"/> >
                 <input type="hidden" name="accion" value='ActualizarMed' >
              </td>
           </form>
       <c:if test="${lista.id_medicamento<=2000}">
           <td ><font color="blue"><c:out value="${lista.codsumi}"/></font></td>      
       </c:if>
       <c:if test="${(lista.id_medicamento>2000)}">
           <td ><c:out value="${lista.codsumi}"/></td>      
       </c:if>     
       <td><c:out value="${fn:substring(lista.medicamento,0,35)}"/></td>      
       <td><c:out value="${lista.forma_far}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>
       <c:if test="${seguro_estab != '1' }">
          <td style="font-size:10pt"><fmt:formatNumber value="${lista.stocks}" maxFractionDigits="0"/></td>
       </c:if>
       <td style="font-size:10pt"><fmt:formatNumber value="${lista.stockp}" maxFractionDigits="0"/></td>
       <c:if test="${codesta!=200010}">
           <td style="font-size:10pt"><fmt:formatNumber value="${lista.stockv}" maxFractionDigits="0"/></td>   
       </c:if> 
       <c:if test="${(lista.stock>=0)}">
           <th style="font-size:11pt "><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>    
       </c:if>
       <c:if test="${(lista.stock<0)}">
           <th style="font-size:13pt; color:red"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>    
       </c:if>
       
       <c:if test="${codesta!=200010}">
           <td style="font-size:10pt"><c:out value="${lista.costo_unit}"/></td>
           <td style="font-size:10pt"><c:out value="${lista.precio_venta}"/></td>
       </c:if>
       
     <c:if test="${(lista.mes==1)}">
           <td><fmt:formatDate value="${lista.fecha_ven}" pattern='MM/yyyy'/></td> 
     </c:if>
      <c:if test="${(lista.mes==0)}">
           <td style="font-size:9pt; color:red"><b><fmt:formatDate value="${lista.fecha_ven}" pattern='MM/yyyy'/></td> 
     </c:if>
     <c:if test="${(lista.mes==2)}">
           <td style="color:orange"><b><fmt:formatDate value="${lista.fecha_ven}" pattern='MM/yyyy'/></td> 
     </c:if>
     <!-- <td><c:out value="${lista.min_emerg}"/></td>
     <td><c:out value="${lista.min_exter}"/></td>
     <td><c:out value="${lista.max_emerg}"/></td>
     <td><c:out value="${lista.max_exter}"/></td>-->
      <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_medicamento"   value='<c:out value="${lista.id_medicamento}"/>' >
	 <input type="hidden" name="accion"           value='Modificar'>
	 <input type="hidden" name="sw"               value='1' >
       </td>
     </form>

     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_medicamento"   value='<c:out value="${lista.id_medicamento}"/>' >
         <input type="hidden" name="accion"           value='Eliminar'>
         <input type="hidden" name="sw1"              value='1' >
       </td>
     </form>    

     <form name=formaK<c:out value="${contador.count}"/> method=post action='<c:url value="/KardexMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaK<c:out value="${contador.count}"/>.submit();"> Kardex</a></div>
         <input type="hidden" name="id_medicamento"  value='<c:out value="${lista.id_medicamento}"/>' >
         <input type="hidden" name="medicamento"     value='<c:out value="${lista.medicamento}"/>' >
         <input type="hidden" name="cod_esta"        value='<c:out value="${lista.cod_esta}"/>' >
         <input type="hidden" name="id_farmacia"     value='<c:out value="${lista.id_farmacia}"/>' >
         <input type="hidden" name="accion"          value='Kardex'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
