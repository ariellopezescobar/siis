<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Empresas / Empleadores</div>

<form name=formaBN method=post action='<c:url value="/ListarEmpresas.do"/>'>
  <table class="table table-striped table-bordered table-condensed table-responsive">
   <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right> Empresa:</td>
          <td ><input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3><input class="btn btn-success" type="submit" name=boton value="BuscarE"></td>
        </tr> 
      </table>
     </fieldset>
    </td>
   </tr>
  </table>
 </form>
 

<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoEmpresa.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a class="btn btn-primary" href="javascript:document.forma.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
  <tr>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
  <tr style="font-size:9pt">
    <th  bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> Codigo <br>Patronal </th>   
    <th bgcolor="#F2F2F2"> RAZON SOCIAL </th>   
    <th bgcolor="#F2F2F2"> Activo </th>
    <th bgcolor="#F2F2F2"> NIT </th>
    <th bgcolor="#F2F2F2"> Telefonos </th>
    <th bgcolor="#F2F2F2"> DIRECCION </th>
    <th bgcolor="#F2F2F2"> NUM </th>
    <th bgcolor="#F2F2F2"> PAGOS </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listarEmpresas}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.cod_patronal}"/></td>  
       <td><c:out value="${lista.empresa}"/></td>    
       <td><c:out value="${lista.id_estado}"/></td>  
       <td><c:out value="${lista.nit}"/></td>   
       <td><c:out value="${lista.telefonos}"/></td>  
       <td><c:out value="${lista.direccion}"/></td>    
       <td><c:out value="${lista.nro}"/></td>    
       
     <form name=formaMp<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarEmpresa.do"/>'>
       <td>     
         <div><a class="btn btn-info" href="javascript:document.formaMp<c:out value="${contador.count}"/>.submit();">Pagos</a></div>
  	 <input type="hidden" name="id_empresa" value='<c:out value="${lista.id_empresa}"/>' >
         <input type="hidden" name="empresa"    value='<c:out value="${lista.empresa}"/>' >
         <input type="hidden" name="nit"        value='<c:out value="${lista.nit}"/>' >
	 <input type="hidden" name="accion"     value='Pagos' >
	 <input type="hidden" name="sw"         value='1' >
       </td>
     </form>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoEmpresa.do"/>'>
       <td>     
         <div><a class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_empresa" value=<c:out value="${lista.id_empresa}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarEmpresa.do"/>'>
       <td>     
         <div><a class="btn btn-danger" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_empresa" value=<c:out value="${lista.id_empresa}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>