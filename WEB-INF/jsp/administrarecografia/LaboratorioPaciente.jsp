<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Historial del paciente</div>
<br>
<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
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
        <td class="etiqueta">Sexo</td>
        <td class="etiqueta">::</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha de nac.</td>    
        <td class="etiqueta">::</td>
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
    
   </table>
  </td>
  </tr>
   
</table>
   
<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> LABORATORIO </th>
    <th> INDICACIONES </th>    
    <th> RESULTADO </th>        
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy'/></td>
       <td><c:out value="${lista.laboratorio}"/></td>    
       <td><c:out value="${lista.tipoconsulta}"/></td>         
       <td> <c:out value = "${lista.resultado}" escapeXml="False"/></td>           
   </c:forEach>
</table>
<form name=formaM method=post action='<c:url value="/AtenderPacienteEco.do"/>'>
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >                   
          <input type="hidden" name='accion'          value='Ninguno'>
  </form>