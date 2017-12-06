<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<center>
<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarSignosReserva.do"/>' >
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3" style="font-size:12pt">Signos Vitales segun Pacientes Consultorios</th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <tr>	
        <td align="right">Servicio  </td>	      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.listarreservasconsul.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_cargo!=3 and estado.id_cargo!=15 and estado.id_cargo!=7 and estado.id_cargo!=34 and estado.id_cargo!=33 and estado.id_cargo!=1}"> 
	           <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>
	            </option>
                </c:if>      
	    </c:forEach>
           </SELECT>	
        </td>
       
        <td align="right">Medico </td>
        <td>
          <SELECT NAME="id_persona"  onchange="javascript:document.listarreservasconsul.submit();">
            <option value="0">-- seleccione --  
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>              
      </tr> 
   </table>
  </td>
  </tr>
 </table>
</center>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</form> 
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th> No </th>
    <th> FECHA </th>
    <th> PACIENTE </th>
    <th> SEGURO </th>
    <th> CONSULTORIO </th>    
    <th> MEDICO </th>   
    <th> ATENDER </th>
    </tr>  
   <c:forEach var="lista" items="${milistasig}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
     <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/>&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue" align="center">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red" align="center">SUMI</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
          <td align="center"><c:out value="${lista.seguro}"/></td> 
      </c:if>
       <td><c:out value="${lista.consultorio}"/></td>  
       <td><c:out value="${lista.nombre}"/></td> 
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/SignosPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-primary btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>