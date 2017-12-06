<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<form name=formax action="<c:url value="/ListarMedicamentos.do"/>" method="POST">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
<tr>
<td>    
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
       <td bgcolor="#F2F2F2" align=center colspan=5> Administracion Medicamentos General</td>
  </tr>    
  <tr>    
        <td align=right bgcolor="#F2F2F2">Nombres</td>  
  	<td>
        <div class="form-inline">
        <SELECT NAME="cod_esta" onchange="javascript:document.formax.submit();">
            <c:forEach var="estab" items="${listaEstab}">
              <c:if test="${rol=='30'}">
                  <c:if test="${estab.cod_esta==cod_esta }"> 
                     <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                     <c:out value="${estab.cod_esta}"/>_<c:out value="${estab.establecimiento}"/>
                     </option>
                  </c:if> 
              </c:if>    
	      <c:if test="${rol=='31'}">
                     <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                     <c:out value="${estab.cod_esta}"/>_<c:out value="${estab.establecimiento}"/>
                     </option>
              </c:if>
	    </c:forEach>
          </SELECT>	 
          <SELECT NAME="id_farmacia">
                <option value="0">--Seleccione Farmacia--  
                <c:forEach var="listaf" items="${listarFarmacia}">                
                   <option value="<c:out value="${listaf.id_farmacia}"/>"<c:if test="${listaf.id_farmacia == id_farmacia}">selected</c:if>> 
                     <c:out value="${listaf.id_farmacia}"/>;<c:out value="${listaf.farmacia}"/>
                   </option>
                </c:forEach>
          </SELECT>	 
            <input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>" size="40"  maxlength="40" onblur='validar=(nombres,"A ")' placeholder="Nombre/Codigo ..."/>            
            <input type="submit" class="btn btn-primary" name='accion' value="BuscarMed"> 
          </div>    
        </td>
      </tr>  
</table>
</form>


<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> COD<br>MED. </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA<br>FARMACO </th>    
    <th bgcolor="#F2F2F2"> Concent </th>
    <th bgcolor="#F2F2F2"> Stock<br>Sumi</th>
    <th bgcolor="#F2F2F2"> Stock<br>Prog.</th>
    <c:if test="${cod_esta!=200010}">
           <th bgcolor="#F2F2F2"> Stock<br>Venta</th>      
    </c:if>  
    <th bgcolor="#F2F2F2"><b>STOCK<br>TOTAL</b></th>
    <th bgcolor="#F2F2F2"> Costo<br>Unit.</th>
    <c:if test="${cod_esta!=200010}">
           <th bgcolor="#F2F2F2"> Precio<br>Venta</th> 
    </c:if>  
    
    <th bgcolor="#F2F2F2"> Fecha<br>Vencim.</th>
    <th bgcolor="#F2F2F2"> KARDEX </th> 
    </tr>  
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
     <tr style="font-size:9pt">
        <td align="center" style="font-size:6pt"><c:out value="${contador.count}"/></td>
       <c:if test="${lista.id_medicamento<=2000}">
           <td ><font color="blue"><c:out value="${lista.codsumi}"/></font></td>      
       </c:if>
       <c:if test="${(lista.id_medicamento>2000)}">
           <td ><c:out value="${lista.codsumi}"/></td>      
       </c:if>     
       <td><c:out value="${fn:substring(lista.medicamento,0,30)}"/></td>      
       <td><c:out value="${lista.forma_far}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>
       <td style="font-size:10pt"><fmt:formatNumber value="${lista.stocks}" maxFractionDigits="0"/></td>
       <td style="font-size:10pt"><fmt:formatNumber value="${lista.stockp}" maxFractionDigits="0"/></td>
       <c:if test="${cod_esta!=200010}">
           <td style="font-size:10pt"><fmt:formatNumber value="${lista.stockv}" maxFractionDigits="0"/></td>   
       </c:if> 
       <c:if test="${(lista.stock>=0)}">
           <th style="font-size:11pt "><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>    
       </c:if>
       <c:if test="${(lista.stock<0)}">
           <th style="font-size:13pt; color:red"><b><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></b></td>    
       </c:if>
       <td style="font-size:10pt"><c:out value="${lista.costo_unit}"/></td>
       <c:if test="${cod_esta!=200010}">
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
     

     <form name=formaK<c:out value="${contador.count}"/> method=post action='<c:url value="/KardexMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaK<c:out value="${contador.count}"/>.submit();"> Kardex</a></div>
         <input type="hidden" name="id_medicamento"  value='<c:out value="${lista.id_medicamento}"/>' >
         <input type="hidden" name="medicamento"     value='<c:out value="${lista.medicamento}"/>' >
         <input type="hidden" name='id_farmacia'     value='<c:out value="${lista.id_farmacia}"/>'>
         <input type="hidden" name='cod_esta'        value='<c:out value="${lista.cod_esta}"/>'>
         <input type="hidden" name="accion"          value='Kardex'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
   </c:forEach>
</table>
