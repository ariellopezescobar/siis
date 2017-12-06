<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Costos</div>
<br>
<!--
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoCosto.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>
-->
<table class="table table-striped table-hover table-bordered table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> RUBRO </th>
    <th> DESCRIPCION </th>
    <th> COSTO </th>    
    <th> MODIFICAR </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarCostosRubro}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.rubro}"/></td>
       <td><c:out value="${lista.costo}"/></td>      
       <td><c:out value="${lista.costo_unit}"/></td>    

     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCosto.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="rubro" value=<c:out value="${lista.rubro}"/> >
         <input type="hidden" name="id_costo" value=<c:out value="${lista.id_costo}"/> >
         <input type="hidden" name="id_rubro" value=<c:out value="${lista.id_rubro}"/> >
         <input type="hidden" name="id_laboratorio" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="normales" value=<c:out value="${lista.normales}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCosto.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_costo" value=<c:out value="${lista.id_costo}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>