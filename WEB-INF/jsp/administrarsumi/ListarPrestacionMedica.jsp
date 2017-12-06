<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Administraci&oacute;n de Prestaciones SUMI segun Medicamentos</div>
<br>

<center>
<table class="formulario">
  <tr>
  <TD>
 <center>
<form name=formaNom action="<c:url value="/ListarPrestacionCodigo.do"/>" method="POST">        
         <table >
          <tr>    
            <td class="colh" align=right>Por Medicamento</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input type="submit" name=boton value="BuscarMed"></td>
          </tr>  
         </table>
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
</form> 
</center>
</center>
</TD>
    </tr>
  <tr>
    <th colspan="3">PRESTACIONES</th>
  </tr>
  <tr>
    <td  valign="top">
   <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> PRESTACION </th>            
    <th> DESCRIPCION </th>            
    <th> COSTO </th>            

    <th> MODIFICAR </th>
    <th> ELIMINAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>             
       <td><c:out value="${lista.descripcion}"/></td>   
       <td><c:out value="${lista.costo}"/></td>   

     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ModificarPaquete.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_prestacion" value=<c:out value="${lista.id_prestacion}"/> >
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>  
   </c:forEach>

</table>

      </td>
  </tr>
</center>
</table>
</center>
