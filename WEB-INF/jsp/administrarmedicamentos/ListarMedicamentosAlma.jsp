<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />


<form name=formax action="<c:url value="/ListarMedicamentosAlma.do"/>" method="POST">

<table class="table table-striped table-bordered table-condensed table-responsive"> 
<tr>
<td>    
<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
        <td class='colh' align=center colspan=5>Administracion de Almacenes y Farmacias</td>
  </tr>    
  <tr>    
        <td class="colh" align=right>Nombres</td>    
        <td class="colb"><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>" size=30" maxlength=40 onblur='validar=(nombres,"A ")'/></td>            
        <td>
            <input class="btn btn-primary" type="submit" name='accion' value="Buscar">
            <input class="btn btn-success" type="submit" name='accion' value='Actualiza'> 
            <input class="btn btn-info" type="submit" name='accion' value='Imprimir'>
        </td>
      </tr>  
</table>
</form>

<table>
  <tr>
  <form name=formaa method=post action='<c:url value="/AsignarFarmacias.do"/>'>
    <td colspan="2">
      <div >
       <a class="btn btn-success" href="javascript:document.formaa.submit();" >Nueva Farmacia</a>
    </div></td>
    </form>
    <form name=formam method=post action='<c:url value="/NuevoMedicamento.do"/>'>
    <td colspan="2">
      <div >
       <a class="btn btn-primary" href="javascript:document.formam.submit();" >Nuevo Medicamento</a>
       <input type="hidden" name=accion value='Adicionar'>
       <input type="hidden" name=accion2 value='Adicionar2'>
    </div></td>
    </form>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> COD </th>
    <th bgcolor="#F2F2F2"> COD<br>SUMI </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTO </th>
    <th bgcolor="#F2F2F2"> FORMA<br>FARMACO </th>    
    <th bgcolor="#F2F2F2"> Concent </th>
    <c:forEach var="listaf" items="${listafarAsig}" varStatus="contador">
       <th bgcolor="#F2F2F2"><c:out value="${listaf.farmacia}"/></th>  
    </c:forEach>
    <th bgcolor="#F2F2F2"> TOTAL </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th> 
    <th bgcolor="#F2F2F2"> KARDEX </th> 
    </tr>  
   <c:forEach var="lista" items="${listarMedicamentosGral}" varStatus="contador">
     <tr style="font-size:9pt">
        <td align="center" style="font-size:6pt"><c:out value="${contador.count}"/></td>
        <form name=formaAct<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarMedicamentosAlma.do"/>'>
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
       <td><c:out value="${fn:substring(lista.medicamento,0,30)}"/></td>      
       <td><c:out value="${lista.forma_far}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>
       <c:forEach var="listaalma" items="${listarMedicamentos}">       
               <c:forEach var="listaf" items="${listafarAsig}">
                   <c:if test="${(listaalma.id_farmacia==listaf.id_farmacia and  lista.id_medicamento==listaalma.id_medicamento)}">
                       <c:if test="${(listaalma.b1<0)}">
                          <td align="center" style="font-size:11pt; color:red"><fmt:formatNumber value="${listaalma.b1}" maxFractionDigits="0"/></td>
                       </c:if>
                       <c:if test="${(listaalma.b1>=0)}">
                          <td align="center" style="font-size:11pt;"><fmt:formatNumber value="${listaalma.b1}" maxFractionDigits="0"/></td>
                       </c:if> 
                   </c:if>
               </c:forEach>
       </c:forEach>
       <c:forEach var="listaalma2" items="${listarMedicamentos}">       
               <c:forEach var="listaff" items="${listafarAsig}" begin="1" end="1">
                   <c:if test="${(listaalma2.id_farmacia==listaff.id_farmacia and  lista.id_medicamento==listaalma2.id_medicamento)}">              
                        <td align="center" style="font-size:12pt;color:blue"><fmt:formatNumber value="${listaalma2.mes}" maxFractionDigits="0"/></td>
                   </c:if>
               </c:forEach>
       </c:forEach>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_medicamento"   value='<c:out value="${lista.id_medicamento}"/>' >
	 <input type="hidden" name="accion"           value='Modificar'>
	 <input type="hidden" name="sw"               value='1' >
       </td>
     </form>  
     <form name=formaK<c:out value="${contador.count}"/> method=post action='<c:url value="/KardexMedicamento.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaK<c:out value="${contador.count}"/>.submit();"> Kardex</a></div>
         <input type="hidden" name="id_medicamento"  value='<c:out value="${lista.id_medicamento}"/>' >
         <input type="hidden" name="medicamento"     value='<c:out value="${lista.medicamento}"/>' >
         <input type="hidden" name="accion"          value='Kardex'>
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
   </c:forEach>
</table>
