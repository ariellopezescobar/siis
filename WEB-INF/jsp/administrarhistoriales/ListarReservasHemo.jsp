<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Pacientes en Lista de Espera Hemodialisis</div>
  
<table class="tabla">
  <tr>
    <th> No </th>
    <th> FECHA </th>
    <th> C.I. </th>
    <th> Matricula </th>
    <th> Telefono </th>
    <th> Empresa </th>
    <th> NOMBRES PACIENTE </th>
    <th> Edad </th>
    <th> TIPO </th>
    <th> CONSULTORIO </th>        
    <th> MEDICO </th>
    <th> TRIAJE </th>
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <form name=formaEq<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservas.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaEq<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                           
         <input type="hidden" name="accion1" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><font color="blue">&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></font></td>       
       <td><c:out value="${fn:substring(lista.carnet,0,8)}"/></td> 
       <td><c:out value="${lista.nro_registro}"/></td> 
       <td><c:out value="${lista.telefono}"/></td> 
       <td style="color:narrow"><c:out value="${fn:substring(lista.cadena1,0,25)}"/></td> 
       <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b></td>  
       <form name=formaHR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaHR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad_ini}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
       
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">Ley475</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
          <td align="center" style="color:blue"><c:out value="${lista.seguro}"/></td>
      </c:if>

      <c:if test="${lista.id_persona == 0 }">
             <td><c:out value="${lista.consultorio}"/></td>
       </c:if>
       <c:if test="${lista.id_persona != 0 }">
          <c:forEach var="listaPer" items="${listarPersonas}">
             <c:if test="${lista.id_persona==listaPer.id_persona}"> 
                <td>Interconsulta:<font color="green"><c:out value="${listaPer.nombres}"/></font></td>
             </c:if>  
          </c:forEach> 
      </c:if>
      <td><c:out value="${fn:substring(lista.nombre,0,25)}"/></td> 
      <c:if test="${lista.id_tipo == '1' }">
               <td style="font-size:14pt; color:red">Rojo-Inmediato</td>
     </c:if> 
     <c:if test="${lista.id_tipo == '2' }">
               <td  style="font-size:13pt; color:orange">Naranja-15min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '3' }">
               <td  style="font-size:13pt; color:yellow">Amarillo-<font color="black">60min</font></td>
     </c:if>
     <c:if test="${lista.id_tipo == '4' }">
               <td  style="font-size:13pt; color:green">Verde-120min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '5' }">
               <td  style="font-size:13pt; color:blue">Azul-240min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '0' }">
               <td>Normal</td>
     </c:if>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td >     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion"    value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona"        value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio"    value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"       value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido"          value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion"            value='Consultar' >
	 <input type="hidden" name="sw"                value='1' >
       </td>
     </form>
   </c:forEach>
</table>



<div style="font-size:15pt"> Pacientes en Evaluacion en Hemodialisis</div>
 <br>
   
<table class="tabla">
  <tr>
    <th> No </th>
    <th> FECHA </th>
    <th> C.I. </th>
    <th> Matricula </th>
    <th> Telefono </th>
    <th> PACIENTE </th>
    <th> EDAD </th>
    <th> TIPO </th>    
    <th> RECETA </th>    
    <th> Ley475 </th>    
    <th> C-1 </th>    
    <th> ExC </th>
    <th> Servicio </th>
    <th> Medico </th>
    <th> MODIFICAR </th>
  </tr>  
    
   <c:forEach var="listae" items="${listarObservacion}" varStatus="contadore">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contadore.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contadore.count}"/></td>
       <td><fmt:formatDate value="${listae.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<b><fmt:formatDate value="${listae.fecha}" pattern='HH:mm'/></b></td>       
       <td><c:out value="${fn:substring(listae.cadena2,0,8)}"/></td>
       <td><c:out value="${listae.cadena3}"/></td>
       <td><c:out value="${listae.cadena5}"/></td>
       <c:if test="${listae.rango==1}">
           <td><b><c:out value="${fn:substring(listae.nombres,0,30)}"/></b><font color="red">.Emergencia</font></td>   
       </c:if>    
       <c:if test="${listae.rango!=1}">
           <td><b><c:out value="${fn:substring(listae.nombres,0,30)}"/></b></td>   
       </c:if>    
       <form name=formaH2<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH2<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial'>
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    <c:if test="${listae.expedido=='S'}">
         <form name=formaHA<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contadore.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center">  Externo   </td>
    </c:if>
    <c:forEach var="listaInt" items="${listaPacAfi}">
      <c:if test="${listae.expedido=='P' and listae.id_seguro==listaInt.id_seguro}"> 
         <td align="center" style="color:blue"><c:out value="${listaInt.seguro}"/> </td>
      </c:if>  
    </c:forEach> 
       <form name=formaReceta<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.formaReceta<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.edad_ini}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='RecetaT' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>     
    <c:if test="${listae.expedido=='S' and listae.edad_fin>0}"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='S' and listae.edad_fin<=0}"> 
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='E' and listae.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='P' }"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
       <form name=forma1P<c:out value="${contadore.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
              <th align="center">     
                  <div><center><a href="javascript:document.forma1P<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.id_tipo_documento}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno1' >
              </th>
       </form><!--Fin de cuaderno1 individual  -->
       <td align="center"><c:out value="${listae.suma2}"/></td>
       <td><c:out value="${listae.cadena}"/></td>
       <td><c:out value="${listae.nombre}"/></td>
       
         <form name=formaMaao<c:out value="${contadore.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaao<c:out value="${contadore.count}"/>.submit();">Internado</a></div>
             <input type="hidden" name="id_reservacion" value=<c:out value="${listae.id_historial}"/> >
             <input type="hidden" name="id_persona"     value=<c:out value="${listae.id_persona}"/> >         
             <input type="hidden" name="id_consultorio" value=<c:out value="${listae.id_consultorio}"/> >         
             <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
             <input type="hidden" name="expedido"       value=<c:out value="${listae.expedido}"/> >         
             <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >         
             <input type="hidden" name="accion"         value='Internado' >
             <input type="hidden" name="sw1"            value='actualiza' >
             <input type="hidden" name="swinter"        value='inter' >
           </td>
         </form>
      
   </c:forEach>
</table>