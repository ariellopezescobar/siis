<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Rubros</div>
<br>
<!--
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoRubro.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>
-->
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> RUBROS </th>   
    <th> MODIFICAR </th>
    <th> ESTADO </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarRubros}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCosto.do"/>'>
       <td>     
         <div class="agregar"><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.rubro}"/> </a></div>
  	 <input type="hidden" name="id_rubro" value=<c:out value="${lista.id_rubro}"/> >
         <input type="hidden" name="rubro"    value=<c:out value="${lista.rubro}"/> >
	 <input type="hidden" name="accion"   value='Adicionar' >
         <input type="hidden" name="swx"      value='1' >
	 <input type="hidden" name="sw"       value='1' >
       </td>
     </form>     
       <td><c:out value="${lista.id_estado}"/></td>  
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoRubro.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_rubro" value=<c:out value="${lista.id_rubro}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarRubro.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_rubro" value=<c:out value="${lista.id_rubro}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>