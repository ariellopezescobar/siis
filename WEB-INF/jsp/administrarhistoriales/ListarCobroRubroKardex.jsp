<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Kardex de Pagos del Paciente Odontologia</div>
<form name=formaReg method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
         <div class="volver"><a href="javascript:document.formaReg.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
</form>
<br>
    <table class="formulario" width="50%">
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres Completo</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${nombres}"/></td>
      </tr>
   </table>
    <table class="formulario" width="50%">
    <tr>
        <th> Fecha </th>
        <th> Detalle </th>
        <th> Deuda </th>
        <th> A cuenta </th>       
     </tr> 
      <c:forEach var="estado" items="${listarcobroskardex}" varStatus="contador">
         <!-- 1********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- 2********** Fin  efecto ************ -->
           <td><fmt:formatDate value="${estado.fecha}" pattern='dd/MM/yy'/></td>           
           <td><c:out value="${estado.costo}"/></td>
           <td><c:out value="${estado.entrada}"/></td>                                             
           <td><c:out value="${estado.salida}"/></td>                                   
       </c:forEach>
       <c:forEach var="estadosaldo" items="${listarcobrosaldo}" varStatus="contador">
         <tr bgColor="#FFFFFF">
           <td colspan="2" align="center" style="color:blue">Totales</td>           
           <td style="color:blue"><c:out value="${estadosaldo.entrada}"/></td>
           <td style="color:blue"><c:out value="${estadosaldo.salida}"/></td>
         </tr>
          <tr bgColor="#FFDDD9">
           <td colspan="3" align="right" style="font_size:12pt"><b>DEUDA TOTAL (Bs.)</b></td>           
           <td style="font_size:13pt"><b><c:out value="${estadosaldo.saldo}"/></b></td>
         </tr>
       </c:forEach> 
 </table> 