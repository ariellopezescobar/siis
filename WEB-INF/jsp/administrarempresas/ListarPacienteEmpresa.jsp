<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n Pagos de Empresas</div>
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
        <td class="etiqueta">Fecha Mes <font color='red'>(*)</font> </td>
        <td class="etiqueta"> :: </td>
        <td>
        <SELECT NAME="mes">
           <option value="0">Elija Mes</option>
           <option value="1">Enero</option>
           <option value="2">Febrero</option>
           <option value="3">Marzo</option>
           <option value="4">Abril</option>
           <option value="5">Mayo</option>
           <option value="6">Junio</option>
           <option value="7">Julio</option>
           <option value="8">Agosto</option>
           <option value="9">Septiembre</option>
           <option value="10">Octubre</option>
           <option value="11">Noviembre</option>
           <option value="12">Diciembre</option>
         </SELECT>
         </td>
      </tr>
      <tr>  
        <td class="etiqueta">Fecha Año <font color='red'>(*)</font> </td>
        <td class="etiqueta"> :: </td>
        <td>
         <SELECT NAME="anio">
           <option value="0">Elija Año</option>
           <option value="2015">2015</option>
           <option value="2014">2014</option>
           <option value="2013">2013</option>
           <option value="2012">2012</option>
           <option value="2011">2011</option>
           <option value="2010">2010</option>
           <option value="2009">2009</option>
         </SELECT>

        </td>
      </tr>
 </table>
 </center>
  <center>
    <input type="submit" name='accion' class="aceptar" value='Grabar Datos' onclick="document.formaempresa.action='<c:url value="/ConfirmarEmpresa.do"/>'">          
    <input type="hidden" name="id_empresa"   value='<c:out value="${id_empresa}"/>' >
    <input type="hidden" name="id_carpeta"   value='<c:out value="${id_carpeta}"/>' >
    <input type="hidden" name="empresa"      value='<c:out value="${empresa}"/>' >
    <input type="hidden" name="nit"          value='<c:out value="${nit}"/>' >
  </center>

<table class="tabla">
   <tr>
       <th> No. </th>
       <th>Todos<br><input checked type='checkbox' id="all" onclick="checkAllOrAny(H,j)"/>
       </th>                           
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
          <td><input type=checkbox checked name="afiliado" value="<c:out value="${listab.id_costo}"/>" ></td>
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