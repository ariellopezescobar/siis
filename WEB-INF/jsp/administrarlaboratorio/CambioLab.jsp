<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Cambiar Datos Laboratorio</div>

<br>
<form name="adicionar" method="POST" action='<c:url value="/LabRealizado.do"/>' >
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES </font></th>
      </tr>
      <tr>    
        <td class="etiqueta">Nº HCL</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${hcl}"/></td>
      </tr>  
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${nombres}"/></td>
      </tr>   
      <tr>
        <td class="etiqueta">Fecha Realizacion<font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
        </td>	                 
      </tr>
      <tr>
        <td class="etiqueta">Laboratorio (Realizado B,No Realizado A)</td>
         <td class="etiqueta">::</td>
        <td><SELECT NAME="id_estado">
              <OPTION value="B" <c:if test="${id_estado=='B'}">selected</c:if>> 
	        Entregada (B)
	      </option>
              <OPTION value="A" <c:if test="${id_estado=='A'}">selected</c:if>> 
	        No Entregada (A)
	      </option>
          </SELECT></td>
      </tr>
      <tr>
        <td class="etiqueta">Tipo de Afiliacion</td>
         <td class="etiqueta">::</td>
        <td><SELECT NAME="expedido">
              <OPTION value="S" <c:if test="${expedido=='S'}">selected</c:if>> 
	        Ley475(exSumi)(S)
	      </option>
              <OPTION value="P" <c:if test="${expedido=='P'}">selected</c:if>> 
	        Programa (P)
	      </option>
              <OPTION value="E" <c:if test="${expedido=='E'}">selected</c:if>> 
	        Externo (E)
	      </option>
          </SELECT></td>
      </tr>  
    </table>
<center>
  <input type="submit" name='accion' class="eliminar" value='Eliminar'>
  <input type="submit" name='accion' class="adicionar" value='Modificar'>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion value='Modificar'>
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
  <input type="hidden" name='id_pedido' value='<c:out value="${id_pedido}"/>'>
</form>
