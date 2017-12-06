<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/RecepcionMedicamento.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
        <th colspan="3"><font size=2>Recepcion de Medicamentos </font></th>
      </tr>    
    ¨<tr>  
         <td class="etiqueta">Fecha adquisicion  </td>
         <td>
           <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
           <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
         </td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres  </td>    
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" onblur='validar(nombres,"A");'/></td>
      </tr>    
     <tr>    
        <td class="etiqueta">Numero Clave Documento(NIT)  </td>          
        <td><input type="text" name="num_cladoc" value="0"/></td>
     </tr>   
     <tr>    
        <td class="etiqueta">Nº de Orden De Compra  </td>    	      
        <td><input type="text" name="orden" value="0"/></td>
     </tr>    
  </tr>
  </table>
  </center>
  <center>
       <input type="submit" class="btn btn-primary btn-lg" value='Siguiente' onclick="document.adicionarpaciente.action='<c:url value="/RecepcionMedicamento.do"/>';"></td>
  </center>
    <input type="hidden" name='accion' value='<c:out value="entregarya"/>'>
    <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
 </form>


<%@ include file="../Inferior.jsp" %>