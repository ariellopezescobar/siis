<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Provincias</div>
<br>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoProvincia.do"/>'>
    <td colspan="2">
      <div>
       <a class="btn btn-primary" href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> PROVINCIA </th>
    <th bgcolor="#F2F2F2"> DEPARTAMENTO </th>
    <th bgcolor="#F2F2F2"> PAIS </th>    
    <th bgcolor="#F2F2F2"> ESTADO </th>            
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarProvincias}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.provincia}"/></td>      
       <td><c:out value="${lista.departamento}"/></td>      
       <td><c:out value="${lista.pais}"/></td>    
       <td><c:out value="${lista.id_estado}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoProvincia.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_provincia" value=<c:out value="${lista.id_provincia}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarProvincia.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_provincia" value=<c:out value="${lista.id_provincia}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr>  
   </c:forEach>
</table>