<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <table class="table table-striped table-bordered table-condensed table-responsive" >
  <tr>
    <td width="40%" valign="top"> 
  <table class="table table-striped table-bordered table-condensed table-responsive" >
      <tr>
       <th colspan="2"><center>DATOS DEL PACIENTE LABORATORIO</center></th>
      </tr>  
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">No. HCL - Nombre Completo</td>    
        <td bgcolor="#F2F2F2"><c:out value = "${datos.hcl}"/>&nbsp;-&nbsp;<c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Fecha de Nacim./Edad</td>    
        <td bgcolor="#F2F2F2"><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yy'/>-<font color="blue" size="4"> <c:out value="${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      <tr style="font-size:10pt">    
            <td class="etiqueta"bgcolor="#F2F2F2">Sexo - Direccion</td>
            <c:if test="${datos.id_tipo_sexo=='1'}">
                <td bgcolor="#F2F2F2">FEMENINO&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></td>
            </c:if>
            <c:if test="${datos.id_tipo_sexo=='2'}">
                <td bgcolor="#F2F2F2">MASCULINO&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></td>
            </c:if>  	      
      </tr>   
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr bgcolor="#F2F2F2">    
            <td class="etiqueta">Factores de Riesgo</td>          
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
 </table>
 
 <table class="table table-striped table-bordered table-condensed table-responsive" width="20%">
