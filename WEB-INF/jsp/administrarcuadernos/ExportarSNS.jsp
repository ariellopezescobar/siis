<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/ReporteSnis.do"/>' >
 <center>
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th bgcolor="#F2F2F2"><center>Exportar Datos Sistemas SNS</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive">     
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio </td>
                <td>
	          <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
		  <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final </td>
                <td>
	          <input type="text" name="valor_2" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' readonly>
		  <small><a href="javascript:showCal('valor_2')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
                </td>
	      </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </center>
  
  <center>
  <div class=titulo> Exportar SALMI</div>   
  <fieldset>
    <legend align=center>La base de datos SALMI debe estar en d:/SALMI</legend>
      <input type="submit" name='accion' class="btn btn-success" value='Borrar Salmi' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P1 Personas' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P2 Sel. Prestacion' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P3 MedInsReacNoe' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P4 SeleccionMed' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P5 Lotes' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P6 Inv. Inicial' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P7 Pacientes' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P8 Salidas' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P9 Compras Medica' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P10 Diagnosticos' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P11 Prestaciones' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <input type="submit" name='accion' class="btn btn-success" value='P12 Salidas Medica' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
      <!--<input type="submit" name='accion' class="btn btn-success" value='P13 IMM' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">-->
  </fieldset>
  </center>
  
  <center>
  <div class=titulo> Exportar SNIS</div>    
  <fieldset>
    <legend align=center>La base de datos SNIS debe estar en c:/SNIS2014</legend>
     <input type="submit" name='accion' class="btn btn-success" value='Borrar SNIS' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
     <input type="submit" name='accion' class="btn btn-success" value='Exportar SNIS' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
  </fieldset>
  </center>
  
  <center>
  <div class=titulo> Exportar SOAPS</div>    
  <fieldset>
    <legend align=center>La base de datos SOAPS debe estar en c:/SOPAS</legend>
     <input type="submit" name='accion' class="btn btn-success" value='Borrar SOAPS' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
     <input type="submit" name='accion' class="btn btn-success" value='Exportar SOAPS' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
  </fieldset>
  </center>
  
  <center>
  <div class=titulo> Exportar SICE</div>    
  <fieldset>
    <legend align=center>La base de datos SICE debe estar en c:/SIAF-SICE</legend>
     <input type="submit" name='accion' class="btn btn-success" value='Borrar SICE' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
     <input type="submit" name='accion' class="btn btn-success" value='Exportar SICE' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
  </fieldset>
  </center>
  
  <center>
  <div class=titulo> Exportar Carpetas Famliares</div>    
  <fieldset>
    <legend align=center>La base de datos Carpetas debe estar en c:/Carpetas</legend>
     <input type="submit" name='accion' class="btn btn-success" value='Borrar Carpetas' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
     <input type="submit" name='accion' class="btn btn-success" value='Exportar Carpetas' onclick="document.forma.action='<c:url value="/ExportarSNS.do"/>';">
  </fieldset>
  </center>
</form>
  
<%@ include file="../Inferior.jsp" %>