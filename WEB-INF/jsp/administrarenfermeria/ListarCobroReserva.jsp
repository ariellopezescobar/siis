<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th colspan="3">PACIENTES ENFERMERIA</th>
  </tr>
  <tr>
    <td width="40%" valign="top">
  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> Monto a Pagar </th>        
    <th bgcolor="#F2F2F2"> Cobrar </th>        
    <th bgcolor="#F2F2F2"> Eliminar </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy'/></td>     
       <td><c:out value="${lista.nombres}"/></td>        
       <td align="center" style="font-size:10pt"><c:out value="${lista.precio_total}"/></td>     
     <form name=formaMC<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente1.do"/>'>
       <td>     
         <div class="agregar"><a class="btn btn-info btn-xs" href="javascript:document.formaMC<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
         <input type="hidden" name="id_reservacion"  value='<c:out value="${lista.id_pedido}"/>'>
         <input type="hidden" name="id_persona"      value='<c:out value="${id_persona}"/>'>         
         <input type="hidden" name="id_consultorio"  value='<c:out value="${id_consultorio}"/>'>   
         <input type="hidden" name="nombres"         value='<c:out value="${lista.nombres}"/>'>
         <input type="hidden" name="id_paciente"     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${lista.id_pedido}"/>'>  
         <input type="hidden" name="precio_total"    value='<c:out value="${lista.precio_total}"/>'>  
         <input type="hidden" name="id_rubro"        value='<c:out value="${lista.id_rubro}"/>'>
         <input type="hidden" name="id_costo"        value='<c:out value="${lista.id_costo}"/>'>
	 <input type="hidden" name="accion"          value='Nuevo'>
         <input type="hidden" name="swenfer"         value='Enfer'>
	 <input type="hidden" name="sw"              value='5'>
       </td>
     </form>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarCobroEnfermeria.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Eliminar</a></div>
         <input type="hidden" name="id_reservacion"  value='<c:out value="${lista.id_pedido}"/>'>
         <input type="hidden" name="id_persona"      value='<c:out value="${id_persona}"/>'>         
         <input type="hidden" name="id_consultorio"  value='<c:out value="${id_consultorio}"/>'>         
         <input type="hidden" name="id_paciente"     value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="id_pedido"       value='<c:out value="${lista.id_pedido}"/>'>         
         <input type="hidden" name="id_rubro"        value='<c:out value="${lista.id_rubro}"/>'>
         <input type="hidden" name="id_costo"        value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name="accion"          value='Eliminar' >
	 <input type="hidden" name="sw"              value='2' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

<div style="font-size:15pt">Pacientes que Cancelaron Enfermeria</div>
<br>  

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> Monto pagado </th>    
    <th bgcolor="#F2F2F2"> Cuderno 6 </th>
    </tr>  
   <c:forEach var="lista" items="${listaOdon}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy'/><br><fmt:formatDate value="${lista.fec_registro}" pattern='HH:mm'/></td> 
       <td><c:out value="${lista.nombres}"/></td>      
       <td align="center" style="font-size:10pt"><c:out value="${lista.precio_total}"/></td>      
     <form name=formaOdon<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaOdon<c:out value="${contador.count}"/>.submit();">Cuaderno6</a></div>
         <input type="hidden" name="id_reservacion" value='<c:out value="${lista.id_carpeta}"/>'>
         <input type="hidden" name="id_persona"     value='<c:out value="${lista.id_persona}"/>'>         
         <input type="hidden" name="id_consultorio" value='<c:out value="${id_consultorio}"/>'>         
         <input type="hidden" name="id_paciente"    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="id_pedido"      value='<c:out value="${lista.id_pedido}"/>'>         
         <input type="hidden" name="id_rubro"       value='<c:out value="${lista.id_rubro}"/>'>
         <input type="hidden" name="id_costo"       value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name="nombres"        value='<c:out value="${lista.nombres}"/>'>         
	 <input type="hidden" name="accion"         value='C6.Enfermeria' >
         <input type="hidden" name="swenfer"        value='EnferExt' >
	 <input type="hidden" name="sw"             value='E' >
       </td>
     </form>
     </tr>
    </c:forEach>
