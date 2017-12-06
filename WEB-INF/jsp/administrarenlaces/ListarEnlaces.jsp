<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt">  Administraci&oacute;n de Enlaces</div>
<br>
<table>
  <tr>
    <form name=forma method=post action='<c:url value="/NuevoEnlace.do"/>'>
      <td colspan="2">
        <div >
          <a class="btn btn-primary" href="javascript:document.forma.submit();" >Nuevo</a>
          <input type=hidden name=accion value='Adicionar'>
        </div>
      </td>
    </form>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> ENLACE </th>
    <th> CATEGORIA </th>    
    <th> ESTADO </th>    
    <th> ORDEN </th>        
    <th> RUTA </th>        
    <th> MODIFICAR </th>
    <th> ELIMINAR </th> 
  </tr>  
  <c:forEach var="lista" items="${listarEnlaces}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
     <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value = "${lista.enlace}"/></td>		
       <td><c:out value = "${lista.categoria}"/></td>
       <td><c:out value = "${lista.estado}"/></td>	
       <td><c:out value = "${lista.orden}"/></td>		
       <td><c:out value = "${lista.ruta}"/></td>		
      
       <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoEnlace.do"/>'>
         <td>     
           <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	   <input type="hidden" name="id_enlace" value=<c:out value="${lista.id_enlace}"/> >
	   <input type="hidden" name="accion" value='Modificar' >
	   <input type="hidden" name="sw" value='1' >
         </td>
       </form>
       <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarEnlace.do"/>'>
         <td>     
           <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
           <input type="hidden" name="id_enlace" value=<c:out value="${lista.id_enlace}"/> >
           <input type="hidden" name="accion" value='Eliminar' >
           <input type="hidden" name="sw1" value='1' >
         </td>
       </form>
     </tr>  
   </c:forEach>
</table>