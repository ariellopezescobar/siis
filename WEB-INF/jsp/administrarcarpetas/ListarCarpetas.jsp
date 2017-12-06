<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Carpetas Familiares y Empresas</div>

<form name=formaBN method=post action='<c:url value="/ListarCarpetas.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nombres
          <td class=colb><input type=text name=nombre size="30" onblur='validar(nombre,"A")'>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarNombre"></td>
        </tr> 
      </table>
    </fieldset>
    </td>
    </td>
  </tr>
</table>
</form>
<c:if test="${area != 'O' }">
<form name=formaBH method=post action='<c:url value="/ListarCarpetas.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nro.de Carpeta
           <td class=colb><input type=text name=id_carpeta size="30" onblur='validar(nombre,"9")'>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarCarpeta"></td>
        </tr>  
      </table>
    </fieldset>
    </td>

    </td>
  </tr>
</table>
</form>
</c:if>
<c:if test="${area == 'O' }">
 <form name=formaBH method=post action='<c:url value="/ListarCarpetas.do"/>'>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nro.de Asegurado
           <td class=colb><input type=text name=id_segurado size="30" onblur='validar(nombre,"A9")'>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarAsegurado"></td>
        </tr>  
      </table>
    </fieldset>
    </td>
    </td>
  </tr>
</table>
</form>         
</c:if>
<br>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoCarpeta.do"/>'>
    <td colspan="2">
      <div>
       <a class="btn btn-success" href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> NUMERO<BR>CARPETA </th>
    <th bgcolor="#F2F2F2"> NOMBRE </th>
    <th bgcolor="#F2F2F2"> SECTOR </th>
    <th bgcolor="#F2F2F2"> NRO.<br>ASEGURADO </th>       
    <th bgcolor="#F2F2F2"> DEPENDIENTES </th>
    <th bgcolor="#F2F2F2"> AFILIAR<br>EMPRESA </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    <th bgcolor="#F2F2F2"> IMRIMIR  </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarCarpetas}" varStatus="contador">
       <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center"><c:out value="${lista.id_carpeta}"/></td>   
       <td><c:out value="${lista.nombres}"/></td>     
       <td><c:out value="${lista.carpeta}"/></td>      
        
       <td><c:out value="${lista.nro_registro}"/></td>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Dependientes</a></div>
  	 <input type="hidden" name="id_carpeta" value=<c:out value="${lista.id_carpeta}"/> >
         <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaDep<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaDep<c:out value="${contador.count}"/>.submit();">Afiliar</a></div>
  	 <input type="hidden" name="id_carpeta" value=<c:out value="${lista.id_carpeta}"/> >
         <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >
	 <input type="hidden" name="accion" value='Afiliar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaMMM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCarpeta.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMMM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_carpeta" value=<c:out value="${lista.id_carpeta}"/> >
         <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >
	 <input type="hidden" name="accion" value='ModificarCarpeta' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formacimp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formacimp<c:out value="${contador.count}"/>.submit();"> Imprimir Carpeta</a></div>
         
         <input type="hidden" name="id_carpeta" value=<c:out value="${lista.id_carpeta}"/> >    
         <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >                  
         <input type="hidden" name="accion" value='ImprimirCarpeta' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCarpeta.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_carpeta" value=<c:out value="${lista.id_carpeta}"/> >
         <input type="hidden" name="id_pacientej" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>