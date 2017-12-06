<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<script language="javascript" type="text/javascript" src="./tiny_mce/tiny_mce.js"></script>

<table class="table table-striped table-condensed table-responsive">
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>DIAGNOSTICOS DE INGRESO PACIENTES INTERNADOS</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top"> 
<form name="adicionarcolegio" method="POST" action='<c:url value="/InternarPac.do"/>' >
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="4">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td colspan="4" width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>    
        <td align="right" bgcolor="#F2F2F2">HCL - Nombres:</td>    
        <td colspan="2"><c:out value = "${datos.hcl}"/> - <c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.:</td>    
        <td><c:out value="${fec_nacimiento}"/></td>
	<td style="color:blue"><b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                                  
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n:</td>    	      
        <td colspan="2"><c:out value = "${datos.direccion}"/></td>
      </tr>
   <br>
   </table>
   
   <table class="table table-striped table-bordered table-condensed table-responsive">
          <tr>
            <td align="right" bgcolor="#F2F2F2">Listar Pisos:  </td>	      
            <td>
              <SELECT NAME="id_piso" onchange="javascript:document.adicionarcolegio.submit();">
                <c:if test="${codesta == '200010'}">  
                    <option value="0">-- Sin piso --</option>
                </c:if> 
                <c:forEach var="lispiso" items="${listarPisos}">
                  <OPTION value="<c:out value="${lispiso.id_piso}"/>" <c:if test="${lispiso.id_piso == id_piso}">selected</c:if>> 
                    <c:out value="${lispiso.piso}"/>
                  </option>
                </c:forEach>

               </SELECT>	
            </td>       
         </tr>      
          <tr>
        <td align="right" bgcolor="#F2F2F2">Listar Salas:  </td>      
        <td>
          <SELECT NAME="id_sala" onchange="javascript:document.adicionarcolegio.submit();">
	    <option value="0">-- Sin sala --</option>
            <c:forEach var="estado" items="${listarSalas}">    
	         <OPTION value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>> 
	             <c:out value="${estado.sala}"/>
	         </option>
	    </c:forEach>
             
           </SELECT>	
        </td>       
       </tr>      
      <tr>
            <td align="right" bgcolor="#F2F2F2">Buscar Cama:  </td>	      
            <td>
              <SELECT NAME="id_cama">
                <option value="0">-- Sin cama --</option>  
                <c:forEach var="estado" items="${listarCama}">
                  <OPTION value="<c:out value="${estado.id_cama}"/>" <c:if test="${estado.id_cama == id_cama}">selected</c:if>> 
                    <c:out value="${estado.cama}"/>
                  </option>
                </c:forEach>    
               </SELECT>	
            </td>        
       </tr> 
      
     <tr>
        <td align="right" bgcolor="#F2F2F2">Tipo de Ingreso:  </td>
        <td>
          <SELECT NAME="tingreso">
              <option value="E" >Expontaneo </option>
              <option value="R">Referido</option>
          </SELECT>
        </td>
     </tr> 
 </table>
    </td> 
  </tr>
  <tr>
    </tr>   
 </table>

 <c:if test="${terminar == 'si'}">
     <center><input type="submit" name='accion' class="btn btn-primary btn-lg" value='Terminar'></center>
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

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
     <tr>
         <th colspan="4"> Coloque los Diagnosticos de Ingreso Paciente Internado  </th>
     </tr>
    <tr style="font-size:9pt">
           <th  bgcolor="#F2F2F2" style="font-size:7pt"> No </th>
           <th bgcolor="#F2F2F2"> CIE10 </th>
           <th bgcolor="#F2F2F2"> CIE10 LITERAL</th>
           <th  bgcolor="#F2F2F2"> ELIMINAR </th>
     </tr>
     <c:forEach var="morbi" items="${morbi}" varStatus="contador1">
        <tr style="font-size:9pt">
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
          <form name=formaMorbi<c:out value="${contador1.count}"/> method=post action='<c:url value="/InternarPac.do"/>'>
              <td>
                 <div><a class="btn btn-danger btn-xs" href="javascript:document.formaMorbi<c:out value="${contador1.count}"/>.submit();">Eliminar</a></div>
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
                 <input type="hidden" name='morbilidad'      value='<c:out value="${morbi.id_historia}"/>'>
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='camaactual'      value='<c:out value="${camaactual}"/>'>
                 <input type="hidden" name='analisis'        value='<c:out value="${analisis}"/>' >
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>
                 <input type="hidden" name='id_cama'         value='<c:out value="${id_cama}"/>'>
                 <input type="hidden" name='id_sala'         value='<c:out value="${id_sala}"/>'>
                 <input type="hidden" name='boton'           value='EliminarCie10' >
                 <input type="hidden" name='sw'              value='1' >
                </td>
             </form>
           </tr>   
         </c:forEach>
 </table>
  </td>
    <td width="50%" valign="top">
    <table class="table table-striped table-condensed table-responsive">
    <form name=formabus action="<c:url value="/InternarPac.do"/>" method="POST">        
      <fieldset>
          <tr>    
            <td align=right>Nombre de la Enfermedad</td>    	
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${literal}"/>"  size="30" maxlength=30 onblur='validar=(nombres,"A")'/></td>            
            <td ><input class="btn btn-success" name=boton type="submit" value="Buscar Enfermedad"></td>
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
     <form name=formabuscod action="<c:url value="/InternarPac.do"/>" method="POST">  
        <fieldset><tr> 
            <td align=right>Codigo CIE10</td>    
            <td ><input class="form-control" type="text" name="nombres"  value="<c:out value="${codigo}"/>"  maxlength=20 onblur='validar=(codigo,"A9")'/></td>            
            <td ><input class="btn btn-success" name=boton type="submit" value="Buscar CIE10"></td>
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
     
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> No </th>
    <th> Codigo </th>    
    <th> ENFERMEDAD </th>            
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarEnfermedades}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       
       <td><c:out value="${lista.ubicacion}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPac.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
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

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> No </th>
    <th> Codigo </th>    
    <th> ENFERMEDAD </th>            
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listarEnfermedadesCot}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       
       <td><c:out value="${lista.ubicacion}"/></td>    
       <td><c:out value="${lista.concentra}"/></td>   
     <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPac.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
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