</table>
  
</td>
<td width="60%" valign="top">

<div style="font-size:14pt"><center> Buscar Pacientes a Cobrar con Historia Clinica</center></div>
 
<form name=formaBN method=post action='<c:url value="/ListarCobroEnfermeria.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
        <tr>
          <td align=right  bgcolor="#F2F2F2">Nombres:
          <td class=colb><input type=text name=nombre size="40" />
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarN"></td>
        </tr>  
      </table>
    </fieldset>
    </td>
    </td>
  </tr>
</table>
</form>

<form name=formaBF method=post action='<c:url value="/ListarCobroEnfermeria.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
      <td>  
          <fieldset>
              <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
                  <tr>
                      <td align=right  bgcolor="#F2F2F2">Fecha Nacimiento:</td>
                      <td>
                           <SELECT NAME="dia">
                             <c:forEach var="dias" items="${dias}">
                               <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                                 <c:out value="${dias}"/>
                               </option>  
                             </c:forEach>
                           </SELECT>
                           <SELECT NAME="mes">
                             <c:forEach var="meses" items="${meses}">
                               <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                                 <c:out value="${meses}"/>
                               </option>  
                             </c:forEach>
                           </SELECT>
                           <SELECT NAME="anio">
                             <c:forEach var="anios" items="${anios}">
                               <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                                 <c:out value="${anios}"/>
                               </option>  
                             </c:forEach>
                            </SELECT>
                        </td>    
                      <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarF"></td>
                  </tr>  
              </table>
          </fieldset>
      </td>
  </tr>
  </table>
  </form>
<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoPaciente.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a class="btn btn-success" href="javascript:document.forma.submit();" >Nuevo Paciente</a>
       <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >                  
       <input type=hidden name=accion value='Adicionar'>
       <input type=hidden name=accion1 value='Nuevo'>
    </div></td>
    </form>
    
  <tr>
</table>

<div style="font-size:15pt"> Lista de Pacientes</div>
<br>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No.</th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> NOMBRE </th>
    <th  bgcolor="#F2F2F2" style="font-size:9"> Fecha<br> Nacim </th>                
    <th bgcolor="#F2F2F2"> Modificar </th>
    <th bgcolor="#F2F2F2"> Afiliar </th>  
    <th bgcolor="#F2F2F2"> COBRAR </th>
   </tr>  
   <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.hcl}"/></td>  
       <form name=formaR<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
              <td>     
                  <div class="aceptar"><a href="javascript:document.formaR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></a></div>
                  <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                      <input type="hidden" name="accion" value='Reservar' >
                  <input type="hidden" name="sw" value='1' >
              </td>
        </form>
       <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yy'/></td>
       <form name=formaMo<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPaciente.do"/>'>
              <td>     
                  <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMo<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="accion"        value='Modificar' >
                  <input type="hidden" name="sw"            value='1' >
              </td>
          </form>
        <c:if test="${lista.id_estado == 'A'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-info btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Afiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Afiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'S'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desafiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'P'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desafiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>  
       
       <c:if test="${lista.id_estado == 'A'}">         
          <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPacienteEnfermeria.do"/>'>
            <td>     
             <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Cobrar</a></div>
             <input type="hidden" name="id_paciente"  value='<c:out value="${lista.id_paciente}"/>'>
             <input type="hidden" name="id_persona"   value='<c:out value="${id_persona}"/>'>
             <input type="hidden" name="swenfer"      value='Enfer'>     
             <input type="hidden" name="id_rubro"     value='5'>                  
             <input type="hidden" name="accion"       value='Nuevo'>
             <input type="hidden" name="sw"           value='1'>
           </td>
         </form>
       </c:if>
        <c:if test="${lista.id_estado == 'S'}">         
          <form name=formaES<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
            <td>     
             <div><a class="btn btn-success btn-xs" href="javascript:document.formaES<c:out value="${contador.count}"/>.submit();"> SPS</a></div>
             <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
             <input type="hidden" name="id_persona"  value=<c:out value="${id_persona}"/> > 
             <input type="hidden" name="expedido"    value='<c:out value="${lista.id_estado}"/>'>
             <input type="hidden" name="swenfer"     value='Enfer'>
             <input type="hidden" name="id_rubro"    value="5">                  
             <input type="hidden" name="accionE"     value='SPS'>
             <input type="hidden" name="sw"          value='1'>
           </td>
         </form>
       </c:if>
       <c:if test="${lista.id_estado == 'P'}">         
          <form name=formaEP<c:out value="${contador.count}"/> method=post action='<c:url value="/PlanAccionPaciente.do"/>'>
                  <td>     
                     <div><a class="btn btn-success btn-xs" href="javascript:document.formaEP<c:out value="${contador.count}"/>.submit();"> <c:out value="${lista.seguro}"/></a></div>
                     <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                     <input type="hidden" name="id_persona"  value=<c:out value="${id_persona}"/> > 
                     <input type="hidden" name="expedido"    value='<c:out value="${lista.id_estado}"/>'>
                     <input type="hidden" name="swenfer"     value='Enfer'>     
                     <input type="hidden" name="id_rubro"    value="5">                  
                     <input type="hidden" name="accionE"     value='Seguro'>
                     <input type="hidden" name="sw"          value='1'>
                   </td>
         </form>
        </c:if>
     </tr>   
   </c:forEach>
