<%@include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<div style="font-size:15pt"> Cambiar de Consultorio</div>

<table class="formulario">
 <tr>   
<form name="adicionapaciente" method="POST" action='<c:url value="/ConfirmarPaciente.do"/>' >
<center>    
<table class="formulario">
  <tr>
    <th colspan="3">CONFIRME LOS DATOS PARA CAMBIO CONSULTORIO</th>
  </tr>
       <tr>
        <td class="etiqueta">Servicio <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionapaciente.submit();">
            <c:forEach var="estado" items="${listarCargos}">
               <c:if test="${estado.id_cargo!=1 and estado.id_cargo!=33 and estado.id_cargo!=34}"> 
                <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	           <c:out value="${estado.consultorio}"/>
                </option>
               </c:if>       
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
           <input type="hidden" name='tipo_medico'      value='<c:out value="${tipo_medico}"/>'>
           <input type="hidden" name="resvig"           value='<c:out value="${resvig}"/>'>
       </td>
       </tr>    
        <tr>
        <td class="etiqueta">Medico <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>
        <td>
          <SELECT NAME="id_persona">
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 


       

   </table>
 </center>
 <center>
  
  <input type="submit" name='accion1' class="siguiente" value='Aceptar' onclick="document.adicionapaciente.action='<c:url value="/GrabarPaciente.do"/>';">
  <br>
  <br>
  
 </center>
  
 <input type="hidden" name='id_personat'      value='<c:out value="${id_personat}"/>'>
 <input type="hidden" name='id_consultoriot'  value='<c:out value="${id_consultoriot}"/>'>
 <input type="hidden" name='acciont'          value='<c:out value="${acciont}"/>'>
 <input type="hidden" name="diaa"              value='<c:out value="${dia}"/>'>
 <input type="hidden" name='mesa'              value='<c:out value="${mes}"/>'>
 <input type="hidden" name='anioa'             value='<c:out value="${anio}"/>'>
 <input type="hidden" name='horaa'             value='<c:out value="${hora}"/>'>
 <input type="hidden" name='minutoa'           value='<c:out value="${minuto}"/>'>
 <input type="hidden" name="diab"              value='<c:out value="${dia2}"/>'>
 <input type="hidden" name='mesb'              value='<c:out value="${mes2}"/>'>
 <input type="hidden" name='aniob'             value='<c:out value="${anio2}"/>'>
 <input type="hidden" name='horab'             value='<c:out value="${hora2}"/>'>
 <input type="hidden" name='minutob'           value='<c:out value="${minuto2}"/>'>
 
</form>
</td>
 
 </tr>
 </table>



  
<table class="tabla">
   <tr>
      <th> NRO </th>
      <th> FECHA </th>
      <th> HCL </th>
      <th> Matricula </th>
      <th> COD </th>
      <th> Carnet </th>
      <th> PACIENTE </th>
      <th> Edad </th>
      <th> CONSULTORIO </th> 
      <th> TIPO </th> 
      <th> MEDICO </th> 
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center">
        <c:out value="${contador.count}"/>
       </td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nombres}"/></td> 
       <td><c:out value="${lista.edad_ini}"/></td>
       <td style="font-size:10pt;color:blue"><c:out value="${lista.consultorio}"/></td>    
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
           <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
      <c:forEach var="listacount" items="${milistaCount}">
          <c:if test="${listacount.id_persona==lista.id_persona}"> 
                <td><c:out value="${lista.nombre}"/>_<font color="red"><c:out value="${listacount.suma1}"/></font></td>  
          </c:if> 
      </c:forEach>

   
   </c:forEach>
</table>
 