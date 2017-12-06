<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Cama</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Cama</div>
</c:if>

<div><a class="btn btn-success" href='ListarCamas.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <center>   
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>INTRODUZCA LOS DATOS NUEVA CAMA</center></th>
    </tr>
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Sala </td>
      <td><c:out value="${sala}"/></td>
    </tr>
    
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Nombre Cama </td>
      <td><input type="text" name="cama" maxlength="20" size="20" value="<c:out value="${buscarCama.cama}"/>"></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Costo Cama  </td>
      <td><input type="text" name="cama_unit" size="20" maxlength="50" value="<c:out value="${buscarCama.cama_unit}"/>"></td>
    </tr>       
  </table>
  </center> 
  <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarCama.do"/>';">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_sala' value='<c:out value="${id_sala}"/>'>  
    <input type="hidden" name='id_cama' value='<c:out value="${id_cama}"/>'>  
    <input type="hidden" name='sala'    value='<c:out value="${sala}"/>'>  
    <input type="hidden" name='sw'      value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion'  value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_cama' value='<c:out value="${buscarCama.id_cama}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>

  <div class=titulo> </div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  
    <tr style="font-size:9pt">
      <th colspan="7" style="font-size: 14pt;"><c:out value="${sala}"/></th>
    </tr>
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> SALA </th>
    <th bgcolor="#F2F2F2"> DESCRIPCION </th>
    <th bgcolor="#F2F2F2"> COSTO </th>   
    <th bgcolor="#F2F2F2"> Estado </th> 
    <c:if test="${rol == '1' or rol == '5' or rol == '27'}"> 
        <th bgcolor="#F2F2F2"> MODIFICAR </th>
        <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </c:if>
    </tr>  
   <c:forEach var="lista" items="${listarCamasSala}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.id_piso}"/>-<c:out value="${lista.id_sala}"/>-<c:out value="${lista.id_cama}"/></td>
       <td style="color:blue"><c:out value="${lista.sala}"/></td>
       <td style="font-size:14pt"><c:out value="${lista.cama}"/></td>      
       <td align="center"><c:out value="${lista.cama_unit}"/></td>    
       <c:if test="${lista.estado=='0'}">
            <form name=formaM1<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCama.do"/>'>
           <td>     
             <div><a class="btn btn-success btn-xs" href="javascript:document.formaM1<c:out value="${contador.count}"/>.submit();">Libre</a></div>
             <input type="hidden" name="id_cama"  value='<c:out value="${lista.id_cama}"/>'>
             <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
             <input type="hidden" name='accion'   value='<c:out value="${accion}"/>'>
             <input type="hidden" name='sala'     value='<c:out value="${sala}"/>'>
             <input type="hidden" name="accion2"  value='CamaLibre'>
             <input type="hidden" name="sw"       value='1'>
           </td></form>
       </c:if>
       <c:if test="${lista.estado=='1'}">
         <form name=formaM1<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCama.do"/>'>
           <td>     
             <div><a class="btn btn-info btn-xs" href="javascript:document.formaM1<c:out value="${contador.count}"/>.submit();">Ocupada</a></div>
             <input type="hidden" name="id_cama"  value='<c:out value="${lista.id_cama}"/>'>
             <input type="hidden" name="id_sala"  value='<c:out value="${lista.id_sala}"/>'>
             <input type="hidden" name='accion'   value='<c:out value="${accion}"/>'>
             <input type="hidden" name='sala'     value='<c:out value="${sala}"/>'>
             <input type="hidden" name="accion2"  value='CamaOcupada'>
             <input type="hidden" name="sw"       value='1'>
           </td></form>
       </c:if>
     <c:if test="${rol == '1' or rol == '5' or rol == '27'}">   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoCama.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_cama"  value=<c:out value="${lista.id_cama}"/> >
         <input type="hidden" name='id_sala'  value='<c:out value="${id_sala}"/>'>  
         <input type="hidden" name='sala'     value='<c:out value="${sala}"/>'>
	 <input type="hidden" name="accion"   value='Modificar' >
	 <input type="hidden" name="sw"       value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCama.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cama" value=<c:out value="${lista.id_cama}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     </c:if>
    </tr> 
   </c:forEach>
</table>