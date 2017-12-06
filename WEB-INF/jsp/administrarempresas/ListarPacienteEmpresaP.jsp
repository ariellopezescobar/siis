<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Detalle pagos y afiliados de la Empresa</div>
<br>
<form name="formaempresa" method="POST" action='<c:url value="/ConfirmarEmpresa.do"/>' >
<center>
 <table class="formulario">
    <tr>
      <th colspan="3">DATOS DE LA EMPRESA</th>
    </tr>
    <tr>
      <td class="etiqueta"> Nombre Empresa/Razon Social </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${empresa}"/></td>
    </tr> 
    <tr>
      <td class="etiqueta"> Direccion </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${direccion}"/></td>
    </tr>
    <tr>
      <td class="etiqueta"> NIT </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${nit}"/></td>
    </tr>
    
 </table>
 </center>
 
 <center>
 <table class="tabla">
   <tr>
     <th colspan="4"> DETALLE PAGOS</th>
   </tr>    
   <tr>
     <th> NRO </th>
     <th> Fecha<br>Pago </th>
     <th> Mes </th>
     <th> Gestion </th>
   </tr>  
   <c:forEach var="lista" items="${listarpagos}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td>   
       <td style="font-size:11pt"><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>  
       <td style="font-size:11pt; color:blue"><c:out value="${lista.mes}"/></td>         
       <td style="font-size:11pt"><c:out value="${lista.gestion}"/></td>   
   </c:forEach>
  </table>  
 </center>
 
<table class="tabla">
    <tr>
       <th colspan="8"> LISTA AFILIADOS DE LA EMPRESA </th>
    </tr>   
   <tr>
       <th> No. </th>
       <th> HCL </th>
       <th> NOMBRE </th>
       <th> Fecha<br>Nacimien.</th>
       <th> Sexo </th>
       <th> C.I. </th>
       <th> Seguro </th>    
       <th> CARPETA<BR>FAMILIAR </th>     
    </tr> 
         <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <!-- ********** Esto es para el efecto ************ -->
          <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
          <td><c:out value="${contador.count}"/></td> 
          <td><c:out value="${lista.hcl}"/></td> 
          <td><c:out value="${lista.nombres}"/></td>   
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
              <c:if test="${lista.id_tipo_sexo == '2' }">
                  <td align="center" style="font-size:10pt">M</td>
              </c:if>
              <c:if test="${lista.id_tipo_sexo == '1' }">
                  <td align="center" style="font-size:10pt">F</td>
              </c:if>
           <td><c:out value="${lista.carnet}"/></td>   
              <c:if test="${lista.id_estado == 'A' }">
                  <td style="color:blue">Externo</td>
              </c:if>
              <c:if test="${lista.id_estado == 'S' }">
                  <td style="color:red">SUMI</td>
              </c:if>
              <c:if test="${lista.id_estado == 'P'}">
                  <td align="center">CNS</td>
              </c:if>
           <c:if test="${lista.id_carpeta == 0 }">
             <td><c:out value="${lista.id_carpeta}"/></td> 
          </c:if>      
          <c:if test="${lista.id_carpeta != 0 }">
           <form name=formaCarFa<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaCarFa<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_carpeta}"/></a></div>
             <input type="hidden" name="id_carpeta"     value='<c:out value="${lista.id_carpeta}"/>' >
             <input type="hidden" name="id_pacientej"   value='<c:out value="${lista.id_paciente}"/>' >
             <input type="hidden" name="accion"         value='Modificar'>
             <input type="hidden" name="sw"             value='1'>
           </td>
           </form>
          </c:if>  
          
  </c:forEach>  
</table>
</form>