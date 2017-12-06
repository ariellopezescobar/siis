<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Recetas Paciente</div>

<table class="formulario">
  <tr>
    <th colspan="3">RECETAS TOTAL DEL PACIENTE </th>
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
     <tr>    
        <td class="etiqueta">Edad</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</td>
      </tr>
   </table>
       <table class="tabla">

    </table>
    </td>
  
  </tr>
  <tr>  
<td>
   <table class="tabla">
  <tr>
    <th> Nro </th>
    <th> Fecha </th>
    <th> Prescriptor </th>
    <th> Medicamento </th>
    <th> Forma Far </th>
    <th> Concentra </th>
    <th> Indicacion </th>
    <th> Dosifica<br>Dias </th>
    <th> Tipo </th>
    <th> Cant.<br>Recetada </th>
    <th> Cant.<br>Entreg. </th>
    <th> Costo </th>
    <th> Total<br>Bs. </th>
    <th> Estado </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaTotal}" varStatus="contadora">
     <!-- ********** Esto es para el efecto ************ -->
     <tr <c:if test="${(contadora.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td><fmt:formatDate value="${listadox.fecha_fin}" pattern='dd/MM/yy HH:mm'/></td>              
       <td><c:out value="${listadox.medico}"/><br><c:out value="${listadox.cadena1}"/></td> 
       <td><c:out value="${listadox.medicamento}"/></td> 
       <td><c:out value="${listadox.forma_far}"/></td>
       <td><c:out value="${listadox.concentra}"/></td>
       <td><c:out value="${listadox.indicacion}"/></td> 
       <td align="center"><c:out value="${listadox.dosifica}"/></td>
       <td align="center"><c:out value="${listadox.expedido}"/></td>   
       <td align="center"><c:out value="${listadox.salida}"/></td>
        <c:forEach var="listak" items="${listarKardex}" varStatus="contadora">
          <c:if test="${listadox.id_detalle==listak.id_receta and listak.salida>'0'}">
             <c:if test="${listadox.salida>listak.salida}">
                 <td style="color:red"  align="center"><b><c:out value="${listak.salida}"/></b></td>
             </c:if>
             <c:if test="${listadox.salida==listak.salida}">
                 <td style="color:blue"  align="center"><c:out value="${listak.salida}"/></td>
             </c:if>
             <td><c:out value="${listak.precio_venta}"/></td>   
             <td><c:out value="${listak.precio_total}"/></td> 
             <td>Dispensado</td>
          </c:if>
          <c:if test="${listadox.id_detalle==listak.id_receta and listak.salida<='0'}">
             <td style="color:red" colspan="4" align="right">No Dispensado</td>
          </c:if>
       </c:forEach>     
       
       <c:if test="${listadox.id_estado=='A'}">
            <td style="color:red" colspan="4" align="right"><c:out value="No entregado"/></td> 
       </c:if>
     </tr>  
   </c:forEach>

   </table>
</td>
</tr>
</table>