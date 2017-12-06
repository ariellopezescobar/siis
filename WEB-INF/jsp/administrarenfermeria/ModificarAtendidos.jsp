<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<div style="font-size:15pt"> Modificar Datos Paciente</div>


<div><a class="volver" href='ListarCobroEnfermeria.do'>Volver</a></div>
<br>

<form name="adicionarpaciente" method="POST" action='<c:url value="/Cuaderno6.do"/>'>
    <table class="formulario" >
      <tr>
        <th colspan="3"><font size=2>DATOS PERSONALES </font></th>
      </tr>    
   
      <tr>    
        <td class="etiqueta">Nombres <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>
        <td><input type="text" name="nombresx" value="<c:out value = "${nombres}"/>" size="30" onblur='validar(nombre,"A")'/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Sexo <font color='red'>(*)</font> </td>
        <td class="etiqueta">::</td>	      
        <td><input type="text" name="id_sexox" value="<c:out value = "${id_sexo}"/>" maxlength=60/></td>
      </tr> 
  
      <tr>    
        <td class="etiqueta">Edad <font color='red'>(*)</font> </td>    
        <td class="etiqueta">::</td>	      
        <td><input type="text" name="edadx" value="<c:out value = "${edad}"/>" maxlength=60/></td>
      </tr>    
      
    </table>
<div style="font-size:15pt"> Datos del Cuaderno #6</div>
    
<table class="tabla">
  <tr>
    
    <th> NRO </th>
    <th> TRATAMIENTO </th>
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
       <table>
            <c:if test="${lista.estado != ''}">
           <tr>    
              <td>Diag. Ingreso</td>   
              <td><c:out value="${lista.estado}"/></td>   
           </tr>
            </c:if>
           <c:if test="${lista.laboratorio != ''}">
           <tr>    
              <td>Tratamiento</td>   
              <td><c:out value="${lista.laboratorio}"/></td>   
           </tr>
            </c:if>
           <c:if test="${lista.resultado != ''}">
           <tr>    
              <td>Diag. Egreso</td>   
              <td><c:out value="${lista.resultado}"/></td>   
           </tr>
            </c:if>
           <c:if test="${lista.suma1 == 1}">
           <tr>    
              <td>Edad</td>   
              <td>Menor de 5 años</td>   
           </tr>
           </c:if> 
           <c:if test="${lista.suma2 == 1}">
             <tr>    
              <td>Edad</td>   
              <td>Persona de 5 a 14 años</td>
             </tr>                 
           </c:if> 
           <c:if test="${lista.suma3 == 1}">
             <tr>    
              <td>Edad</td>   
              <td>Persona de 15 a 59 años</td> 
             </tr>             
           </c:if> 
           <c:if test="${lista.suma4 == 1}">
             <tr>    
              <td>Edad</td>   
              <td>Persona de 60 años o mas</td>  
             </tr>
           </c:if> 
           <c:if test="${lista.inyectable != 0}">
            <tr>    
              <td>Inyectable</td>    
              <td><c:out value="${lista.inyectable}"/></td> 
             </tr>             
           </c:if> 
           <c:if test="${lista.sueros != 0}">
            <tr>    
              <td>Suero</td>     
              <td><c:out value="${lista.sueros}"/></td> 
             </tr>                  
           </c:if> 
           <c:if test="${lista.curaciones != 0}">
             <tr>    
              <td>Curacion</td>     
              <td><c:out value="${lista.curaciones}"/></td> 
             </tr>                
           </c:if> 
           <tr>    
              <td>Situacion al Egreso</td>     
              <td><c:out value="${lista.tipo}"/></td>  
           </tr>
            <c:if test="${lista.tipo == 'M'}">
             <tr>    
              <td>Causa Fallecimiento</td>     
             <c:if test="${lista.tipoconsulta == 0}">
               <td>Ninguno</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 1}">
               <td>de R.N. Menor de 7 dias</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 2}">
  	       <td>Por Diarrea en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 3}">
               <td>Por Neumonia en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 4}">
  	       <td>Por otras causas en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 5}">
               <td>Por otras causas en >= 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 6}">
               <td>Muerte Materna</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 7}">
               <td>Muerte Materna (P. falciparum)</td>
              </c:if>
             
             </tr>                
           </c:if> 
              
       </table>
       </td>
   </c:forEach>
</table>

<c:if test="${sw == 'S'}">
   <div style="font-size:15pt">Prestaciones Dadas</div>
  <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> PRESTACION </th>
    <th> DESCRIPCION </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr bgColor="#FFFFD9" onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.prestacion}"/></td>      
       <td><c:out value="${listado.descripcion}"/></td>             
     
     </tr>
   
   </c:forEach>

    </table>
</c:if>
<center>
     <input type="submit" class="siguiente" value='Modificar' ></td>
</center>

  <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
  <input type="hidden" name='id_paciente' value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_reservacion' value='<c:out value="${id_reservacion}"/>'>
  <input type="hidden" name='id_persona' value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
  <input type="hidden" name="edad" value=<c:out value="${edad}"/> >                               
  <input type="hidden" name="id_sexo" value=<c:out value="${id_sexo}"/> >                                            
  <input type="hidden" name="nombres" value="<c:out value="${nombres}"/>" >  
  <input type="hidden" name='id_estado' value='<c:out value="${id_estado}"/>'>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
</form>


