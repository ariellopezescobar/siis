<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <td width="40%" valign="top"> 
  <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>
       <th><center>CONFIGURAR Y AGRUPAR LABORATORIOS</center></th>
      </tr>  
  <tr>
    <td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
      <div><a class="btn btn-success" href="javascript:document.formaL1.submit();">RetornarLaboratorio</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
         <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td>
  </tr>
  <tr>
    <td style="font-size:18pt; color:blue"><center>GRUPO : <c:out value="${laboratoriog}"/></center></td>
    
  </tr>
  </table>
  
 <table class="table table-striped table-bordered table-condensed table-responsive" width="20%">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2" align="center"> No </th>
    <th bgcolor="#F2F2F2"> Grupo Labos </th>
    <th bgcolor="#F2F2F2"> Laboratorio </th>
    <th bgcolor="#F2F2F2"> Eliminar </th> 
    </tr>  
   <c:forEach var="lista" items="${listarGrupoLabDet}" varStatus="contador">
     <tr style="font-size:10pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.laboratorio}"/></td>
       <td><c:out value="${lista.id_estado}"/></td>  
     <form name=formaEd2<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaEd2<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_laboratoriodet" value='<c:out value="${lista.id_laboratorio}"/>' >
         <input type="hidden" name="id_laboratoriog"   value='<c:out value="${lista.id_laboratoriog}"/>' >
         <input type="hidden" name='id_costo'          value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name='id_reservacion'    value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_consultorio'    value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'       value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'          value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='laboratoriog'      value='<c:out value="${laboratoriog}"/>'>
         <input type="hidden" name='hcl'               value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='sw'                value='<c:out value="${sw}"/>'>
         <input type="hidden" name="swinter"           value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='accionl'           value='<c:out value="${accionl}"/>'>
         <input type="hidden" name="accionc"           value='EliminarGrupoLabDet' >
         <input type="hidden" name="sw1"               value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>
    </td>
    <td width="60%" valign="top">

 <table class="table table-striped table-bordered table-condensed table-responsive">
    <c:if test="${verlabos=='SI'}">
          <tr>
         <form name=formaMn<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
           <th colspan="4">
              <input type="submit" class="btn btn-warning" name='accionc' value='Regresar'>
              <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
              <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
              <input type="hidden" name='laboratoriog'    value='<c:out value="${laboratoriog}"/>'>
           </th>
         </form>
      </tr>
     </c:if>
 
    <form name="adicionar" method="POST" action='<c:url value="/Laboratorio.do"/>' >  
    <c:if test="${verlabos=='SI'}">
     <c:if test="${Rayos!='SI'}">
         <SELECT NAME="accionl" class="form-control" onchange="javascript:document.adicionar.submit();">
            <c:forEach var="listalabo1" items="${listarLabo1}" >
  	      <option value="<c:out value="${listalabo1.laboratorio}"/>" <c:if test="${listalabo1.laboratorio == accionl}">selected</c:if>> 
	        <c:out value="${listalabo1.laboratorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
             <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
             <input type="hidden" name="Rayos"           value='<c:out value="${Rayos}"/>' >
             <input type="hidden" name='laboratoriog'    value='<c:out value="${laboratoriog}"/>'>
             <input type="hidden" name='id_laboratoriog' value='<c:out value="${id_laboratoriog}"/>'>
             <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
             <input type="hidden" name='accionc'         value='ModificarGrupoLab' >    
     </c:if>
     <c:if test="${Rayos=='SI'}">
     
         <input type="submit" class="btn btn-success" name='accion' value='Volver' >
                             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                             <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
                             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                             <input type="hidden" name="Rayos"           value='<c:out value="${Rayos}"/>' >
                             <input type="hidden" name='laboratoriog'    value='<c:out value="${laboratoriog}"/>'>
                             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >   
                             <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
          <SELECT NAME="labox" onchange="javascript:document.adicionar.submit();">
            <c:forEach var="labx" items="${laborx}">
  	      <option value="<c:out value="${labx.laboratorio}"/>" <c:if test="${labx.laboratorio == labox}">selected</c:if>> 
	        <c:out value="${labx.laboratorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>
         
     </c:if> 
     </c:if>
     </form> 
     <br>
     
  <c:if test="${verlabos!='SI' and nuevoGrupo!='SI'}">
  <tr>
     <form name=formaMn<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <th colspan="4">
          <input type="submit" class="btn btn-primary" name='accionc' value='Nuevo Grupo'>
          <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
          <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='laboratoriog'    value='<c:out value="${laboratoriog}"/>'>
          <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
       </th>
     </form>
  </tr>
  </c:if>
  
  <c:if test="${nuevoGrupo=='SI'}">
      <tr>
        <form name=formaMn<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
           <td><div class="form-inline"><input class="form-control" type="text" name="nombrelabg" maxlength="80" size="60" value="<c:out value="${buscarempresa.empresa}"/>" placeholder="Nombre Nuevo Grupo" />
           <input type="submit" class="btn btn-success" name='accionc' value='CrearNuevo'></div></td>
           <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
           <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
           <input type="hidden" name='laboratoriog'    value='<c:out value="${laboratoriog}"/>'>
           <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
        </form> 
      </tr>
  </c:if>    
  
  <tr>
  <th colspan="4" style="font-size:18pt" align="center"  bgcolor="#F2F2F2"><center><c:out value="${accionl}"/></center></th>
 </tr>  
 
  <tr>
  <td>
  
  <c:if test="${verlabos!='SI'}">
 <table class="table table-striped table-hover table-bordered table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2" align="center"> No </th>
    <th bgcolor="#F2F2F2"> Especialidad </th>
    <th bgcolor="#F2F2F2"> Nombre Grupo </th>
    <th bgcolor="#F2F2F2"> Modificar </th>
    <th bgcolor="#F2F2F2"> Eliminar </th> 
    </tr>  
   <c:forEach var="lista" items="${listarGrupoLab}" varStatus="contador">
     <tr style="font-size:10pt">                                                                        
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.id_estado}"/></td>     
       <td style="font-size:12pt"><b><c:out value="${lista.laboratorio}"/></b></td>    

     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_laboratoriog"  value='<c:out value="${lista.id_laboratoriog}"/>'>
         <input type="hidden" name="laboratoriog"     value='<c:out value="${lista.laboratorio}"/>'>
         <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='laboratoriog'     value='<c:out value="${laboratoriog}"/>'>
         <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='accionl'          value='<c:out value="${accionl}"/>'>
	 <input type="hidden" name="accionc"          value='ModificarGrupoLab'>
	 <input type="hidden" name="sw"               value='1'>
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_laboratoriog"  value='<c:out value="${lista.id_laboratoriog}"/>'>
         <input type="hidden" name="id_consultorio"   value='<c:out value="${lista.id_consultorio}"/>'>
         <input type="hidden" name='laboratoriog'     value='<c:out value="${laboratoriog}"/>'>
         <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='accionl'          value='<c:out value="${accionl}"/>'>
         <input type="hidden" name="accionc"          value='EliminarGrupoLab'>
         <input type="hidden" name="sw1"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
