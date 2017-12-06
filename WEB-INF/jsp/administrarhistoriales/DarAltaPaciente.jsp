<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>
<script language="javascript" type="text/javascript" src="./tiny_mce/tiny_mce.js"></script>

 <div style="font-size:15pt"> <center>Diagnosticos de Egreso Paciente Internado</center></div>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <td width="50%" valign="top"> 
<form name="adicionarcolegio" method="POST" action='<c:url value="/DarAltaPac.do"/>' >
<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <th colspan="4">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td colspan="4" width="100%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>    
        <td bgcolor="#F2F2F2">Nombres</td>    
        <td colspan="2"><c:out value = "${datos.nombres}"/></td>
        <td bgcolor="#F2F2F2">HCL</td>
        <td colspan="2"><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>
        <td bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><c:out value="${fec_nacimiento}"/></td>
	<td style="color:blue"><b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                                  
      </tr>
   <br>
 </table>
    </td> 
  </tr>
  <tr>
    </tr>   
</table>
<br>
 <c:if test="${terminar == 'si'}">
     <center><input class="btn btn-primary" type="submit" name='accion' class="aceptar" value='Seguir Cuaderno.5 Internaciones'></center>
 </c:if> 
 <input type="hidden" name='codigo'          value='<c:out value="${codigo}"/>' >
 <input type="hidden" name='literal'         value='<c:out value="${literal}"/>' >         
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >         
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
 <input type="hidden" name='accionc'         value='<c:out value="${accionc}"/>'>
 <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
 <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
 </form>
 
 <table class="table table-striped table-bordered table-condensed table-responsive" >
     <tr>
         <th colspan="4"> Coloque los Diagnosticos de Egreso Paciente Internado  </th>
     </tr>
    <tr>
           <th bgcolor="#F2F2F2" style="font-size:7pt"> No </th>
           <th bgcolor="#F2F2F2"> CIE10 </th>
           <th bgcolor="#F2F2F2"> CIE10 LITERAL</th>
           <th bgcolor="#F2F2F2"> ELIMINAR </th>
     </tr>
     <c:forEach var="morbi" items="${morbi}" varStatus="contador1">
            <tr style="font-size:9pt">
            <c:if test="${morbi.estimc=='C'}">
                <c:if test="${morbi.id_cargo=='1'}">
                  <td style="font-size:9pt; color:blue" ><c:out value="${morbi.id_cargo}"/></td>
                  <td style="font-size:12pt; color:blue"><c:out value="${morbi.nombres}"/></td>
                  <td style="font-size:9pt; color:blue"><c:out value="${morbi.nombre}"/><font color="red">.[Principal]. </font></td>
                </c:if>
                <c:if test="${morbi.id_cargo>'1'}">
                  <td style="font-size:9pt;" ><c:out value="${morbi.id_cargo}"/></td>
                  <td style="font-size:9pt;"><c:out value="${morbi.nombres}"/></td>
                  <td style="font-size:9pt;"><c:out value="${morbi.nombre}"/></td>
                </c:if>
              <form name=formaMorbi<c:out value="${contador1.count}"/> method=post action='<c:url value="/DarAltaPac.do"/>'>
                  <td>
                     <div><a class="btn btn-danger" href="javascript:document.formaMorbi<c:out value="${contador1.count}"/>.submit();">Eliminar</a></div>
                     <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
                     <input type="hidden" name='morbilidad'      value='<c:out value="${morbi.id_historia}"/>'>
                     <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                     <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                     <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                     <input type="hidden" name='analisis'        value='<c:out value="${analisis}"/>' >
                     <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>
                     <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
                     <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
                     <input type="hidden" name='boton'           value='EliminarCie10' >
                     <input type="hidden" name='sw'              value='1' >
                    </td>
                 </form>
            </c:if>  
           </tr>
         </c:forEach>
 </table>
 
 <table class="table table-striped table-bordered table-condensed table-responsive" >
     <tr>
         <th colspan="4"> Diagnosticos de Ingreso del Paciente Internado  </th>
     </tr>
    <tr>
           <th bgcolor="#F2F2F2" style="font-size:7pt"> No </th>
           <th bgcolor="#F2F2F2"> CIE10 </th>
           <th bgcolor="#F2F2F2"> CIE10 LITERAL</th>
           
     <c:forEach var="morbi" items="${morbi}" varStatus="contador1">
            <tr style="font-size:9pt">
            <c:if test="${morbi.estimc=='B'}">
                <c:if test="${morbi.id_cargo=='1'}">
                  <td style="font-size:7pt; color:blue" ><c:out value="${morbi.id_cargo}"/></td>
                  <td style="font-size:12pt; color:blue"><c:out value="${morbi.nombres}"/></td>
                  <td style="font-size:8pt; color:blue"><c:out value="${morbi.nombre}"/><font color="red">.[Principal]. </font></td>
                </c:if>
                <c:if test="${morbi.id_cargo>'1'}">
                  <td style="font-size:7pt;" ><c:out value="${morbi.id_cargo}"/></td>
                  <td style="font-size:9pt;"><c:out value="${morbi.nombres}"/></td>
                  <td style="font-size:7pt;"><c:out value="${morbi.nombre}"/></td>
                </c:if>
             </c:if>
           </tr>  
         </c:forEach>
 </table>
  </td>
    <td width="50%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive" >
    <form name=formabus action="<c:url value="/DarAltaPac.do"/>" method="POST">        
      <fieldset>
          <tr>    
            <td  align=right bgcolor="#F2F2F2">Nombre Enfermedad</td>    
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${literal}"/>"  size="30" maxlength=30 onblur='validar=(nombres,"A")'/></td>            
            <td ><input class="btn btn-primary btn-lg" name=boton type="submit" value="Buscar Enfermedad"></td>
          </tr>  
       </fieldset> 
        <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >  
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
        <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
        <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
     </form> 
    <form name=formabuscod action="<c:url value="/DarAltaPac.do"/>" method="POST">        
      <fieldset>
          <tr>    
            <td  align=right bgcolor="#F2F2F2">Codigo CIE10</td>    	
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${codigo}"/>"  maxlength=20 onblur='validar=(codigo,"A9")'/></td>            
            <td ><input class="btn btn-primary btn-lg" name=boton type="submit" value="Buscar CIE10"></td>
          </tr>  
       </fieldset> 
        <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
        <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
        <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
     </form>  
   </table>
   
<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Codigo </th>    
    <th bgcolor="#F2F2F2"> ENFERMEDAD </th>            
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarEnfermedades}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       
       <td><c:out value="${lista.ubicacion}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/DarAltaPac.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-sm" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
  	 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
  	 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' >         
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
         <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
	 <input type="hidden" name="accion"          value='Elegir' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

<table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Codigo </th>    
    <th bgcolor="#F2F2F2"> ENFERMEDAD </th>            
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarEnfermedadesCot}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.ubicacion}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>   
     <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/DarAltaPac.do"/>'>
       <td>     
         <div><a class="btn btn-success btn-sm" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
  	 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
  	 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' >         
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
         <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
	 <input type="hidden" name="accion"          value='Elegir' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>
 </td>
  </tr>
</table>