<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Prestaciones SUMI segun nombre de Prestacion</div>
<br>

<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
  <TD>
 <center>
<form name=formaNom action="<c:url value="/ListarPrestacionSumi.do"/>" method="POST">        
         <table >
          <tr>    
            <td align=right>Nombre Prestacion</td>    
            <td ><input class="form-control" type="text" name="nombresPres"  value="<c:out value="${nombresPres}"/>"  size="50" maxlength=50 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-success" type="submit" name=boton value="BuscarNom"></td>
          </tr>  
         </table>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
  <input type="hidden" name='accion2'        value='<c:out value="${accion2}"/>'> 
</form> 
</center>

<table>
  <tr>
  <form name=formax method=post action='<c:url value="/ListarPrestacionSumi.do"/>'>
    <td colspan="2">
       <a class="btn btn-primary" href="javascript:document.formax.submit();" >Habilitar Prestacion</a>
       <input type=hidden name=accion value='Habilitar'>
    </td>
    </form>
  <tr>
</table>

</TD>
    </tr>

  <tr>
    <td  valign="top">
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> CODIGO </th>    
    <th> DESCRIPCION </th>            
    <th> COSTO </th>      
    <c:if test="${(accion != 'Habilitar')}">              
       <th> MODIFICAR </th>
       <th> ELIMINAR </th>
    </c:if>
    <c:if test="${(accion == 'Habilitar')}">              
       <th> HABILITAR </th>
    </c:if>
    </tr>  
   <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td style="font-size:11"><c:out value="${lista.prestacion}"/></td>
       <c:if test="${(accion == 'Habilitar')}">    
           <td><c:out value="${lista.descripcion}"/>..<font color="blue"><c:out value="${lista.id_prestacion}"/></font></td>         
       </c:if>     
      <c:if test="${(accion != 'Habilitar')}">     
     <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>
       <td>     
         <div><a href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.descripcion}"/> </a></div>
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
	 <input type="hidden" name="accion" value='Prestacion' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>     
     </c:if>     
       
       <td><c:out value="${lista.costo}"/></td> 
     <c:if test="${(accion == 'Habilitar')}"> 
          <c:if test="${(lista.paquete != 'N2012')}">
               <form name=formaMH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPrestacionSumi.do"/>'>
               <td>     
                 <div class="agregar"><a href="javascript:document.formaMH<c:out value="${contador.count}"/>.submit();">Habilitar</a></div>
                 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
                 <input type="hidden" name="nombresPres"        value=<c:out value="${nombresPres}"/> >
                 <input type="hidden" name='accion2'        value='<c:out value="${accion2}"/>'> 
                 <input type="hidden" name="accion" value='habilita' >
                 <input type="hidden" name="sw" value='1' >
               </td>
             </form>     
         </c:if>
         <c:if test="${(lista.paquete == 'N2012')}">
                <form name=formaMH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPrestacionSumi.do"/>'>
               <td>     
                 <div><a class="btn btn-danger btn-xs" href="javascript:document.formaMH<c:out value="${contador.count}"/>.submit();">Deshabilitar</a></div>
                 <input type="hidden" name="id_prestacion"    value=<c:out value="${lista.id_prestacion}"/> >
                 <input type="hidden" name="nombresPres"      value=<c:out value="${nombresPres}"/> >
                 <input type="hidden" name='accion2'        value='<c:out value="${accion2}"/>'> 
                 <input type="hidden" name="accion"           value='deshabilita' >
                 <input type="hidden" name="sw" value='1' >
               </td>
             </form>    
         </c:if>
     </c:if>
     <c:if test="${(accion != 'Habilitar')}">    
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevaPrestacion.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >	 
         <input type="hidden" name="accion"        value='Modificar' >
	 <input type="hidden" name="sw"            value='1' >
       </td>
     </form>  
    <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPrestacion.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     </c:if>        
   </c:forEach>

</table>

      </td>
  </tr>

</table>
</center>




