<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarInternados.do'>Volver</a></div>

<form name="adicionacat" method="POST" action='<c:url value="/ConfirmarCama.do"/>' >     
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th colspan="3" bgcolor="#F2F2F2"><center>ASIGNACION DE SALAS Y CAMAS</center> </th>
    </tr>
    <tr>    
        <td  align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${nombres}"/></td>
      </tr>
      <tr>
        <td  align="right" bgcolor="#F2F2F2">Especialidad  </td>	      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.adicionacat.submit();">
	    <option value="">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_cargo!=3 and estado.id_especialidad!=99 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1 and estado.id_cargo!=11 and estado.id_cargo!=99}">   
                  <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	              <c:out value="${estado.consultorio}"/>
                  </option>
                 </c:if>    
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
           <input type="hidden" name='cod_esta'        value='<c:out value="${cod_esta}"/>'>
       </td>
       </tr>
        <tr>
        <td  align="right" bgcolor="#F2F2F2">Medico  </td>
        <td>
          <SELECT NAME="id_persona" >
            <option value="">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	           <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
          <input type="hidden" name='id_persona'  value='<c:out value="${id_persona}"/>'>
        </td>
      </tr>
    <tr>
        <td  align="right" bgcolor="#F2F2F2">Listar Pisos  </td>	      
        <td>
          <SELECT NAME="id_piso" onchange="javascript:document.adicionacat.submit();">
	    <option value="0">-- Sin piso --</option>
            <c:forEach var="lispiso" items="${listarPisos}">
	      <OPTION value="<c:out value="${lispiso.id_piso}"/>" <c:if test="${lispiso.id_piso == id_piso}">selected</c:if>> 
	        <c:out value="${lispiso.piso}"/>
	      </option>
	    </c:forEach>
             <input type="hidden" name='swv'           value='XXX'>
           </SELECT>	
        </td>       
   </tr>      
   <tr>
        <td  align="right" bgcolor="#F2F2F2">Listar Salas  </td>      
        <td>
          <SELECT NAME="id_sala" onchange="javascript:document.adicionacat.submit();">
	    <option value="0">-- Sin sala --</option>
            <c:forEach var="estado" items="${listarSalas}">    
	         <OPTION value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>> 
	             <c:out value="${estado.sala}"/>
	         </option>
	    </c:forEach>
             <input type="hidden" name='swv'           value='XXX'>
           </SELECT>	
        </td>       
   </tr>      
  <tr>
        <td  align="right" bgcolor="#F2F2F2">Buscar Cama  </td>     
        <td>
          <SELECT NAME="id_cama">
            <option value="0">-- Sin cama --</option>  
            <c:forEach var="estado" items="${listarCama}">
	      <OPTION value="<c:out value="${estado.id_cama}"/>" <c:if test="${estado.id_cama == id_cama}">selected</c:if>> 
	        <c:out value="${estado.cama}"/>
	      </option>
	    </c:forEach>    
           </SELECT>	
        </td>        
   </tr> 
   <tr>
        <td  align="right" bgcolor="#F2F2F2">Estado Internado </td>	      
        <td>
          <SELECT NAME="tipo_inter">
	       <option value="2">Internado Actualmente</option>
               <option value="5">en Quirofano</option>
               <option value="6">Post Oparatorio</option>
           </SELECT>	
        </td>        
   </tr> 
    
  </table>
  <center>
   <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionacat.accion2.value='Guardar';
                                           document.adicionacat.action='<c:url value="/ConfirmarCamaMod.do"/>'">                                       
   <!--dd -->                                         
                                                                       
  </center>
     <input type="hidden" name='id_sala2'      value='<c:out value="${id_sala2}"/>'>  
     <input type="hidden" name='id_cama2'      value='<c:out value="${id_cama2}"/>'>  
     <input type="hidden" name='id_piso2'      value='<c:out value="${id_piso2}"/>'> 
     <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>    
     <input type="hidden" name='id_historia'  value='<c:out value="${id_historia}"/>'>
     <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'>
     <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
     <input type="hidden" name='sw'           value='<c:out value="${sw}"/>'>    
     <input type="hidden" name='swv'           value='YYY'>
     <input type="hidden" name='accion'       value='<c:out value="${accion}"/>'>
     <input type="hidden" name='camaactual'   value='<c:out value="${camaactual}"/>'>
     <input type="hidden" name='accionc'      value='<c:out value="${accionc}"/>'>
     <input type="hidden" name='accion2'      value='<c:out value="${accion2}"/>'>
     <input type="hidden" name='nombres'      value='<c:out value="${nombres}"/>'>  
     <input type="hidden" name='id_cama'      value='<c:out value="${buscarCama.id_cama}"/>'>
     <input type="hidden" name='recargado'    value='Si'>
    
</form>
