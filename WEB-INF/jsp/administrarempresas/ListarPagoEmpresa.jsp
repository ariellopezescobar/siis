<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Empresas / Detalle Pagos Mensuales</div>
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
      <td class="etiqueta"> NIT </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${nit}"/></td>
    </tr>
    <tr>
      <td class="etiqueta"> Numero Empleados </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${numempleados}"/></td>
    </tr>
    
    <tr>
      <td class="etiqueta"> Mes </td>
      <td class="etiqueta">::</td>
      <c:if test="${mes== '1' }"> <td>ENERO</td> </c:if>
      <c:if test="${mes== '2' }"> <td>FEBRERO</td> </c:if>
      <c:if test="${mes== '3' }"> <td>MARZO</td> </c:if>
      <c:if test="${mes== '4' }"> <td>ABRIL</td> </c:if>
      <c:if test="${mes== '5' }"> <td>MAYO</td> </c:if>
      <c:if test="${mes== '6' }"> <td>JUNIO</td> </c:if>
      <c:if test="${mes== '7' }"> <td>JULIO</td> </c:if>
      <c:if test="${mes== '8' }"> <td>AGOSTO</td> </c:if>
      <c:if test="${mes== '9' }"> <td>SEPTIEMBRE</td> </c:if>
      <c:if test="${mes== '10' }"> <td>OCTUBRE</td> </c:if>
      <c:if test="${mes== '11' }"> <td>NOVIEMBRE</td> </c:if>
      <c:if test="${mes== '12' }"> <td>DICIEMBRE</td> </c:if>
      
    </tr>
    <tr>
      <td class="etiqueta"> Gestion </td>
      <td class="etiqueta">::</td>
      <td><c:out value="${anio}"/></td>
    </tr>
    <tr>
      <td class="etiqueta"> Monto <font color='red'>(*)</font> </td>
      <td class="etiqueta">::</td>
      <td><input type="text" name="precio" maxlength="40" size="40" value="0"></td>
    </tr>
 </table>
 </center>
  <center>
    <input type="submit" name='accion' class="aceptar" value='Grabar' onclick="document.formaempresa.action='<c:url value="/ConfirmarEmpresa.do"/>'">          
    <input type="hidden" name="id_empresa"   value='<c:out value="${id_empresa}"/>' >
    <input type="hidden" name="id_carpeta"   value='<c:out value="${id_carpeta}"/>' >
    <input type="hidden" name="empresa"      value='<c:out value="${empresa}"/>' >
    <input type="hidden" name="nit"          value='<c:out value="${nit}"/>' >
    <input type="hidden" name="anio"         value='<c:out value="${anio}"/>' >
    <input type="hidden" name="mes"          value='<c:out value="${mes}"/>' >
  </center>
</form>
</center>
<table class="tabla">
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