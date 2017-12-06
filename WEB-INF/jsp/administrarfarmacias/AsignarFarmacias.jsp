<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="volver" href='ListarMedicamentos.do'>Volver</a></div>
<br>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td width="50%" valign="top">
  <table class="tabla">
   <tr>
      <th colspan="5" style="font-size:14pt">Lista de Farmacias asignados al Usuario</th>
   </tr>   
  <tr style="font-size:9pt">
    <th> Nro </th>
    <th> ID </th>
    <th> Farmacia </th>
    <th> Cod_esta </th>                    
    <th> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listafarAsig}" varStatus="contador">
     <tr style="font-size:9pt">
       <td><c:out value="${contador.count}"/></td> 
       <td><c:out value="${listado.id_farmacia}"/></td> 
       <td><c:out value="${listado.farmacia}"/></td>      
       <td><c:out value="${listado.cod_esta}"/></td>   
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/AsignarFarmacias.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name='cod_esta'       value='<c:out value="${listado.cod_esta}"/>'>           
  	 <input type="hidden" name="id_farmacia" value=<c:out value="${listado.id_farmacia}"/> >
         <input type="hidden" name="accion"         value='eliminar' >
	 <input type="hidden" name="sw"      value='1'>
       </td>
     </form>
    </tr> 
   </c:forEach>
    
</table>
    </td>

    <td width="50%" valign="top">
            
 <table class="tabla">
  <tr>
    <th> Nro </th>
    <th> ID </th>
    <th> Farmacia </th>
    <th> Cod_esta </th>                
    <th> Agregar </th>
    </tr>  
   <c:forEach var="lista" items="${listafar}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td> 
       <td><c:out value="${lista.id_farmacia}"/></td> 
       <td><c:out value="${lista.farmacia}"/></td>      
       <td><c:out value="${lista.cod_esta}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AsignarFarmacias.do"/>'>
       <td>     
         <div class="agregar"><a href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
         <input type="hidden" name="id_farmacia"   value=<c:out value="${lista.id_farmacia}"/> >
         <input type="hidden" name="accion"           value='adicion' >
	 <input type="hidden" name="sw"               value='1' >
       </td>
     </form>
   </c:forEach>

</table>
 
    </td>
  </tr>

</table>
