<%@include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<div><a class="btn btn-success" href='ListarPacientes.do'>Volver</a></div>

<table class="table table-striped table-bordered table-condensed table-responsive">
 <tr>   
 <td>
 <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
       <th colspan="4">LISTA DEPENDIANTES </th>
    </tr>
    <tr>
    <th style="font-size:8pt"> HCL </th>
    <th style="font-size:8pt"> NOMBRE </th>
    <th style="font-size:8pt"> Fecha <br>Nacim.</th>                
    <th style="font-size:8pt"> Parentesco </th>                
    </tr>  
    <c:forEach var="lista" items="${listaPacientesD}" varStatus="contador">
       <c:if test="${lista.id_carpeta != 0}"> 
         <!-- ********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->
           <td style="font-size:8pt"><c:out value="${lista.hcl}"/></td>  
           <td style="font-size:8pt"><c:out value="${lista.nombres}"/></td>   
         <td  style="font-size:8pt"><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
         <td  style="font-size:8pt"><c:out value="${lista.tipo}"/></td> 
     </c:if> 
   </c:forEach> 
 </table>     
 </td>
 <!--fin de tabla carpetas familiares-->
 <td>
<form name="adicionapaciente" method="POST" action='<c:url value="/ConfirmarPaciente.do"/>' >
<center>    
<table class="formulario">
  <tr>
    <th colspan="3">CONFIRME LOS DATOS DE VIGENCIA</th>
  </tr>
       <tr>  
        <td class="etiqueta">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>  
       <tr>    
        <td class="etiqueta">Nombre Completo</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Fecha de Nacimiento</td>    
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
       <tr>
            <td class="etiqueta">Nro Matricula</td>    
            <td style="font-size: 16pt; color: blue"><c:out value="${datos.nro_registro}"/>&nbsp;&nbsp;<input type="text" name="codigo" value="<c:out value="${datos.nro}"/>" size="15" style="color:blue" readonly/><font color="red"></font></td>	                 
          </tr>
          <tr>
            <td class="etiqueta">Zona Paciente</td>    
            <td><c:out value="${datopacv.expedido}"/></td>	                 
          </tr> 
          <tr>
            <td class="etiqueta">Domicilio Paciente</td>    
            <td><c:out value="${datopacv.seguro}"/>&nbsp;&nbsp;Nº<c:out value="${datopacv.num_cladoc}"/></td>	                 
          </tr> 
          <tr>
            <td class="etiqueta">Policonsultorio</td>    
            <td><c:out value="${datopacv.paterno}"/></td>	                 
          </tr>
           
          <tr>
            <td class="etiqueta">Consultorio</td>    
            <td><c:out value="${datopacv.ocupacion}"/></td>	                 
          </tr>
        <tr>
         <td class="etiqueta">Edad</td>	      
         <td style="font-size: 22pt; color: red"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</td>
       </tr>
   </table>
 </center>
 <center>
  
  <br>
  
  <c:if test="${codesta == '200010'}">
      <input type="submit" name='accion' class="btn btn-primary" value='Riesgos Extraordinarios' onclick="document.adicionapaciente.action='<c:url value="/ListarVigenciaAt.do"/>';">       
      <input type="submit" name='accion' class="btn btn-primary" value='Accidentes Trabajo' onclick="document.adicionapaciente.action='<c:url value="/ListarVigenciaAt.do"/>';">
      <input type="submit" name='accion' class="btn btn-primary" value='Empresa Mora' onclick="document.adicionapaciente.action='<c:url value="/ListarVigenciaAt.do"/>';">
      <input type="submit" name='accion' class="btn btn-primary" value='Sin Documentos' onclick="document.adicionapaciente.action='<c:url value="/ListarVigenciaAt.do"/>';">
  </c:if>
  
 </center>
  
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='paterno'         value='<c:out value="${datos.paterno}"/>'>
 <input type="hidden" name='materno'         value='<c:out value="${datos.materno}"/>'>
 <input type="hidden" name='nombre'          value='<c:out value="${datos.nombre}"/>'>
 <input type="hidden" name='id_sexo'         value='<c:out value="${buscarSexo.id_sexo}"/>'>
 <input type="hidden" name='id_documento'    value='<c:out value="${buscarDocumento.id_documento}"/>'>
 <input type="hidden" name='dia' 	     value='<c:out value="${dia}"/>'>
 <input type="hidden" name='mes'   	     value='<c:out value="${mes}"/>'>
 <input type="hidden" name='edad'   	     value='<c:out value="${datos.edad}"/>'>
 <input type="hidden" name='anio' 	     value='<c:out value="${anio}"/>'>
 <input type="hidden" name='dia_r' 	     value='<c:out value="${dia_r}"/>'>
 <input type="hidden" name='mes_r' 	     value='<c:out value="${mes_r}"/>'>
 <input type="hidden" name='anio_r' 	     value='<c:out value="${anio_r}"/>'>
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
 <input type="hidden" name='residencia'      value='<c:out value="${datos.residencia}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='direccion'       value='<c:out value="${datos.direccion}"/>'>
 <input type="hidden" name='telefono'        value='<c:out value="${datos.telefono}"/>'>
 <input type="hidden" name='ocupacion'       value='<c:out value="${datos.ocupacion}"/>'>
 <input type="hidden" name='carnet'          value='<c:out value="${datos.carnet}"/>'>
 <input type="hidden" name='id_pais'         value='<c:out value="${id_pais}"/>'>
 <input type="hidden" name='id_ecivil'       value='<c:out value="${buscarEstadoCivil.id_ecivil}"/>'>
 <input type="hidden" name='id_departamento' value='<c:out value="${buscarDepartamento.id_departamento}"/>'>
 <input type="hidden" name='id_provincia'    value='<c:out value="${buscarProvincia.id_provincia}"/>'>
 <input type="hidden" name='id_localidad'    value='<c:out value="${buscarLocalidad.id_localidad}"/>'>
 <input type="hidden" name='id_escolaridad'  value='<c:out value="${buscarEscolaridad.id_escolaridad}"/>'>
 <input type="hidden" name='id_estado'       value='<c:out value="${datos.id_estado}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='swci'            value='<c:out value="${swci}"/>'>
 <input type="hidden" name='accionsa'        value='ZZZ'>
