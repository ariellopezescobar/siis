<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Seleccione Jefe de Familia</div>

<form name=formaBN method=post action='<c:url value="/NuevoCarpeta.do"/>'>
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
                <td class="etiqueta">SUMI </td>
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

<form name=formaBH method=post action='<c:url value="/NuevoCarpeta.do"/>'>
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

 <table class="tabla">
      <tr>
          <th> NRO </th>
          <th> HCL </th>
          <th> NOMBRE </th>
          <th> FECHA<br>NACIMIENTO </th>                
          <th> ESTADO </th>                
          <th> CREAR CARPETA </th>         
      </tr>  
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <!-- ********** Esto es para el efecto ************ -->
          <c:if test="${lista.id_carpeta == 0}">
          <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
              <td align="center"><c:out value="${contador.count}"/></td>
          <td><c:out value="${lista.hcl}"/></td>  
          
          <td><c:out value="${lista.nombres}"/></td> 
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
          <td><c:out value="${lista.id_estado}"/></td>        
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCarpeta.do"/>'>
                  <td>     
                      <div class="agregar"><a href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Afiliar</a></div>
                      <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >
                      <input type="hidden" name="accion" value='Adicionar' >                    
                  </td>
              </form>
          </c:if> 
       </c:forEach>  
   </table>
  
