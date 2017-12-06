<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarAtendidos.do'>Volver</a></div>

<form name="forma" method="POST" action='<c:url value="/ListaNReceta.do"/>'>
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
        <th colspan="3" bgcolor="#F2F2F2"><font size=4><center>Entregar Medicamentoss al Paciente </center></font></th>
      </tr>    
      <tr>  
         <td align="right" bgcolor="#F2F2F2">Fecha Receta:  </td>
         <td>
          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
          <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
          </td>
      </tr>
      <c:if test="${swb == 'Botiquin'}">
       <tr>    
         <td align="right" bgcolor="#F2F2F2">Nombres / Servicio / Puesto:  </td>    
         <td><div class="form-inline"><input class="form-control" type="text" name="nombres" value="<c:out value = "${nombre}"/>" size="50" placeholder="Nombre / Servicio..." /></div></td>
       </tr> 
       <tr>
        <td align="right" bgcolor="#F2F2F2">Consultorio:  </td>      
        <td>	
          <SELECT NAME="id_consultorio" onchange="javascript:document.forma.submit();">
            <option value="0">-- seleccione --</option>
       	    <c:forEach var="pas" items="${listaCargos}">
              <option value="<c:out value="${pas.id_consultorio}"/>" <c:if test="${pas.id_consultorio == id_consultorio}">selected</c:if>>
	         <c:out value="${pas.consultorio}"/>
               </option>  
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">Medico:  </td>
        <td>
          <SELECT NAME="id_persona" >
            <option value="0">-- seleccione --</option>
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>__<c:out value="${perso.codigoprof}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
             <input type="hidden" name='swb'           value='<c:out value="${swb}"/>'>
        </td>
      </tr> 
      <c:if test="${cod_esta != '200010'}">
        <tr>    
             <td align="right" bgcolor="#F2F2F2">Farmacia:</td>    	       
             <td>
             <SELECT NAME="expedido" >
                    <option value="SUMI" selected> Ley 475(SPS) </option>
                    <option value="PROGRAMA" > Programas </option>
                    <option value="VENTA" > Fondo Rotatorio </option> 
              </SELECT>           
             </td>
          </tr>
        </c:if>   
        <c:if test="${cod_esta == '200010'}">
           <tr>
            <td align="right" bgcolor="#F2F2F2">Tipo:  </td>	      
            <td>
              <SELECT NAME="tipo">
                  <c:if test="${tipo=='M'}">
                      <option value="M" selected>M_Multiple</option>
                      <option value="I">I_Internacion</option>  
                      <option value="E">E_Const.Externa</option>
                  </c:if>
                  <c:if test="${tipo=='E'}">
                      <option value="E" selected>E_Const.Externa</option> 
                      <option value="M">M_Multiple</option>   
                     <option value="I">I_Internacion</option>
                  </c:if>
                  <c:if test="${tipo=='I'}">
                      <option value="I" selected>I_Internacion</option> 
                      <option value="M">M_Multiple</option>    
                      <option value="E">E_Const.Externa</option>
                  </c:if>
                  <c:if test="${tipo!='M' and tipo!='I'}">
                      <option value="M" selected>M_Multiple</option>
                      <option value="I">I_Internacion</option>   

                  </c:if>
              </SELECT>  
            </td>
          </tr>  
       </c:if>
          <tr>    
            <td align="right" bgcolor="#F2F2F2">Nro Documento: </td>    	      
            <td><div class="form-inline"><input class="form-control" type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=60 /></div></td>
          </tr>        
      </c:if>
      <c:if test="${swb != 'Botiquin'}">
          <tr>    
            <td align="right" bgcolor="#F2F2F2">Nombres paciente: </td>    
            <td><div class="form-inline"><input class="form-control" type="text" name="nombres" value="" size="50" placeholder="Nombre / Servicio..." /></div></td>
          </tr>  
      <c:if test="${cod_esta != '200010'}">
          <tr>    
            <td align="right" bgcolor="#F2F2F2">Nro Documento: </td>    	      
            <td><div class="form-inline"><input class="form-control" type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=60/></div></td>
          </tr>
      </c:if>     
      <c:if test="${cod_esta == '200010' }">
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Matricula paciente: </td>          
        <td><input type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" maxlength=60/>
                <SELECT NAME="cod"><c:forEach var="lcod" items="${listarCod}">
                  <option value="<c:out value="${lcod.descripcion}"/>" <c:if test="${lcod.descripcion == cod}">selected</c:if>> 
                    <c:out value="${lcod.descripcion}"/>
                  </option>
                </c:forEach></SELECT>
        </td>
      </tr> 
       <tr>    
        <td align="right" bgcolor="#F2F2F2">Matricula Medico:  </td>    	      
        <td><div class="form-inline"><input class="form-control" type="text" name="medico" value="0" maxlength=60/></div></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Tipo:  </td>	      
        <td>
          <SELECT NAME="tipo" >
            <c:forEach var="listatip" items="${listarTipReceta}">
               <option value="<c:out value="${listatip.descripcion}"/>" <c:if test="${listatip.descripcion == tiporecet}">selected</c:if>>
	         <c:out value="${listatip.descripcion}"/>__<c:out value="${listatip.consultorio}"/>
               </option>
            </c:forEach>
           </SELECT>	
       </td>
       </tr>
       </c:if>
     </c:if>  
    </table>

<center>
  <td><input type="submit" class="btn btn-primary btn-lg" value='Siguiente' ></td>
</center>
   <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
   <input type="hidden" name='accion'       value='<c:out value="entregarya"/>'>
   <input type="hidden" name='accionb'      value='<c:out value="${accionb}"/>'>
   <input type="hidden" name='swb'           value='<c:out value="${swb}"/>'>
   <input type="hidden" name='sw'           value='<c:out value="${sw}"/>'>
</form>
