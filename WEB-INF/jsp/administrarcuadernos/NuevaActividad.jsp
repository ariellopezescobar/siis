<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<div><a class="btn btn-success" href='ListarLibros.do'>Volver</a></div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th colspan="3" bgcolor="#F2F2F2"><center>INTRODUZCA LOS DATOS ACTIVIDADES</center></th>
    </tr>
    <tr>  
         <td align="right" bgcolor="#F2F2F2">Fecha de Actividad  </td>
         <td>
           <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
           <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
         </td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombre Actividad  </td>    
        <td><input type="text" name="actividad" value=""  maxlength="200" size="70" onblur='validar(nombres,"A")'/></td>
     </tr>    
     <tr>
      <td align="right" bgcolor="#F2F2F2"> Tema Actividad </td>
      <td><input type="text" name="tema" value="" maxlength="50" size="50" onblur='validar(nombres,"A")'/></td>
    </tr>       
    <tr>
      <td align="right" bgcolor="#F2F2F2"> Numero Participantes </td>
      <td><input type="text" name="numero" size="20" maxlength="20" value="" onblur='validar(numero,"9");'></td>
    </tr> 
 
  </table>
  </center>   
  <center>
    <input type="submit" class="btn btn-primary" value='Grabar' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ReporteOdonMensual.do"/>';">
  </center>
    <input type="hidden" name='accion1'    value='Guardar'>
    <input type="hidden" name='mes'        value='<c:out value="${mes}"/>'>
    <input type="hidden" name='gestion'    value='<c:out value="${gestion}"/>'>
</form>
   
  <div class=titulo> </div>
  



 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> ACTIVIDAD </th>
    <th bgcolor="#F2F2F2"> TEMA </th>
    <th bgcolor="#F2F2F2"> NUMERO </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listaractividad}" varStatus="contador">
     <tr style="font-size:9pt" >
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
       <td><c:out value="${lista.actividad}"/></td>
       <td><c:out value="${lista.tema}"/></td>
       <td><c:out value="${lista.numero}"/></td>      
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteOdonMensual.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name='id_actividad'    value='<c:out value="${lista.id_actividad}"/>'>
         <input type="hidden" name="accion1"    value='Eliminar' >
         <input type="hidden" name="sw1"        value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>
