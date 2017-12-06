<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
<table>	     
<tr> 
 <td width="10%"></td>  
 <td width="80%">
 <form name="forma" method="POST" action='<c:url value="/ListarCamas.do"/>' >   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="2" bgcolor="#F2F2F2"><center>ADMINISTRACION DE SALAS / CAMAS</center></th>
    </tr>
    <tr>
     <td>
        <fieldset> 
            <table>	     
             <tr>
                <td class="etiqueta">Elegir Piso  </td>	      
                <td>
                  <SELECT NAME="id_piso2" onchange="javascript:document.forma.submit();">
                      <option value="0">-- Sin Piso --</option>     
                      <c:forEach var="estado" items="${listarPisos}">
                      <option value="<c:out value="${estado.id_piso}"/>" <c:if test="${estado.id_piso == id_piso2}">selected</c:if>>
                        <c:out value="${estado.piso}"/></option>
                      </c:forEach>
                  </SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
      <td>
        <fieldset> 
            <table>	     
             <tr>
                <td class="etiqueta">Elegir Sala  </td>	      
                <td>
                  <SELECT NAME="id_sala2" onchange="javascript:document.forma.submit();">
                    <option value="0">-- Sin Sala --</option>       
                    <c:forEach var="estado" items="${listarSalas}">
                      <option value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala2}">selected</c:if>>
                        <c:out value="${estado.sala}"/>
                      </option></c:forEach>
                  </SELECT>	
                  <input type="hidden" name="id_piso2"  value='<c:out value="${id_piso2}"/>'>
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
      
    </tr>
  </table>
</form>  
<td width="10%"></td> 
</td></tr>
</table>
</center>  

<!--
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoCama.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>
-->
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> ESTAB </th>
    <th bgcolor="#F2F2F2"> PISO </th>
    <th bgcolor="#F2F2F2"> SALA </th>
    <th bgcolor="#F2F2F2"> DESCRIPCION </th>
    <th bgcolor="#F2F2F2"> COSTO </th>    
    <th bgcolor="#F2F2F2"> Estado </th> 
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarCamasSala}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.cod_esta}"/></td>
       <td><c:out value="${lista.piso}"/></td>
       <td><c:out value="${lista.sala}"/></td>
       <td><c:out value="${lista.cama}"/></td>      
       <td><c:out value="${lista.cama_unit}"/></td>    
     <c:if test="${lista.estado=='0'}">
            <form name=formaM11<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarCamas.do"/>'>
           <td>     
             <div class="agregar"><a class="btn btn-success btn-xs" href="javascript:document.formaM11<c:out value="${contador.count}"/>.submit();">Libre</a></div>
             <input type="hidden" name="id_cama"  value='<c:out value="${lista.id_cama}"/>'>
             <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
             <input type="hidden" name="id_piso2"  value='<c:out value="${id_piso2}"/>'>
             <input type="hidden" name="id_sala2"  value='<c:out value="${id_sala2}"/>'>
             <input type="hidden" name='accion'   value='<c:out value="${accion}"/>'>
             <input type="hidden" name='sala'     value='<c:out value="${sala}"/>'>
             <input type="hidden" name="accion2"  value='CamaLibre'>
             <input type="hidden" name="sw"       value='1'>
           </td></form>
       </c:if>
       <c:if test="${lista.estado=='1'}">
         <form name=formaM12<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarCamas.do"/>'>
           <td>     
             <div class="volver"><a class="btn btn-info btn-xs" href="javascript:document.formaM12<c:out value="${contador.count}"/>.submit();">Ocupada</a></div>
             <input type="hidden" name="id_cama"  value='<c:out value="${lista.id_cama}"/>'>
             <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
             <input type="hidden" name="id_piso2"  value='<c:out value="${id_piso2}"/>'>
             <input type="hidden" name="id_sala2"  value='<c:out value="${id_sala2}"/>'>
             <input type="hidden" name='accion'   value='<c:out value="${accion}"/>'>
             <input type="hidden" name='sala'     value='<c:out value="${sala}"/>'>
             <input type="hidden" name="accion2"  value='CamaOcupada'>
             <input type="hidden" name="sw"       value='1'>
           </td></form>
       </c:if>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCama.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_cama"  value=<c:out value="${lista.id_cama}"/> >
         <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCama.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cama"  value=<c:out value="${lista.id_cama}"/> >
         <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>