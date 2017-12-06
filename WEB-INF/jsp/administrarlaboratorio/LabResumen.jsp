<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Resumen de Laboratorios Realizados</div>

<form name=formaRet method=post action='<c:url value="/ListarPacientesAtendidos.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
<table class="formulario">
  <tr>
    <th colspan="3">Resumen de Laboratorios Realizados</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%">
  
   </table>
   <table class="tabla">
    <tr>
      <th colspan="4">Laboratorios Realizados Totales</th>
    </tr>
  <tr>
    <th> No </th>
    <th> LABORATORIO </th>
    <th> Cantidad </th> 
    <th> Costo </th> 
   </tr>  
   <c:forEach var="listalab" items="${labos}" varStatus="contado">
    <!-- ********** Esto es para el efecto ************ -->
        <tr <c:if test="${(contado.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
    <!-- ********** Fin  efecto ************ -->
    
    <td colspan="4" align="center"style="color:red; font-size:9pt"><c:out value="${listalab.laboratorio}"/></td>    
    
       <c:forEach var="listado" items="${listalabS}" varStatus="contador">
         <c:if test="${listalab.id_laboratorio == listado.tabletas}">  
         <!-- ********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->
           <td align="center"><c:out value="${contador.count}"/></td>
           <td><c:out value="${listado.nombres}"/></td>      
           <td><c:out value="${listado.id_paciente}"/></td>      
           <td><c:out value="${listado.numpieza}"/></td>   
          </c:if>
       </c:forEach>
   </c:forEach>

</table>
    </td>
    <td width="50%" valign="top">
   
  <table class="tabla">
  <tr>
      <th colspan="4">Laboratorios Realizados SUMI</th>
    </tr>
  <tr>
    <th> No </th>
    <th> Codigo </th>
    <th> LABORATORIO </th>
    <th> Cantidad </th>    
   </tr>   
  
   <c:forEach var="listaS" items="${listalabT}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listaS.expedido}"/></td>   
       <td><c:out value="${listaS.nombres}"/></td>   
       <td><c:out value="${listaS.id_paciente}"/></td>      
   </c:forEach>
 </table>

   </td>
   </tr>
 </table>