<tr>
<td><form name=formaL1 method=post action='<c:url value="/Laboratorio.do"/>'>
     <td colspan="2">
      <div class="volver"><a class="btn btn-success" href="javascript:document.formaL1.submit();">Retornar</a></div></td>
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
     <td><form name=formaImp method=post action='<c:url value="/Laboratorio.do"/>'>
      <td colspan="2">
      <div class="imprimir"><a class="btn btn-warning" href="javascript:document.formaImp.submit();">ImprimirTodo</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='ImprimirLab'>
     </form></td>
    <c:if test="${codesta=='200010'}">  
      <c:if test="${nrecantlab>0}">    
        <td><form name=formaImp4 method=post action='<c:url value="/Laboratorio.do"/>'>
          <td colspan="2">
          <div class="siguiente"><a class="btn btn-warning" href="javascript:document.formaImp4.submit();">Rep.Ult.Lab</a></div></td>
            <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
            <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
            <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
            <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
            <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
            <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
            <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
            <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
            <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
            <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
            <input type="hidden" name='accion'          value='RepetirLabos'>
         </form></td>    
      </c:if>
    </c:if>
    <c:if test="${datoestab.area!='P'}">  
     <td><form name=formaImpT method=post action='<c:url value="/Laboratorio.do"/>'>
      <td colspan="2">
      <div class="imprimir"><a class="btn btn-warning" href="javascript:document.formaImpT.submit();">ImprimSeparado</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
        <input type="hidden" name='sweco'           value='<c:out value="${sweco}"/>'> 
        <input type="hidden" name='accion'          value='ImprimirLabT'>
     </form></td>
     </c:if>
 </tr>
  </table>
  
 <table class="table table-striped table-bordered table-condensed table-responsive" width="20%">
  <tr style="font-size:10pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> FECHA PED. </th>
    <th bgcolor="#F2F2F2"> Tipo LAb. </th>
    <th bgcolor="#F2F2F2"> LABORATORIO </th>
    <th bgcolor="#F2F2F2"> Indicacion </th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th> 
    </tr>  
   <c:forEach var="lista" items="${listalab}" varStatus="contador">
     <tr style="font-size:10pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td align="center" style="font-size:8px"><c:out value="${lista.id_laboratorio}"/>-<c:out value="${lista.id_pedido}"/><br><c:out value="${lista.id_costo}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy'/><br> <font color="red"><fmt:formatDate value="${lista.fechap}" pattern='HH:mm'/></font></td> 
       <td align="left" style="font-size:8px"><c:out value="${lista.bacterias}"/></td>
       <td align="center"><c:out value="${lista.laboratorio}"/></td>
       <td align="center"><c:out value="${lista.tipoconsulta}"/></td>
       <c:if test="${lista.id_estado=='B'}">
           <td align="center" style="color:red">Realizado</td>
       </c:if>    
       <c:if test="${lista.id_estado=='A' or lista.id_estado=='X' or lista.id_estado=='Y' or lista.id_estado=='G'}">    <!--G los tienen que pagar externos-->
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Laboratorio.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno"     value=<c:out value="${lista.id_cuaderno}"/> >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name="accion"          value='Eliminar' >
         <input type="hidden" name="sw1"             value='1' >
       </td>
     </form>
     </c:if>
    </tr> 
   </c:forEach>
 </table>
    </td>
    <td width="60%" valign="top">

 <form name="adicionar" method="POST" action='<c:url value="/Laboratorio.do"/>' >

 <table class="table table-striped table-bordered table-condensed table-responsive">
     <tr>
     <td>
     <c:if test="${Rayos!='SI'}">
         <SELECT NAME="accionl" class="form-control" onchange="javascript:document.adicionar.submit();">
            <option value="0">Seleccione Laboratorio </option> 
            <c:forEach var="listalabo1" items="${listarLabo1}" >
  	      <option value="<c:out value="${listalabo1.laboratorio}"/>" <c:if test="${listalabo1.laboratorio == accionl}">selected</c:if>> 
	        <c:out value="${listalabo1.laboratorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>
     
     </td>
     <td>
        <SELECT NAME="labgrupos" class="form-control" onchange="javascript:document.adicionar.submit();">
            <option value="0">Seleccione Laboratorios Prediseñados</option>
            <c:forEach var="listalabog" items="${listarGrupoLab}" >
  	      <option value="<c:out value="${listalabog.id_laboratoriog}"/>" <c:if test="${listalabog.id_laboratoriog == id_labgrupo}">selected</c:if>> 
	        <c:out value="${listalabog.laboratorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>
     </td>
     </c:if>
     </tr>
     <c:if test="${Rayos=='SI'}">
         <input type="submit" class="btn btn-success" name='accion' value='Volver' >
                             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                             <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
                             <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                             <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                             <input type="hidden" name='id_laboearorio'  value='<c:out value="${id_laboratorio}"/>'>
                             <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                             <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
                             <input type="hidden" name="Rayos"           value='<c:out value="${Rayos}"/>' >
                             <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
                             <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
                             <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
                             <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
                             <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
                             <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >                                
         <SELECT NAME="labox" onchange="javascript:document.adicionar.submit();">
            <c:forEach var="labx" items="${laborx}">
  	      <option value="<c:out value="${labx.laboratorio}"/>" <c:if test="${labx.laboratorio == labox}">selected</c:if>> 
	        <c:out value="${labx.laboratorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>
          
     </c:if> 
     <br>
  
  <tr>
     <th colspan="4">
        <input class="btn btn-info" type="submit" name='accionc' value='Congifurar'> 
        <input type="text" name="nombrelab" value="<c:out value = "${labora}"/>"  maxlength=10 placeholder="Buscar ..."/>
        <input type="submit" class="btn btn-primary" name='accionl' value='Buscar Agrupados'>
     </th>
  </tr>
  
 <c:if test="${id_labgrupo>'0'}">
 <tr >
  <td colspan="4">
     <table class="table table-striped table-hover table-bordered table-condensed table-responsive">  
     <tr>
        <th colspan="2" style="font-size:18pt" align="center"  bgcolor="#F2F2F2"><center><input class="btn btn-success" type="submit" name='accion' value='Agregar Todo'> <c:out value="${nombrelabd}"/></center></th>
     </tr>      
     <tr>    
      <td>   
       <table class="table table-striped table-hover table-bordered table-condensed table-responsive"> 
         <c:forEach var="listab" items="${listarGrupoLabDet}" varStatus="contador">
            <c:if test="${(contador.count mod 2) == 1}"> 
               <tr style="font-size:9pt">
                    <td align="right"><c:out value="${listab.id_estado}"/></td>
               </tr>   
            </c:if>
         </c:forEach>   
       </table>
       </td>
       <td>
       <table class="table table-striped table-hover table-bordered table-condensed table-responsive"> 
         <c:forEach var="listab" items="${listarGrupoLabDet}" varStatus="contador3">
            <c:if test="${(contador3.count mod 2) == 0}"> 
               <tr style="font-size:9pt">
                    <td align="right"><c:out value="${listab.id_estado}"/></td>
               </tr>   
            </c:if>
         </c:forEach>   
       </table>
       </td>
     </tr>
     </table>
     <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
     <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
     <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
     <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
     <input type="hidden" name='id_laboearorio'  value='<c:out value="${id_laboratorio}"/>'>
     <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
     <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
 </td>
 </tr>
 </c:if>
 
 <c:if test="${!(id_labgrupo>'0')}">
  <tr>
     <th colspan="4" style="font-size:18pt" align="center"  bgcolor="#F2F2F2"><center><c:out value="${accionl}"/></center></th>
  </tr>  
  <tr>
  <td>
 <table class="table table-striped table-hover table-bordered table-condensed table-responsive">
  <c:forEach var="listab" items="${listarLab}" varStatus="contador">
     <c:if test="${(contador.count mod 2) == 1}"> 
       <tr style="font-size:9pt">
         <c:if test="${listab.id_nivel=='1'}">
            <td align="right"  style="color:red"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='2'}">
            <td align="right"  style="color:blue"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='3'}">
            <td align="right"  style="color:green"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='0'}">
            <td align="right"  ><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
       </tr>   
     </c:if>     
   </c:forEach>
 </table>
 </td>
 
 <td>
 <table class="table table-striped table-hover table-bordered table-condensed table-responsive">
 <c:forEach var="listab" items="${listarLab}" varStatus="contador">
     <c:if test="${(contador.count mod 2) == 0}"> 
       <tr style="font-size:9pt">
         <c:if test="${listab.id_nivel=='1'}">
            <td align="right" style="color:red"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='2'}">
            <td align="right"  style="color:blue"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='3'}">
            <td align="right"  style="color:green"><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
         <c:if test="${listab.id_nivel=='0'}">
            <td align="right"  ><c:out value="${listab.costo}"/></td>
            <td><input type=checkbox name="accioncurativa" value="<c:out value="${listab.id_costo}"/>" ></td>
         </c:if>
       </tr>   
     </c:if>     
   </c:forEach>
 </table>
 
 <tr>
    <td class="etiqueta" colspan="2"><font color="blue"><c:out value="${accionl}"/></font>&nbsp;&nbsp; Indicacion ::<input type=checkbox name="accioncurativa" value="143" >
    <textarea name="indicacion" rows="2" cols="20" style="width: 100%"></textarea></td>
 </tr>
 </table>
<center>
 <input type="submit" name='accion2' class="btn btn-primary btn-lg" value='Agregar'>  
 <input type="submit" name='accion' class="btn btn-success btn-lg" value='Terminar'>  
</center>  
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
 <input type="hidden" name='laboratorio'     value='<c:out value="${listab.costo}"/>'> 
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_laboearorio'  value='<c:out value="${id_laboratorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name="id_pedido"       value='<c:out value="${id_pedido}"/>' >
 <input type="hidden" name="Rayos"           value='<c:out value="${Rayos}"/>' >
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='accionl'         value='<c:out value="${accionl}"/>'>
 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>' >
 <input type="hidden" name='sw'              value='<c:out value="${sw}"/>'>
 </c:if> 
 </form>

  </td>
  </tr>
   
</table>