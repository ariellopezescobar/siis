<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Pacientes</div>
<br>
 
<form name=formaBN method=post action='<c:url value="/ListarPacientesFar.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
    <td>  
    <fieldset>
      <legend align=center>Nombre del Paciente</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nombres
          <td class=colh>::
          <td class=colb><input type=text name=nombre onblur='validar(nombre,"A")'>
	  <td coslpan=3><input type="submit" name=boton value="BuscarN"></td>
        </tr> 
        <tr >
            <td colspan="4">
            <table>  
               <tr>
                <td><input type=radio  name="id_estado" value="%" checked >   </td>
                <td class="etiqueta">TODOS </td>
                <td class="etiqueta">::</td>
                <td><input type=radio  name="id_estado" value="S" >   </td>
                <td class="etiqueta">SIIS </td>
                <td class="etiqueta">::</td>
                <td><input type=radio name="id_estado" value="P" >   </td>
                <td class="etiqueta">Seguros </td>
                <td class="etiqueta">::</td>
               </tr>
            </table>
            </td>
        </tr>
      </table>
    </fieldset>
    </td>

    </td>
  </tr>
</table>
</form>

<form name=formaBH method=post action='<c:url value="/ListarPacientesFar.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
    <td>  
    <fieldset>
      <legend align=center>HCL del Paciente</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Historia Clinica
          <td class=colh>::
          <td class=colb><input type=text name=hcl onblur='validar(hcl,"9")'>
	  <td coslpan=3><input type="submit" name=boton value="BuscarH"></td>
        </tr>  
      </table>
    </fieldset>
    </td>

    </td>
  </tr>
</table>
</form>

<form name=formaBF method=post action='<c:url value="/ListarPacientesFar.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
      <td>  
          <fieldset>
              <legend align=center>Fecha Nac. del Paciente</legend>
              <table border=0 align=center>
                  <tr>
                      <td align=right class=colh>Fecha Nacimiento
                      <td class=colh>::
                      <td class="colb">
                          <input type="text" name="dia"  maxlength=2 size=2 onblur='validarNota(dia,1,31)'/>
                          <input type="text" name="mes"  maxlength=2 size=2 onblur='validarNota(mes,1,12)'/>
                          <input type="text" name="anio" maxlength=4 size=4 onblur='validarNota(anio,1900,2020)'/>dd-mm-aaaa 
                      </td>          
                      <td coslpan=3><input type="submit" name=boton value="BuscarF"></td>
                  </tr>  
              </table>
          </fieldset>
      </td>
      </td>
  </tr>
  </table>
  </form>
  
  <table class="tabla">
      <tr>
          <th> NRO </th>
          <th> HCL </th>
          <th> NOMBRE </th>
          <th> FECHA<br>NACIMIENTO </th>                
          <th> ESTADO </th>    
          <th> COBRAR </th> 
      </tr>  
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <!-- ********** Esto es para el efecto ************ -->
          <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
              <td align="center"><c:out value="${contador.count}"/></td> 
           <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
          <form name=formaR<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
              <td>     
                  <div class="aceptar"><a href="javascript:document.formaR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></a></div>
                  <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                      <input type="hidden" name="accion" value='Reservar' >
                  <input type="hidden" name="sw" value='1' >
              </td>
          </form>
          
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
          <td><c:out value="${lista.id_estado}"/></td> 
       
     <form name=formaEimpP<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesFar.do"/>'>
       <td>     
         <div class="agregar"><a href="javascript:document.formaEimpP<c:out value="${contador.count}"/>.submit();">Receta</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="accion" value='CobroReceta' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </c:forEach>  
      
  </table>
  
