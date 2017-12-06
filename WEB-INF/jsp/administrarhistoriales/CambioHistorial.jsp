<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>


<form name="adicionacat" method="POST" action='<c:url value="/ListarHistorial.do"/>' >
    <table class="table table-striped table-bordered table-condensed table-responsive">
      <tr>
        <th colspan="3"><font size=4><center>CAMBIAR DATOS DEL HISTORIAL </center></font></th>
      </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${hcl}"/> - <c:out value = "${nombres}"/></td>
      </tr>   
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha Atencion </td>    
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
            <input type="text" name="hora" value="<c:out value="${hora}"/>" maxlength=2 size=2 onblur=validarNota(hora, 1, 59)>:
            <input type="text" name="minuto" value="<c:out value="${minuto}"/>" maxlength=2 size=2 onblur=validarNota(minuto, 1, 59)> hh:mm
        </td>	                 
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Receta (Entregada B,No Entregada A)</td>
        <td><SELECT NAME="id_estado">
              <OPTION value="A" <c:if test="${id_estado=='A'}">selected</c:if>> 
	        No Entregada (A)
	      </option>
              <OPTION value="B" <c:if test="${id_estado=='B'}">selected</c:if>> 
	        Entregada (B)
	      </option>
          </SELECT></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Tipo de Afiliacion</td>
        <td><SELECT NAME="tipo" >
              <c:forEach var="estado" items="${listarSeguros}">
	      <OPTION value="<c:out value="${estado.id_seguro}"/>" <c:if test="${estado.id_seguro== id_seguro}">selected</c:if>> 
	        <c:out value="${estado.seguro}"/>
              </option>
            </c:forEach>
           </SELECT>	
        </td>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">EDAD</td>
        <td><input type="text" name="edad" value="<c:out value = "${edad}"/>" maxlength=2 size=2/></td>            
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Consultorio</td>
        <td><SELECT NAME="id_consultorio" onchange="javascript:document.adicionacat.submit();">
            <c:forEach var="estado" items="${listarCargos}">
                <option value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>>
	           <c:out value="${estado.consultorio}"/>
                </option>
            </c:forEach>
            <input type="hidden" name='id_paciente' value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name='accion'      value='Estado'>
           </SELECT>	
        </td>
      </tr>  
      <tr>
        <td align="right" bgcolor="#F2F2F2">Atendido Por</td>
        <td><SELECT NAME="id_persona" >
            <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>__{<c:out value="${perso.id_persona}"/>}<c:out value="${perso.consultorio}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>
      </tr>  
       <tr>
        <td align="right" bgcolor="#F2F2F2">Estado Internacion</td>
        <td><SELECT NAME="internar">
              <OPTION value="0" <c:if test="${id_cargo=='0'}">selected</c:if>> 
	        No Internado
	      </option>
              <OPTION value="1" <c:if test="${id_cargo=='1'}">selected</c:if>> 
	        Paciente Emergencias
	      </option>
              <OPTION value="2" <c:if test="${id_cargo=='2'}">selected</c:if>> 
	        Internado Actualmente
	      </option>
              <OPTION value="3" <c:if test="${id_cargo=='3'}">selected</c:if>> 
	        Dado de Alta
	      </option>
              <OPTION value="4" <c:if test="${id_cargo=='4'}">selected</c:if>> 
	        En quirofano
	      </option>
              <OPTION value="5" <c:if test="${id_cargo=='5'}">selected</c:if>> 
	        Post Quirofano
	      </option>
              <OPTION value="6" <c:if test="${id_cargo=='6'}">selected</c:if>> 
	        Observacion emergencias
	      </option>
              <OPTION value="7" <c:if test="${id_cargo=='7'}">selected</c:if>> 
	        Observacion Hemodialisis
	      </option>
              <OPTION value="8" <c:if test="${id_cargo=='8'}">selected</c:if>> 
	        Internado por Sistema
	      </option>
              <OPTION value="9" <c:if test="${id_cargo=='9'}">selected</c:if>> 
	        Alta por sistea
	      </option>
              <OPTION value="10" <c:if test="${id_cargo=='10'}">selected</c:if>> 
	        Alta por Vigencia
	      </option>
              <OPTION value="11" <c:if test="${id_cargo=='11'}">selected</c:if>> 
	        Alta por Enfermeria
	      </option>
              <OPTION value="12" <c:if test="${id_cargo=='12'}">selected</c:if>> 
	        Alta por Farmacia
	      </option>
              <OPTION value="13" <c:if test="${id_cargo=='13'}">selected</c:if>> 
	        Internado por Vigencia
	      </option>
              <OPTION value="14" <c:if test="${id_cargo=='14'}">selected</c:if>> 
	        Internado por Farmacia
	      </option>
          </SELECT></td>
      </tr>  
    </table>
<center>
  <input type="submit" class="btn btn-primary btn-lg" value='Cambiar' onclick="document.adicionacat.accion2.value='Cambiar';
                                           document.adicionacat.action='<c:url value="/ListarHistorial.do"/>'">   
  
                                           
                                           
</center>
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='accion'       value='<c:out value="${accion}"/>'>
  <input type="hidden" name='accion2'      value="Cambiar">
</form>
