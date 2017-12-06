<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>RECETA PACIENTE INTERNADO Ley 475 (exxSUMI)</center></th>
  </tr>
  <tr>
    <td width="50%" valign="top">
    <table class="table table-bordered table-hover table-condensed table-responsive">
     <tr>
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
       <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>    	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Edad</td>          
        <td style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>
      </tr>
      <c:if test="${fn:length(datos.factor_riesgo)>2 }">
         <tr>    
            <td align="right" bgcolor="#F2F2F2">Factores de Riesgo</td>    	      
            <td style="font-size:20pt;color:red"><c:out value = "${datos.factor_riesgo}"/></td>
          </tr>  
      </c:if>
   </table>
   <table border="1"><tr>
   <c:if test="${tipo_medico== '33' and administra!='7'}">      
    <form name=formaPre<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionI.do"/>'>
       <td>     
         <div><a class="btn btn-success"  href="javascript:document.formaPre<c:out value="${contador.count}"/>.submit();">Retormar</a></div>
  	 <input type="hidden" name="id_historial"    value='<c:out value="${id_reservacion}"/>' >
         <input type="hidden" name="id_historia"    value='<c:out value="${id_historia}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="nombres"         value='<c:out value="${datos.nombres}"/>'>
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name="nombre"          value='<c:out value="${nombre}"/>' >
	 <input type="hidden" name="accion"          value='swinter' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>     
   </c:if>
   <c:if test="${tipo_medico!= '33'}">   
    <form name=formaReti method=post action='<c:url value="/PlanAccionI.do"/>'>
         <div ><a class="btn btn-success" href="javascript:document.formaReti.submit();">Retornar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='swinter'         value='swinter'> 
          <input type="hidden" name='accion'          value='Ninguno'>
    </form>
  </c:if>
  </tr></table>
  
  <table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Codigo </th>
    <th bgcolor="#F2F2F2"> DESCRIPCIION </th>
    <th bgcolor="#F2F2F2"> ACCION </th>
    <th bgcolor="#F2F2F2"> ACCION </th>
    </tr>  
   <c:forEach var="listado" items="${listarRecetas}" varStatus="contador">
     <tr style="font-size:9pt" >
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.prestacion}"/></td>      
       <td>[<c:out value="${listado.id_persona}"/>]<c:out value="${listado.descripcion}"/><font color="red" size="2"><b>[<c:out value="${listado.cantidad}"/>]</b></font></td> 
     <form name=formaEe<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaEe<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
  	 <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
         <input type="hidden" name="prestacion"      value='<c:out value="${listado.prestacion}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${listado.id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='eliminar' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>        
     <form name=formaEm<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEm<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >         
  	 <input type="hidden" name="id_prestacion"   value='<c:out value="${listado.id_prestacion}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>     
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='modificar' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
     </tr>
     <tr>
      <td colspan=4 align="center"> 
  <table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> No. </th>
    <th> fecha </th>
    <th> Medicamento </th>
    <th> Forma Far. </th>
    <th> Concent </th>
    <th> Cant. </th>
    <th> Eliminar </th>
    </tr>  
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
     <c:if test="${listadox.id_prestacion == listado.id_prestacion}">
       <tr style="font-size:9pt">
       <td align="center"><c:out value="${contadora.count}"/></td>
       <td align="center"><fmt:formatDate value="${listadox.fecha}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${listadox.medicamento}"/></td>
       <td><c:out value="${listadox.forma_far}"/></td>
       <td><c:out value="${listadox.concentra}"/></td>
       <td align="center" style="font-size:12pt"><fmt:formatNumber value="${listadox.salida}" maxFractionDigits="0"/></td>           
    <c:if test="${tipo_medico=='33'}">
        
        <c:if test="${listadox.id_estado=='C' or listadox.id_estado=='B'}"> 
         <td style="color:blue">Entregado</td> 
        </c:if> 
         <form name=formaF<c:out value="${contadora.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaF<c:out value="${contadora.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >
  	 <input type="hidden" name="id_medicamento"  value='<c:out value="${listadox.id_medicamento}"/>' >
         <input type="hidden" name="id_prestacion"   value='<c:out value="${listadox.id_prestacion}"/>' > 
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name="id_persona"      value='<c:out value="${listadox.id_persona}"/>' > 
         <input type="hidden" name='id_detalle'      value='<c:out value="${listadox.id_detalle}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='eliminarsumi' >
	 <input type="hidden" name="sw"              value='1' >
        </td>
       </form>  
    
       
      </c:if> 
   <c:if test="${tipo_medico!='33'}">
      <c:if test="${listadox.id_estado=='C' or listadox.id_estado=='B'}"> 
         <td style="color:blue">Entregado</td>
      </c:if> 
      <c:if test="${listadox.id_estado!='C' and  listadox.id_estado!='B'}">  <!-- listadox.id_estado!='C' or tipo_medico!='33' -->      
      <form name=formaF<c:out value="${contadora.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaF<c:out value="${contadora.count}"/>.submit();">Eliminar</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >
  	 <input type="hidden" name="id_medicamento"  value='<c:out value="${listadox.id_medicamento}"/>' >
         <input type="hidden" name="id_prestacion"   value='<c:out value="${listadox.id_prestacion}"/>' > 
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name="id_persona"      value='<c:out value="${listadox.id_persona}"/>' > 
         <input type="hidden" name='id_detalle'      value='<c:out value="${listadox.id_detalle}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='eliminarsumi' >
	 <input type="hidden" name="sw"              value='1' >
        </td>
       </form>
       </c:if>
      </c:if>
      </tr>
     </c:if>
     
   </c:forEach>
   </table>       
      </td>     
     </tr>
   </c:forEach>
    </table>
    </td>
 <td width="50%" valign="top">
  <c:if test="${medica == 'si'}">
  <table class="table table-striped table-condensed table-responsive">    
   <form name=formaNom action="<c:url value="/RecetarInternado.do"/>" method="POST">        
          <tr>    
            <td class="colh" align=right>Nombre Prestacion</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombresPres"  value="<c:out value="${nombresPres}"/>"  maxlength=20 onblur='validar=(nombresPres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarNom"></td>
          </tr>  
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
          <input type="hidden" name='swinter'         value='swinter'> 
        </form>  
        <form name=forma action="<c:url value="/RecetarInternado.do"/>" method="POST">        
          <tr>    
            <td class="colh" align=right>Codigo Pretacion</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres"  value="<c:out value="${nombres}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarCod"></td>
          </tr>  
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
          <input type="hidden" name='swinter'         value='swinter'> 
        </form>  
        <form name=formaMed action="<c:url value="/RecetarInternado.do"/>" method="POST">        
         <tr>    
            <td class="colh" align=right>Por Medicamento</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombremed"  value="<c:out value="${nombremed}"/>"  maxlength=20 onblur='validar=(nombres,"A ")'/></td>            
            <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarMed"></td>
          </tr>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
          <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
          <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'> 
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
        </form>  
     </table>
     
     
<table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> No. </th>
    <th> Codigo </th>
    <th> DESCRIPCION </th>            
    <th> Costo </th>
     <th> Añadir </th>        
    </tr>  
 <c:forEach var="lista" items="${listarPrestaciones}" varStatus="contador"> 
   <c:set var="existeb"  value="no"/>     
   <c:forEach var="listado" items="${listarRecetas}">
   
     <c:if test="${listado.id_prestacion == lista.id_prestacion}">
           <c:set var="existeb"  value="si"/>             
     </c:if>
   </c:forEach>      
   <c:if test="${existeb == 'no'}"> 
     <tr style="font-size:9pt">
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <c:if test="${lista.id_prestacion=='3397' or lista.id_prestacion=='3397' or lista.id_prestacion=='3508' or lista.id_prestacion=='3526' or lista.id_prestacion=='3527' or lista.id_prestacion=='3528' or lista.id_prestacion=='3529' or lista.id_prestacion=='3530' or lista.id_prestacion=='3531' or lista.id_prestacion=='3532' or lista.id_prestacion=='3504' or lista.id_prestacion=='3505' or lista.id_prestacion=='3525' or lista.id_prestacion=='3441' or lista.id_prestacion=='3496' or lista.id_prestacion=='3185' or lista.id_prestacion=='3186' or lista.id_prestacion=='3187' or lista.id_prestacion=='3188' or lista.id_prestacion=='3189' or lista.id_prestacion=='3434' or lista.id_prestacion=='3475'}"> 
           <td><input type="text" name="cantid" value=1 size=3 maxlength=3 onblur='validar(cantid,"9")'/></td>               
       </c:if>
       <c:if test="${lista.id_prestacion!='3397' and lista.id_prestacion!='3397' and lista.id_prestacion!='3508' and lista.id_prestacion!='3526' and lista.id_prestacion!='3527' and lista.id_prestacion!='3528' and lista.id_prestacion!='3529' and lista.id_prestacion!='3530' and lista.id_prestacion!='3531' and lista.id_prestacion!='3532' and lista.id_prestacion!='3504' and lista.id_prestacion!='3505' and lista.id_prestacion!='3525' and lista.id_prestacion!='3441' and lista.id_prestacion!='3496' and lista.id_prestacion!='3185' and lista.id_prestacion!='3186' and lista.id_prestacion!='3187' and lista.id_prestacion!='3188' and lista.id_prestacion!='3189' and lista.id_prestacion!='3434' and lista.id_prestacion!='3475'}"> 
           <td align="center"><b><c:out value="${lista.costo}"/></b></td>  
       </c:if>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >                  
  	 <input type="hidden" name="id_prestacion"   value='<c:out value="${lista.id_prestacion}"/>' >
         <input type="hidden" name="prestacion"      value='<c:out value="${lista.prestacion}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>         
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='adicion' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
   </c:if>
   </tr>
   </c:forEach>
 </table>
 
 <table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
      <th> No. </th>
      <th> Codigo </th>
      <th> DESCRIPCION </th>            
      <th> Costo </th> 
      <th> Añadir </th>            
   </tr>  
   <c:forEach var="lista" items="${listarPrestacionesCot}" varStatus="contador">
         <!-- ********** buscamos si se dio el medicamento ************ -->  
       <c:set var="existeb"  value="no"/>     
       <c:forEach var="listado" items="${listarRecetas}">
            <c:if test="${listado.id_prestacion == lista.id_prestacion}">
               <c:set var="existeb"  value="si"/>            
            </c:if>
       </c:forEach>      
   <c:if test="${existeb == 'no'}">   
     <tr style="font-size:9pt">
      <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.prestacion}"/></td>      
       <td><c:out value="${lista.descripcion}"/></td>      
       <c:if test="${lista.id_prestacion=='3397'  or lista.id_prestacion=='3397' or lista.id_prestacion=='3508' or lista.id_prestacion=='3526' or lista.id_prestacion=='3527' or lista.id_prestacion=='3528' or lista.id_prestacion=='3529' or lista.id_prestacion=='3530' or lista.id_prestacion=='3531' or lista.id_prestacion=='3532' or lista.id_prestacion=='3504' or lista.id_prestacion=='3505' or lista.id_prestacion=='3525' or lista.id_prestacion=='3441' or lista.id_prestacion=='3496'}"> 
           <td><input type="text" name="cantid" value=1 size=3 maxlength=3 onblur='validar(cantid,"9")'/></td>               
       </c:if>
       <c:if test="${lista.id_prestacion!='3397' and lista.id_prestacion!='3397' and lista.id_prestacion!='3508' and lista.id_prestacion!='3526' and lista.id_prestacion!='3527' and lista.id_prestacion!='3528' and lista.id_prestacion!='3529' and lista.id_prestacion!='3530' and lista.id_prestacion!='3531' and lista.id_prestacion!='3532' and lista.id_prestacion!='3504' and lista.id_prestacion!='3505' and lista.id_prestacion!='3525' and lista.id_prestacion!='3441' and lista.id_prestacion!='3496'}"> 
           <td align="center"><b><c:out value="${lista.costo}"/></b></td>  
       </c:if>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
  	 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >                  
  	 <input type="hidden" name="id_prestacion"   value='<c:out value="${lista.id_prestacion}"/>' >
         <input type="hidden" name="prestacion"      value='<c:out value="${lista.prestacion}"/>' >
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>    
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
	 <input type="hidden" name="accion"          value='adicion' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </c:if>
   </c:forEach>
