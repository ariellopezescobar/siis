<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
 <form name="formasal" method="POST" action='<c:url value="/ListarSalas.do"/>' >   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="2"><center>ADMINISTRACION DE SALAS</center></th>
    </tr>
    <tr>
    <td width="30%"></td>     
     <td width="60%">
        <fieldset> 
            <table>	     
             <tr>
                <td >Elegir Piso : 
                  <SELECT NAME="id_piso" onchange="javascript:document.formasal.submit();">
                      <option value="0">-- Sin Piso --</option>     
                      <c:forEach var="estado" items="${listarPisos}">
                      <option value="<c:out value="${estado.id_piso}"/>" <c:if test="${estado.id_piso == id_piso}">selected</c:if>>
                        <c:out value="${estado.piso}"/></option>
                      </c:forEach>
                  </SELECT>	
                </td>
            </tr>  
	    </table>
        </fieldset>
      </td>
     <td width="10%"></td>     
    </tr>
  </table>
</form>  
</center>  



<table>
  <tr>
   <td>
    <form name=forma method=post action='<c:url value="/NuevoSala.do"/>'>
       <a class="btn btn-success"  href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </form>
   </td>
   <td>
    <form name=formas method=post action='<c:url value="/NuevoSala.do"/>'>
       <a class="btn btn-warning"  href="javascript:document.formas.submit();" >Ver Ocupadas</a>
       <input type=hidden name=accion value='Ocupadas'>
    </form>
   </td>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> PISO </th>  
    <th> SALA </th>  
    <th> ESTADO </th>
    <c:if test="${rol == '1' or rol == '5' or rol == '27'}"> 
        <th> MODIFICAR </th>
        <th> ELIMINAR </th> 
    </c:if>
    </tr>  
   <c:forEach var="lista" items="${listarSalas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.piso}"/></td> 
       <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCama.do"/>'>
       <td>     
         <div class="agregar"><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.sala}"/> </a></div>
  	 <input type="hidden" name="id_sala" value='<c:out value="${lista.id_sala}"/>' >
         <input type="hidden" name="sala" value='<c:out value="${lista.sala}"/>' >
	 <input type="hidden" name="accion" value='Adicionar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>     
       <td><c:out value="${lista.id_estado}"/></td> 
     <c:if test="${rol == '1' or rol == '5' or rol == '27'}"> 
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoSala.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_sala" value='<c:out value="${lista.id_sala}"/>' >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarSala.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_sala" value='<c:out value="${lista.id_sala}"/>' >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     </c:if> 
    </tr> 
   </c:forEach>
</table>