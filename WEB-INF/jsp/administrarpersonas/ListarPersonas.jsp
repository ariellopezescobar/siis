<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name=formaBN method=post action='<c:url value="/ListarPersonas.do"/>'>
    
  <table valign=top border="0" cellspacing="0">
   <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right>Dato Persona</td>
          <td ><input class="form-control" type=text name=nombre size="100" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3><input class="btn btn-success" type="submit" name=boton value="BuscarE"></td>
        </tr> 
      </table>
      
     </fieldset>
    </td>
   </tr>
  </table>
 </form>

<table valign=top border="0" cellspacing="0">
 <tr>
  <td>     
    <table width=50% border=0>
      <tr>
      <form name=forma method=post action='<c:url value="/NuevoPersona.do"/>'>
        <td colspan="2">
          <div class="agregar">
           <a class="btn btn-success" href="javascript:document.forma.submit();" >Nuevo</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type=hidden name=accion value='Adicionar'>
        </div></td>
        </form>
      <tr>
    </table>
  </td>  
  <td>
     <table class="table table-bordered table-condensed">
         <form name=formaBN method=post action='<c:url value="/ListarPersonas.do"/>'>
             <tr class="text-center">
              <td><input class="btn btn-primary" type="submit" name=boton value="Primero"></td>
              <td><input class="btn btn-primary" type="submit" name=boton value="Anterior"></td>
              <td><input class="btn btn-primary" type="submit" name=boton value="Siguiente"></td>
              <td><input class="btn btn-primary" type="submit" name=boton value="Ultimo"></td>
             <td><c:out value="${pagina}"/>&nbsp;&nbsp;<font color="blue">de</font>&nbsp;&nbsp;<c:out value="${total}"/></td>
            </tr> 
            <input type=hidden name='pagina' value='<c:out value="${pagina}"/>' >
        </form>
      </table>
  </td>
 </tr>   
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> ID </th>
    <th> ESTABLECIMENTO </th>
    <th> C.I. </th>
    <th> Matr.<br>USR</th>
    <th> Cod<br>CNS</th>
    <th> NOMBRES </th>
    <th> CARGO </th>    
    <th> Estado </th>            
    <th> MODIFICAR </th>
    <th> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarPersonas}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center"><c:out value="${lista.id_persona}"/></td>
       <td style="color:blue"><c:out value="${lista.cod_esta}"/>__<c:out value="${fn:substring(lista.establecimiento,0,25)}"/></td>      
       <td><c:out value="${lista.dip}"/></td> 
       <td><c:out value="${lista.matricula}"/></td>
       <td><c:out value="${lista.codigoprof}"/></td>
       
       <td><c:out value="${lista.nombres}"/></td>  
       <c:if test="${lista.urgencias!=1}">
           <td><c:out value="${fn:substring(lista.consultorio,0,20)}"/></td>    
       </c:if>
       <c:if test="${lista.urgencias==1}">
           <td style="color:blue"><c:out value="${fn:substring(lista.consultorio,0,20)}"/></td>    
       </c:if>   
       <td align="center"><c:out value="${lista.id_estado}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPersona.do"/>'>
       <td>     
         <div class="modificar"><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >
         <input type="hidden" name="cod_esta" value=<c:out value="${lista.cod_esta}"/> >
         <input type="hidden" name="cod_esta" value=<c:out value="${lista.cod_esta}"/> >
	 <input type="hidden" name="accion" value='Modificar'>
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPersona.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >
         <input type="hidden" name="cod_esta" value=<c:out value="${lista.cod_esta}"/> >
         <input type="hidden" name="accion" value='Eliminar'>
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>