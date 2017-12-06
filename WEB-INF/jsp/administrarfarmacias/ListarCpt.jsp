<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="adicionarcolegio" method="POST" action='<c:url value="/ListarCpt.do"/>' >
<CENTER>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3"><center>CONSOLIDADO DE PEDIDO TRIMESTRAL (CPT)</center></th>
  </tr>

  <tr>
    <td width="30%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">      
     <tr style="font-size:10pt">
        <td align="right"><b> Trimestre </b> </td>
        <td><SELECT NAME="mes">
               <option value="1">Trimestre 1</option>
               <option value="2">Trimestre 2</option>
               <option value="3">Trimestre 3</option>
               <option value="4">Trimestre 4</option>
        </SELECT></td>
     </tr>  
      <tr style="font-size:10pt">
        <td align="right"> <b>Gestion </b>  </td>
        <td><SELECT NAME="gestion">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>">Gestion <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT></td>
     </tr>  

     </table>
    </td>   


   </tr>   
</table>
</CENTER>
<CENTER>
<input type="submit" name='accion' style="font-size:11pt" class="btn btn-warning" value='Mostrar Todo'>
<input type="submit" name='accion' style="font-size:11pt" class="btn btn-warning" value='SoloPositivos'>
<input type="submit" name='accion' style="font-size:11pt" class="btn btn-warning" value='Psicotropicos'>
</CENTER>  
</form>

<div class="form-inline" style="font-size:14pt"><center> Buscar Reporte Segun Medicanento Dispensado</center></div>
<form name="formamm" method="POST" action='<c:url value="/ControlCalidad.do"/>' >
  <center>
    <input type="submit" name='accion' style="font-size:11pt" class="btn btn-success" value='Segun Medicamento' onclick="document.formamm.action='<c:url value="/ControlCalidad.do"/>'">  
    <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
    <input type="hidden" name="valor_1"         value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
    <input type="hidden" name="valor_2"         value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
  </center>
</form>  