</c:if>

<c:if test="${verlabos=='SI'}">
<table class="table table-striped table-hover table-bordered table-condensed table-responsive">
   <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2" align="center"> No </th>
    <th bgcolor="#F2F2F2"> Tipo Labos </th>
    <th bgcolor="#F2F2F2"> Laboratorio </th>
    <th bgcolor="#F2F2F2"> Añadir </th> 
    </tr>   
   <c:forEach var="listab" items="${listarLab}" varStatus="contador">
     <tr style="font-size:10pt">                                                                        
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listab.laboratorio}"/></td>   
       <c:if test="${listab.id_laboratorio=='13'}">
           <td><c:out value="${listab.normales}"/>_<c:out value="${listab.costo}"/></td>
       </c:if>
       <c:if test="${listab.id_laboratorio!='13'}">
           <td><c:out value="${listab.costo}"/></td>  
       </c:if>
       

     <form name=formaEll<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-primary btn-xs" href="javascript:document.formaEll<c:out value="${contador.count}"/>.submit();"> Añadir</a></div>
         <input type="hidden" name='id_reservacion'   value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_laboratoriog"  value='<c:out value="${id_laboratoriog}"/>'>
         <input type="hidden" name='laboratoriog'     value='<c:out value="${laboratoriog}"/>'>
         <input type="hidden" name='id_paciente'      value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_costo"         value='<c:out value="${listab.id_costo}"/>'>
         <input type="hidden" name="costo"            value='<c:out value="${listab.costo}"/>'>
         <input type="hidden" name='accionl'          value='<c:out value="${accionl}"/>'>
         <input type="hidden" name="accionc"          value='Aumentar'>
         <input type="hidden" name="sw1"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>

 </table>
 </c:if>
 </td>
 </tr>
 </table>
  

  </td>
  </tr>
</table>