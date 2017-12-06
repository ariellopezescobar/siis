<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Carpeta</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Carpeta</div>
</c:if>
<c:if test="${accion == 'Eliminar'}">
  <div style="font-size:15pt"> Eliminando Carpeta</div>
</c:if>

<div><a class="volver" href='ListarCarpetas.do'>Volver</a></div>
<br>

<form name="adicionarusu" method="POST" action='<c:url value="/GrabarCarpeta.do"/>' >
<table class="formulario">
  <tr>
    <th colspan="3">CONFIRME LOS DATOS</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">  
     <c:if test="${accion == 'ModificarCarpeta'}">  
      <tr>    
        <td class="etiqueta">Numero de Carpeta</td>    
        <td class="etiqueta">::</td>	      
        <td style="font-size:12pt"><input type="text" name="id_carpeta" value="<c:out value = "${dato.id_carpeta}"/>" maxlength=15 onblur='validar(dip,"A9")'/></td>
      </tr></c:if> 
      <tr>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
       <tr>
        <td class="etiqueta">Paterno</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.paterno}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Materno</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.materno}"/></td>            
      </tr>    
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombre}"/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
      <c:if test="${accion == 'Adicionar'}">
      <tr>
      <td class="etiqueta"> Sector </td>
      <td class="etiqueta">::
      <td>
          <SELECT NAME="carpeta">
              <option value="A">Sector 1</option>
              <option value="B">Sector 2</option>
              <OPTION value="C">Sector 3</option>
  	      <OPTION value="D">Sector 4</option>
              <OPTION value="E">Sector 5</option>  
              <OPTION value="O">Otros</option>              
          </SELECT>	
      </td>      
    </tr> 
    </c:if>
   </table>
  </td>
  </tr>
  
  <c:if test="${accion == 'Eliminar'}">  
  <TR>
  <TD>  
  <table class="tabla">
  <tr>
    <th colspan="4">DEPENDIENTES</th>
  </tr>
  <tr>
    <th> HCL </th>
    <th> NOMBRE </th>
    <th> FECHA <br>NACIMIENTO </th>                
    <th> PARENTESCO </th>                    
    </tr>  
   <c:forEach var="lista" items="${listaPacientesD}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${lista.hcl}"/></td>  
       <td><c:out value="${lista.nombres}"/></td>        
       <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
       <td><c:out value="${lista.tipo}"/></td>       
    
   </c:forEach> 
  </table>
  </TD>
  </TR>
</c:if>  
</table>  
  <center>
    <input type="submit" class="aceptar" name='accion1' value='Aceptar'>
  </center>  
  <input type="hidden" name='id_pacientej' value='<c:out value="${id_pacientej}"/>'>
  <input type="hidden" name='id_carpeta' value='<c:out value="${dato.id_carpeta}"/>'>
  <input type="hidden" name='id_carpeta2' value='<c:out value="${id_carpeta2}"/>'>
  <input type="hidden" name='carpeta' value='<c:out value="${dato.carpeta}"/>'>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'> 
</form>
