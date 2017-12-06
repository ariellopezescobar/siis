<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Recetar Paciente</div>

<form name=formaRet method=post action='<c:url value="/ListarTrasacciones.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_transaccion'  value='<c:out value="${id_transaccion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
<table class="formulario">
  <tr>
    <th colspan="3">RECETA DEL PACIENTE</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
     <table class="formulario" width="100%">
 
      <tr>
        <td class="etiqueta">GLOSA</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.transaccion}"/></td>
      </tr>
   
   </table>
       <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> CUENTA </th>
    <th> DEBE </th>
    <th> HABER </th>    
    <th> ELIMINAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarLibro}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.cuenta}"/></td>      
       <td><c:out value="${listado.debe}"/></td>      
       <td><c:out value="${listado.haber}"/></td> 

     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/LibroDiario.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name="id_transaccion" value=<c:out value="${id_transaccion}"/> >                  
  	 <input type="hidden" name="id_cuenta" value=<c:out value="${listado.id_cuenta}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
	 <input type="hidden" name="accion" value='eliminar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:forEach>

</table>
    </td>

    <td width="50%" valign="top">
         <form name=forma action="<c:url value="/LibroDiario.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Nombre Medicamento</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input type="submit" value="Buscar"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_transaccion'  value='<c:out value="${id_transaccion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
</form>         
         <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> CODIGO </th>
    <th> CUENTA </th>                
    <th> CANTIDAD </th>            
    <th> TIPO </th>            
    <th> AGREGAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarCuentas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.codigo}"/></td>      
       <td><c:out value="${lista.cuenta}"/></td>          
       
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/LibroDiario.do"/>'>
       <td><input type="text" name="cantidad" value=1 size=5 maxlength=10 onblur='validar(cantidad,"9")'/></td>     
       <td >
          <SELECT NAME="tipo">
              <option value="1">DEBE</option>
  	      <OPTION value="2" >HABER</option>
          </SELECT>	
        </td>       
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Agregar</a></div>
  	 <input type="hidden" name="id_transaccion" value=<c:out value="${id_transaccion}"/> >                  
  	 <input type="hidden" name="id_cuenta" value=<c:out value="${lista.id_cuenta}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:forEach>

</table>

   
  <table class="tabla">
  <tr>
    <th> CODIGO </th>
    <th> CUENTA</th>
    <th> CANTIDAD </th>
    <th> TIPO </th>
    <th> AGREGAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarCuentasCot}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${listado.codigo}"/></td>      
       <td><c:out value="${listado.cuenta}"/></td>             
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/LibroDiario.do"/>'>
       <td><input type="text" name="cantidad" value="1" size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>          
       <td >
          <SELECT NAME="tipo">
              <option value="1">DEBE</option>
  	      <OPTION value="2" >HABER</option>
          </SELECT>	
        </td>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Agregar</a></div>
         <input type="hidden" name="id_transaccion" value=<c:out value="${id_transaccion}"/> >                  
  	 <input type="hidden" name="id_cuenta" value=<c:out value="${listado.id_cuenta}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:forEach>

</table>



    </td>
  </tr>

</table>


