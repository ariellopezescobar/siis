<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaRet method=post action='<c:url value="/ListarCobroEnfermeria.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
           <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
</form>
<table class="formulario">
  <tr>
    <th colspan="3">RECETA DEL PACIENTE</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%">
  
      <tr>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
 
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td class="etiqueta">Factores de Riesgo</td>    
            <td class="etiqueta">::</td>	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
       <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> PRESTACION </th>
    <th> DESCRIPCION </th>
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr bgColor="#FFFFD9" onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.prestacion}"/></td>      
       <td><c:out value="${listado.descripcion}"/></td>             
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/PrestacionSumiPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >         
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${listado.id_prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='eliminar' >
	 <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
     </tr>
   
   </c:forEach>

    </table>
    </td>

   <td width="50%" valign="top">

   <form name=forma action="<c:url value="/PrestacionSumiPaciente.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Codigo Pretacion</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input type="submit" name=boton value="BuscarCod"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
  <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
  <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
</form>  
   <form name=formaNom action="<c:url value="/PrestacionSumiPaciente.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Nombre Prestacion</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombresPres"  value="<c:out value="${nombresPres}"/>"  maxlength=20 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input type="submit" name=boton value="BuscarNom"></td>
          </tr>  
         </table>
  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
  <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
   <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
</form>  
       
   <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> PRESTACION </th>
    <th> DESCRIPCION </th>            
    <th> COSTO </th>            
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <td><c:out value="${lista.costo}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/PrestacionSumiPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >                  
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
         <input type="hidden" name="prestacion" value=<c:out value="${lista.prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>         
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
	 <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
   </c:forEach>

</table>

   <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> PRESTACION </th>
    <th> DESCRIPCION </th>            
    <th> COSTO </th>            
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarPrestacionesCot}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <td><c:out value="${lista.costo}"/></td>   
     <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/PrestacionSumiPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${id_reservacion}"/> >                  
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
         <input type="hidden" name="prestacion" value=<c:out value="${lista.prestacion}"/> >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
	 <input type="hidden" name="accion" value='adicion' >
         <input type="hidden" name="sw" value='<c:out value="${sw}"/>' >
       </td>
     </form>
   </c:forEach>

</table>


   
 
   </td>
  </tr>

</table>