</table> 
 
 </td>
  </tr>
</table>

<div style="font-size:15pt"> Lista des Pacientes Atendidos Enfermeriia</div>
<br>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> TIPO </th>    
    <th bgcolor="#F2F2F2"> EDAD </th>    
    <th bgcolor="#F2F2F2"> SUMI </th>
    <th bgcolor="#F2F2F2"> C-6 </th>    
    <th bgcolor="#F2F2F2" Modificar </th>
    </tr>  
   <c:forEach var="lista6" items="${listarAtendidos}" varStatus="contador">
     <tr style="font-size:9pt">
      <td align="center"><c:out value="${contador.count}"/></td>
      <td><fmt:formatDate value="${lista6.fecha}" pattern='dd/MM/yy HH:mm'/></td>  
      <td><c:out value="${lista6.nombres}"/></td>         
      <c:if test="${lista6.expedido == 'S'}">
          <td align="center" style="color:red">SUMI</td> 
      </c:if>
      <c:if test="${lista6.expedido == 'E'}">
          <td align="center">Externo</td> 
      </c:if>
     <c:if test="${lista6.expedido == 'P'}">
          <td align="center" style="color:blue"><c:out value="${lista6.seguro}"/> </td>
      </c:if> 
    <td align="center"><c:out value="${lista6.edad}"/></td> 
    <c:if test="${lista6.expedido=='S' and lista6.edad_fin>0}"> 
       <td align="center"><c:out value="${lista6.edad_fin}"/></td>
    </c:if>
    <c:if test="${lista6.expedido=='S' and lista6.edad_fin<=0}"> 
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if> 
    <c:if test="${lista6.expedido=='E' and lista6.edad_fin<=0}"> 
       <td align="center"><c:out value="${lista6.edad_fin}"/></td>
    </c:if> 
    <c:if test="${lista6.expedido=='P' }"> 
       <td align="center"><c:out value="${lista6.edad_fin}"/></td>
    </c:if>   
        <form name=forma6P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
          <td align="center" style="color:blue">     
              <div><center><a href="javascript:document.forma6P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista6.id_tipo_documento}"/></a></center></div>
              <input type="hidden" name="id_paciente"    value=<c:out value="${lista6.id_paciente}"/> >
              <input type="hidden" name="accion"         value='Cuaderno6' >
          </td>
      </form><!--Fin de cuaderno6 individual  -->         
         <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td >    <!--td onClick="return cambiarVentana()">  --> 
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Modificar</a></div>         
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista6.id_historial}"/> >
         <input type="hidden" name="id_persona"     value=<c:out value="${id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista6.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista6.id_paciente}"/> >
         <input type="hidden" name="expedido"       value=<c:out value="${lista6.expedido}"/> >         
         <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >         
	 <input type="hidden" name="accion"         value='ConsultarE'>
	 <input type="hidden" name="sw1"            value='actualiza'>
       </td>
     </form>
    </tr> 
   </c:forEach>
</table> 

