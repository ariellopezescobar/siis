<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaRet method=post action='<c:url value="/ListarPrestacionSumi.do"/>'>
         <div><a  class="btn btn-success" href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>Medicamentos Prestacion</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr style="font-size:11pt">
        <td align="right" bgcolor="#F2F2F2"> C&oacute;digo Prestacion </td>
        <td><c:out value="${datos.id_prestacion}"/></td>
      </tr>            
      <tr style="font-size:11pt">
      <td align="right" bgcolor="#F2F2F2"> Prestacion </td>
      <td><c:out value="${datos.descripcion}"/></td>
    </tr>        
    <tr style="font-size:11pt">
      <td align="right" bgcolor="#F2F2F2"> Costo </td>
      <td><c:out value="${datos.costo}"/></td>
    </tr>        
    <tr style="font-size:11pt">
      <td align="right" bgcolor="#F2F2F2"> Paquete </td>
      <td><c:out value="${datos.paquete}"/></td>
    </tr> 
   </table>
   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro. </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>
    <th bgcolor="#F2F2F2"> Concentra </th>    
    <th bgcolor="#F2F2F2"> Cantid </th> 
    <th bgcolor="#F2F2F2"> Cost </th>
    <th bgcolor="#F2F2F2"> Total</th>
    <th bgcolor="#F2F2F2"> Modificar </th>       
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
    <form name=formaEmm<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>   
     <tr style="font-size:9pt">
       <td><c:out value="${listado.id_medicamento}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>    
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td><input type="text" name="entrada" value="<fmt:formatNumber value="${listado.entrada}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(entrada,"9")'/></td>                                     
        <td align="right"><fmt:formatNumber value="${listado.salida}" maxFractionDigits="1"/></td>
        <td align="right"><fmt:formatNumber value="${listado.salida*listado.entrada}" pattern="#.00" maxFractionDigits="1"/></td>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEmm<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>           
  	 <input type="hidden" name='id_paquete'     value='<c:out value="${listado.id_receta}"/>' >
         <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>'>                   
	 <input type="hidden" name="accion"         value='modificar' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form> 
         
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>           
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${listado.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>                   
	 <input type="hidden" name="accion" value='eliminar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:forEach>
    <tr><td colspan="3"></td><td colspan="4" align="center" style="color:blue">Costo Paquete &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${suma}" maxFractionDigits="2"/></td></tr>
    <tr><td colspan="7" align="center">Se modifico...<c:out value="${id_paquete}"/></td></tr>
</table>
    </td>

    <td width="50%" valign="top">
         <form name=forma action="<c:url value="/ModificarPaquete.do"/>" method="POST">        
         <table >
          <tr>    
            <td align=right>Nombre Medicamento</td>    
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" value="Buscar"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>                    
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>            
</form> 
        
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> Medicamento </th>
    <th bgcolor="#F2F2F2"> Forma </th>                
    <th bgcolor="#F2F2F2"> Concentra </th>            
    <th bgcolor="#F2F2F2"> Cantidad </th>            
    <th bgcolor="#F2F2F2"> Utiliza </th>                
    <th bgcolor="#F2F2F2"> Modificar </th>
    </tr>  
   <c:forEach var="lista" items="${listarMedicamentos}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/><br><c:out value="${lista.id_medicamento}"/></td>
       <td><c:out value="${lista.medicamento}"/></td>      
       <td><c:out value="${lista.forma_far}"/></td>          
       <td><c:out value="${lista.concentra}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>
       <td><input type="text" name="cantidad" value=1 size=3 maxlength=6 onblur='validar(cantidad,"9")'/></td>     
       <td><input type="text" name="utiliza" value=1 size=3 maxlength=6 onblur='validar(utiliza,"9")'/></td>            
       <td>     
         <div><a class="btn btn-primary btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
         <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>                             
  	 <input type="hidden" name="id_medicamento" value=<c:out value="${lista.id_medicamento}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>                   
	 <input type="hidden" name="accion" value='adicion' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr>   
   </c:forEach>

</table>
 
    </td>
  </tr>

</table>

<table class="formulario">
  <tr>
    <th colspan="3">Nivel Prestacion</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro. </th>
    <th bgcolor="#F2F2F2"> Prestacion </th>
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="listado" items="${listarNivel}" varStatus="contador">
    <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.prestacion}"/></td>      
     <form name=formaXE<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>
       <td>     
         <div><a class="btn btn-danger" href="javascript:document.formaXE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>           
  	 <input type="hidden" name="prestacion" value=<c:out value="${listado.prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>                   
	 <input type="hidden" name="accion" value='eliminarPres' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr>   
   </c:forEach>

</table>
    </td>

    <td width="50%" valign="top">
    <form name=formaNP action="<c:url value="/ModificarPaquete.do"/>" method="POST">        
        <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
          <tr>    
            <td class="colh" align=right>Codigo Prestacion</td>    
            <td class="colb"><input type="text" name="prestacion"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(prestacion,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" value="Adicion Prestacion"></td>
          </tr>  
         </table>
      <input type="hidden" name='id_prestacion'  value='<c:out value="${id_prestacion}"/>'>                    
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>            
      <input type="hidden" name="accion" value='adicionPres' >
    </form>         
    </td>
  </tr>

</table>