</table>
   </c:if> 
 <c:if test="${medica == 'no'}"> 
     <form name=forma action="<c:url value="/RecetarInternado.do"/>" method="POST">        
         <table >
              <tr><td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="Otra Prestacion"></td></tr>  
         </table>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>   
         <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
         <input type="hidden" name='swinter'         value='swinter'> 
     </form> 
     
 <table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th> No. </th>
    <th> MEDICAMENTO </th>
    <th> FORMA </th>                
    <th> CONCENTRA </th>            
    <th> STOCK </th>            
    <th> Cant. </th>            
    <th> INDICACION </th>
    <th> Dosifica<br>dias </th>
    <th> Recetar </th>
    </tr>  
   <c:forEach var="lista" items="${listarRecetasPres}" varStatus="contador">     
   <!-- ********** buscamos si se dio el medicamento ************ -->  
   <c:set var="existe"  value="no"/>     
   <c:forEach var="listadox" items="${listarRecetaSumi}" varStatus="contadora">
   </c:forEach>      
   <c:if test="${existe == 'no'}">     
     <tr style="font-size:9pt">
       <td><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.medicamento}"/></td>      
       <td><c:out value="${lista.forma_far}"/></td>          
       <td><c:out value="${lista.concentra}"/></td>
      <c:if test="${lista.stock > 0}">
          <td align="center" style="font-size:10pt"><fmt:formatNumber value="${lista.stock}" maxFractionDigits="0"/></td>
      </c:if>     
      <c:if test="${lista.stock <= 0}">
             <td style="color:red"><b>SIN STOCK</b></td>                           
      </c:if>
             <form name=formaMedPres<c:out value="${contador.count}"/> method=post action='<c:url value="/RecetarInternado.do"/>'>
               <td><input type="text" name="entrada" value="<fmt:formatNumber value="${lista.entrada}" maxFractionDigits="0"/>" size=3 maxlength=4 onblur='validar(entrada,"9")'/></td>               
               <td><input type="text" name="indicacion" value="" size=10 maxlength=100 /></td> 
               <td><SELECT NAME="dosifica">
               
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>"><c:out value="${dias}"/></option>  
                     </c:forEach>
                   </SELECT></td> 
               <td>     
                 <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMedPres<c:out value="${contador.count}"/>.submit();">Añadir</a></div>
                 <input type="hidden" name="id_reservacion"  value='<c:out value="${id_reservacion}"/>' >                  
                 <input type="hidden" name="id_medicamento"  value='<c:out value="${lista.id_medicamento}"/>' >
                 <input type="hidden" name="id_prestacion"   value='<c:out value="${lista.id_prestacion}"/>' >
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>' >
                 <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>  
                 <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>  
                 <input type="hidden" name='swx'             value='<c:out value="${swx}"/>'>
                 <input type="hidden" name='swinter'         value='swinter'> 
                 <input type="hidden" name="accion"          value='adicionsumi' >
                 <input type="hidden" name="sw"              value='1' >
               </td>
             </form>
     </c:if>      
   </c:forEach>
</table>
   </c:if> 
   </td>
  </tr>
</table>
