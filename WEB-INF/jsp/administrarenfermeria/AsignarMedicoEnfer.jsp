<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>        

<table class="formulario" width="100%">
  <tr>
      <th colspan="3">ASIGNAR MEDICOS A ENFERMERA</th>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <table class="formulario" width="100%"> 
          <tr>    
            <td class="etiqueta">Nombres Completo</td>    
            <td class="etiqueta">::</td>
            <td><c:out value = "${nombres}"/></td>
          </tr> 
        </td>
       </tr> 
      </table>
 
 <table class="tabla">    
 <tr><td><form name=formaRet method=post action='<c:url value="/ListarReservasMedEnfer.do"/>'>
         <div class="volver"><a href="javascript:document.formaRet.submit();">Retornar</a></div>
 </form></td></tr>
 </table>
   
 <table class="tabla">
    <tr>
        <th> No </th>
        <th> Medico </th>
        <th> Eliminar </th>
     </tr> 
      <c:forEach var="estado" items="${listamedico}" varStatus="contador">
         <!-- 1********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- 2********** Fin  efecto ************ -->
           <td><c:out value="${contador.count}"/></td>
           <td><c:out value="${estado.nombres}"/></td>
         <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservasMedEnfer.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
             <input type="hidden" name='id_medico'      value='<c:out value="${estado.id_persona}"/>'>
             <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>' >  
             <input type="hidden" name="accion"         value='<c:out value="${accion}"/>' > 
             <input type="hidden" name="accion2"        value='eliminar' >
           </td>
         </form>
       </c:forEach>
 </table>       
 </td>
    <td width="50%" valign="top">
     <form name=formal action="<c:url value="/ListarReservasMedEnfer.do"/>" method="POST">        
         <table >
           <tr> 
                <td class="etiqueta">Servicio <font color='red'>(*)</font> </td>
                <td class="etiqueta">::</td>	      
                <td>
                  <SELECT NAME="id_consultorio" onchange="javascript:document.formal.submit();">
                    <option value="0">-- seleccione --</option>
                    <c:forEach var="estado" items="${listarCargos}">
                        <c:if test="${estado.id_especialidad!=99 and estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
                           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
                               <c:out value="${estado.consultorio}"/>
                            </option>
                        </c:if>      
                    </c:forEach>
                     <input type="hidden" name='accion'    value='<c:out value="${accion}"/>'>
                   </SELECT>	
                </td>
           </tr>    
         </table>
          <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>' >  
          <input type="hidden" name="accion"         value='<c:out value="${accion}"/>' >  
          <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
     </form>   
  
     
<table class="tabla">
   <tr>
        <th> No </th>
        <th> Medico </th>
        <th> Elegir </th>
    </tr>  
   <c:forEach var="listap" items="${listaPersonas}" varStatus="contador">
       <!-- ********** Esto es para el efecto ************ -->
          <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
       <!-- ********** Fin  efecto ************ -->
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${listap.nombres}"/></td>
   <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservasMedEnfer.do"/>'>  
       <td>     
         <div class="agregar"><a href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Adicionar</a></div>
          <input type="hidden" name='id_medico'      value='<c:out value="${listap.id_persona}"/>'>
          <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>' >  
          <input type="hidden" name="accion"         value='<c:out value="${accion}"/>' >  
          <input type="hidden" name="accion2"        value='adicion' >
       </td>
     </form>
     
   </c:forEach>
</table>
    </td>
  </tr>
</table>