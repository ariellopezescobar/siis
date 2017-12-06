<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<div><a class="btn btn-warning" href='ListarPacientesFar.do'>Volver</a></div>

<form name="adicionarpaciente" method="POST" action='<c:url value="/ListarAtendidos.do"/>' >    
    <table class="table table-bordered table-hover table-condensed table-responsive">
      <tr>
        <th colspan="2" bgcolor="#F2F2F2"><font size=2><center>Entregar Medicamentos al Paciente Farmacia </center></font></th>
      </tr>    
     <tr style="font-size:10pt">
       <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/>Matricula:&nbsp;<c:out value = "${datos.nro_registro}"/>&nbsp;&nbsp;&nbsp;Codigo:&nbsp;<c:out value = "${datos.nro}"/></td>
      </tr>
      <tr style="font-size:10pt">
       <td align="right" bgcolor="#F2F2F2">Direccion</td>
        <td><c:out value = "${datos.direccion}"/>Telefono:&nbsp;<c:out value = "${datos.telefono}"/>&nbsp;&nbsp;&nbsp;Carnet:&nbsp;<c:out value = "${datos.carnet}"/></td>
      </tr>
      <tr style="font-size:10pt">
       <td align="right"  bgcolor="#F2F2F2">Patronal</td>
        <td><c:out value = "${datopaci.registro}"/>Empresa:&nbsp;<c:out value = "${datopaci.resultado}"/></td>
      </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres </td>    
        <td style="color:blue;font-size:14pt"><c:out value = "${nombres}"/>__<c:out value = "${descrip}"/></td>
      </tr>    
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Tipo  </td>      
        <td>
          <SELECT NAME="tag" >
            <c:forEach var="listatip" items="${listarTipReceta}">
               <option value="<c:out value="${listatip.descripcion}"/>" <c:if test="${listatip.descripcion == tiporecet}">selected</c:if>>
	         <c:out value="${listatip.descripcion}"/>__<c:out value="${listatip.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
       </td>
       </tr>
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Servicio  </td>     
        <td>
          <SELECT NAME="servicio" >
            <c:forEach var="listaserv" items="${listarServicio}">
               <option value="<c:out value="${listaserv.descripcion}"/>" <c:if test="${listaserv.descripcion == descrip}">selected</c:if>>
	         <c:out value="${listaserv.consultorio}"/>__<c:out value="${listaserv.descripcion}"/>
               </option>
            </c:forEach>
           </SELECT>	
       </td>
     </tr>
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Centro  </td>      
        <td>
          <SELECT NAME="sig_centro" onchange="javascript:document.adicionarpaciente.submit();">
            <c:forEach var="listacentro" items="${listarCentros}">
               <option value="<c:out value="${listacentro.cod_esta}"/>" <c:if test="${listacentro.cod_esta == cod_esta}">selected</c:if>>
	         <c:out value="${listacentro.consultorio}"/>__<c:out value="${listacentro.descripcion}"/>
               </option>
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='codesta1'       value='<c:out value="${listacentro.cod_esta}"/>'>
           <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>
           <input type="hidden" name='id_consultorio' value='<c:out value="${id_consultorio}"/>'>
           <input type="hidden" name='accionest'      value='Establecimiento'>
       </td>
       </tr>

     <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Especialidad  </td>      
        <td>
          <SELECT NAME="especialidad" onchange="javascript:document.adicionarpaciente.submit();">
	    <option value="0">-- seleccione --</option>
            <c:forEach var="estado" items="${listarCargos}">
               <c:if test="${estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	          <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	             <c:out value="${estado.consultorio}"/>__<c:out value="${estado.descripcion}"/>
                  </option>
               </c:if>  
            </c:forEach>
           </SELECT>	
           <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='cod_esta'        value='<c:out value="${cod_esta}"/>'>
           <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
           <input type="hidden" name='accione'         value='especialidad'>
       </td>
       </tr>
        <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Medico  </td>
        <td>
          <SELECT NAME="codigoprof" >
            <option value="">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.codigoprof}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>__<c:out value="${perso.codigoprof}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
          <input type="hidden" name='id_persona'  value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
        </td>
      </tr>
    </table>

<center>
   <c:if test="${interfar!='interfar' }">  
       <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionarpaciente.action='<c:url value="/ListaReceta.do"/>'"></td>
   </c:if>
   <c:if test="${interfar=='interfar' }">  
       <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionarpaciente.action='<c:url value="/ListaRecetaI.do"/>'"></td>
   </c:if>   
</center>

  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
  <input type="hidden" name="expedido"     value='<c:out value="${expedido}"/>' >
  <input type="hidden" name="nombres"      value='<c:out value="${nombres}"/>' >
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_farmacia2' value='<c:out value="${id_farmacia2}"/>'>
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_historia'  value='<c:out value="${id_historia}"/>'>
  <input type="hidden" name='sig_centro'   value='<c:out value="${sig_centro}"/>'>
  <input type="hidden" name='id_doctor'    value='<c:out value="${id_doctor}"/>'>
  <input type="hidden" name='accion'       value='<c:out value="entregarya"/>'>
</form>