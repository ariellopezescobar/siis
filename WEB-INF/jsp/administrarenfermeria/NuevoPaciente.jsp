<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Pacientes</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Pacientes</div>
</c:if>

<div><a class="volver" href='ListarCobroEnfermeria.do'>Volver</a></div>
<br>

<form name="adicionarpaciente" method="POST">
    

    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES </font></th>
      </tr>    
   
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombres" value="<c:out value = "${buscarPaciente.nombres}"/>" size="30" onblur='validar(nombre,"A")'/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Sexo <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_sexo">
            <option value="">-- seleccione --
            <c:forEach var="sexo" items="${listaSexos}">
  	      <OPTION value="<c:out value="${sexo.id_sexo}"/>" <c:if test="${sexo.id_sexo == buscarPaciente.id_tipo_sexo}">selected</c:if>> 
	        <c:out value="${sexo.sexo}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
      </tr> 
  
      <tr>    
        <td class="etiqueta">Edad <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>	      
        <td><input type="text" name="edad" value="<c:out value = "${buscarPaciente.edad}"/>" maxlength=60/></td>
      </tr>    
      
    </table>

<c:if test="${expedido == 'E'}">

<center>
  <input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionarpaciente.accion1.value='Guardar';
                                                                      document.adicionarpaciente.action='<c:url value="/Cuaderno6.do"/>'"></td>
</center>

</c:if>
  <input type="hidden" name='accion1' value=''>
  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
  <input type="hidden" name='id_paciente' value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_persona' value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
  <input type="hidden" name='id_estado' value='<c:out value="${id_estado}"/>'>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name='recargado' value='Si'>
</form>


<c:if test="${expedido == 'S'}">

<table class="tabla">
  <tr>
    <th> NRO </th>
    <th> FECHA </th>
    <th> MEDICO </th>
    <th> CONSULTORIO </th>    
    <th> CIE10 </th>  
    <th> RECETA </th>        
    </tr>  
   <c:forEach var="lista" items="${hislista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.consultorio}"/></td>    
        <td><c:out value="${lista.codigo}"/></td>   
      <form name=formaMA<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMA<c:out value="${contador.count}"/>.submit();">Receta</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${lista.id_historial}"/>'>      
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >  
          <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_estado' value='<c:out value="${id_estado}"/>'>
           <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
          <input type="hidden" name='accion'          value='Ninguno'>
       </td>
     </form>      
       
   </c:forEach>
</table>
</c:if>