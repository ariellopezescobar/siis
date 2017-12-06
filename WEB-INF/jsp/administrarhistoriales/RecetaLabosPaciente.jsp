<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="formulario">
  <tr>
    <th colspan="3">IMPRIMIR RECETAS Y LABORATORIOS DEL PACIENTE</th>
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
        <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
      </tr>  
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td class="etiqueta">Factores de Riesgo</td>    
            <td class="etiqueta">::</td>	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
 <table border="2">  
 <tr>

 <td>     
  <form name=formaRet method=post action='<c:url value="ListarAteVigencia.do"/>'>
  <td colspan="2">
     <div class="volver"><a href="javascript:document.formaRet.submit();">Volver</a></div></td>
      <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
  </form></td>

  <td><form name=formaImp method=post action='<c:url value="/RecetarPaciente.do"/>'>
      <td colspan="2">
      <div class="imprimir"><a href="javascript:document.formaImp.submit();">Imprimir</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='Receta'>
     </form></td>
  </tr>    
  </table>   
  <table class="tabla">
     <tr>
        <th> No </th>
        <th> MEDICAMENTO </th>
        <th> FORMA </th>
        <th> Concentra </th>    
        <th> Cant </th>
        <th> Costo<br>Unid. </th>
        <th> Total </th>
      </tr>  
    <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.medicamento}"/></td>      
       <td><c:out value="${listado.forma_far}"/></td>      
       <td><c:out value="${listado.concentra}"/></td>      
       <td style="font-size: 13pt"><c:out value="${listado.salida}"/></td>
       <td><c:out value="${listado.indicacion}"/></td>  
       <c:if test="${listado.id_estado=='C' or listado.id_estado=='B'}">  
              <td style="color:blue">Entregado</td>   
       </c:if>
       <c:if test="${listado.id_estado!='C' and listado.id_estado!='B'}">  
             <td style="color:blue">Por Entregar</td> 
       </c:if>
   </c:forEach>
   
   </table>
   
    </td>
  
 
    
 <td width="50%" valign="top">
 <table border="2">  
 <tr> <td>     
  <form name=formaRet2 method=post action='<c:url value="ListarAteVigencia.do"/>'>
  <td colspan="2">
     <div class="volver"><a href="javascript:document.formaRet2.submit();">Volver</a></div></td>
      <input type="hidden" name='id_historial'    value='<c:out value="${id_reservacion}"/>'>  
      <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
      <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'>
      <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
  </form></td>

  <td><form name=formaImp2 method=post action='<c:url value="/Laboratorio.do"/>'>
      <td colspan="2">
      <div class="imprimir"><a href="javascript:document.formaImp2.submit();">Imprimir</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='ImprimirLab'>
     </form></td>
  </tr>    
  </table> 
  
    <table class="tabla">
      <tr>
        <th> NRO </th>
        <th> ID </th>
        <th> LABORATORIO </th>
        <th> INDICACION </th>
        <th> ELIMINAR </th> 
      </tr> 
    <c:forEach var="lista" items="${listalab}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center" style="font-size:8px"><c:out value="${lista.id_laboratorio}"/></td>
       <td align="center"><c:out value="${lista.laboratorio}"/></td>
       <td align="center"><c:out value="${lista.tipoconsulta}"/></td>
       <c:if test="${lista.id_estado=='B'}">
           <td align="center" style="color:red">Realizado</td>
       </c:if>    
       <c:if test="${lista.id_estado=='A' or lista.id_estado=='X' or lista.id_estado=='Y' or lista.id_estado=='G'}">    <!--G los tienen que pagar externos-->
           <td align="center" style="color:blue">Sin Realizar</td>
     </c:if>
   </c:forEach>
   
   </table>
  
 

   </td>
   </tr>
 </table>