</form>
</td>
   <c:if test="${cod_esta == '200010'}">
    <td>
    <table class="tabla">
      <tr>
        <th colspan="3">DATOS EMPRESA</th>
      </tr>  
       <tr>
        <td class="etiqueta">Cod. empresa</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${empresa.id_empresa}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Cod. Patronal</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${empresa.cod_patronal}"/></td>            
      </tr>     
     
      <tr>
        <th colspan="3">DETALLE PAGO EMPRESA</th>
      </tr>  
      <tr>
        <th> Fecha</th>
        <th> Mes </th>
        <th> Gestion </th>
        
       </tr>  
       <c:forEach var="lista" items="${listarpagos}" varStatus="contador">
         <!-- ********** Esto es para el efecto ************ -->
           <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->  
           <td style="font-size:11pt"><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/></td>
           <c:if test="${lista.mes == '1'}">
                 <td style="font-size:11pt; color:blue">Enero</td>             
           </c:if> 
           <c:if test="${lista.mes == '2'}">
                 <td style="font-size:11pt; color:blue">Febrero</td>             
           </c:if> 
           <c:if test="${lista.mes == '3'}">
                 <td style="font-size:11pt; color:blue">Marzo</td>             
           </c:if> 
           <c:if test="${lista.mes == '4'}">
                 <td style="font-size:11pt; color:blue">Abril</td>             
           </c:if> 
           <c:if test="${lista.mes == '5'}">
                 <td style="font-size:11pt; color:blue">Mayo</td>             
           </c:if> 
           <c:if test="${lista.mes == '6'}">
                 <td style="font-size:11pt; color:blue">Junio</td>             
           </c:if> 
           <c:if test="${lista.mes == '7'}">
                 <td style="font-size:11pt; color:blue">Julio</td>             
           </c:if> 
           <c:if test="${lista.mes == '8'}">
                 <td style="font-size:11pt; color:blue">Agosto</td>             
           </c:if> 
           <c:if test="${lista.mes == '9'}">
                 <td style="font-size:11pt; color:blue">Septiembre</td>             
           </c:if> 
           <c:if test="${lista.mes == '10'}">
                 <td style="font-size:11pt; color:blue">Octubre</td>             
           </c:if> 
           <c:if test="${lista.mes == '11'}">
                 <td style="font-size:11pt; color:blue">Noviembre</td>             
           </c:if> 
           <c:if test="${lista.mes == '12'}">
                 <td style="font-size:11pt; color:blue">Diciembre</td>             
           </c:if> 
           
           <td style="font-size:11pt" align="center"><c:out value="${lista.gestion}"/></td>   
           
       </c:forEach>
     </table>      
    </td>
  </c:if>  
 </tr>
 </table>


<c:if test="${accion == 'Afiliar' or accion == 'Desafiliar'}">
  <div style="font-size:15pt"> Detalle Afiliaciones</div>

 <table class="tabla">
  <tr>
    <th> NRO </th>
    <th> Fecha<br>Registro </th>
    <th> Estado </th>
    <th> Tipo </th>
    <th> Seguro </th>
    <th> Carnet </th>
    <th> Fecha<br> Baja</th>                
   </tr>  
   <c:forEach var="lista" items="${buscapaciente}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <form name=formaUnir<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
          <td align="center">     
             <div><a href="javascript:document.formaUnir<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
             <input type="hidden" name="id_paciente"   value=<c:out value="${lista.id_paciente}"/> >
             <input type="hidden" name="id_carpeta"    value=<c:out value="${lista.id_carpeta}"/> >
             <input type="hidden" name='id_sexo'       value='<c:out value="${buscarSexo.id_sexo}"/>'>
             <input type="hidden" name='accion'        value='<c:out value="${accion}"/>'>
             <input type="hidden" name="accion1"       value='EliminaSeguro' >
             
             <input type="hidden" name="sw1"           value='1' >
          </td>
       </form>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/></td>  
       <td><c:out value="${lista.id_estado}"/></td>         
       <td><c:out value="${lista.tipo}"/></td>   
       <td><c:out value="${lista.seguro}"/></td>   
       <td><c:out value="${lista.carnet}"/></td>        
       <td><fmt:formatDate value="${lista.fec_baja}" pattern='dd/MM/yyyy'/></td>
   </c:forEach>
 </table>  
 </c:if>
 
 <div>.</div>
 <br><br><br>
 