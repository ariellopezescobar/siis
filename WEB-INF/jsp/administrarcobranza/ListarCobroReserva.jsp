<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
 <tr>
  <td width="50%" valign="top">  
   <div style="font-size:14pt"> Lista de Pacientes a Cobrar de Reservaciones</div>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> CONSULTORIO </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <form name=formaEq<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReservas.do"/>'>
       <td>     
         <div><a href="javascript:document.formaEq<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                           
         <input type="hidden" name="accion1" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/>
           <c:if test="${lista.tipoconsult == '1' }">
              <font color="Red"> _Reconsulta 1</font>
           </c:if>
           <c:if test="${lista.tipoconsult == '2' }">
               <font color="Red"> _Reconsulta 2</font>
           </c:if>
           <c:if test="${lista.tipoconsult == '3' }">
               <font color="Red"> _Reconsulta 3</font>
           </c:if>
           <c:if test="${lista.tipoconsult == '6' }">
               <font color="Red"> Recons_Medico</font>
           </c:if>
           <c:if test="${lista.tipoconsult == '7' }">
               <font color="Red"> Re_Enfermeria</font>
           </c:if>
       </td>      
       <td><c:out value="${lista.consultorio}"/><br><font color="blue"><c:out value="${lista.nombre}"/></font></td>
       
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente1.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
  	 <input type="hidden" name="id_reservacion"   value='<c:out value="${lista.id_reservacion}"/>' >
         <input type="hidden" name="id_persona"       value='<c:out value="${id_persona}"/>' > 
         <input type="hidden" name="carnet"           value='<c:out value="${lista.carnet}"/>' > 
         <input type="hidden" name="id_consultorio"   value='<c:out value="${id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"      value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="medico"           value='<c:out value="${lista.nombre}"/>' >
         <input type="hidden" name="nombres"          value='<c:out value="${lista.nombres}"/>' > 
         <c:if test="${lista.id_cargo == 11}">        
             <input type="hidden" name="id_rubro" value="7">
             <input type="hidden" name="id_costo" value="136">
         </c:if>  
         <c:if test="${lista.id_cargo == 2}">        
             <input type="hidden" name="id_rubro" value="3">
             <input type="hidden" name="id_costo" value="1">
         </c:if>
         <c:if test="${lista.id_cargo == 1 or lista.id_cargo == 18 or lista.id_cargo == 20}">        
             <input type="hidden" name="id_rubro" value="2">
             <input type="hidden" name="id_costo" value="2">
         </c:if>
         <c:if test="${lista.id_cargo != 11}">        
             <input type="hidden" name="id_rubro" value="2">
             <input type="hidden" name="id_costo" value="2">
         </c:if>   
         <input type="hidden" name="accion" value='Nuevo' >
	 <input type="hidden" name="sw" value='2' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
<br>

<c:if test="${listaodonto == '1' }">
<div style="font-size:14pt"> Lista de Pacientes a Cobrar de Odontologia</div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> NIT </th> 
    <th bgcolor="#F2F2F2"> MONTO BS </th>
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${listaOdon}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td>
       <td><c:out value="${lista.id_persona}"/></td>    
     <form name=formaOdon<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente1.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaOdon<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
         <input type="hidden" name="id_reservacion"   value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="id_persona"       value='<c:out value="${id_persona}"/>' >         
         <input type="hidden" name="id_consultorio"   value='<c:out value="${id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"      value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="nombres"          value='<c:out value="${lista.nombres}"/>' >         
         <input type="hidden" name="id_pedido"        value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_rubro"         value='<c:out value="${lista.id_rubro}"/>'>
         <input type="hidden" name="id_costo"         value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name="precio_total"     value='<c:out value="${lista.precio_total}"/>'>         
	 <input type="hidden" name="accion"           value='Nuevo' >
	 <input type="hidden" name="sw"               value='3' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
<br>
</c:if>

<c:if test="${listaenfermeria == '1' }">
<div style="font-size:14pt"> Lista de Pacientes a Cobrar de Enfermeria</div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> NIT </th>    
    <th bgcolor="#F2F2F2"> Monto Bs.</th>
    <th bgcolor="#F2F2F2"> ID </th> 
    <th bgcolor="#F2F2F2"> COBRAR </th>
    </tr>  
   <c:forEach var="lista" items="${listaEnfer}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.nombres}"/></td>      
       <td><c:out value="${lista.nit}"/></td>    
       <td align="center"><b><c:out value="${lista.precio_total}"/></b></td> 
       <td><c:out value="${lista.id_persona}"/></td>
     <form name=formaEnfer<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente1.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEnfer<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
         <input type="hidden" name="id_reservacion"   value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="id_persona"       value='<c:out value="${id_persona}"/>' >         
         <input type="hidden" name="id_consultorio"   value='<c:out value="${id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"      value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="nombres"          value='<c:out value="${lista.nombres}"/>' >
         <input type="hidden" name="id_pedido"        value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_rubro"         value='<c:out value="${lista.id_rubro}"/>'>
         <input type="hidden" name="id_costo"         value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name="precio_total"     value='<c:out value="${lista.precio_total}"/>'>
	 <input type="hidden" name="accion"           value='C6.Enfermeria' >
         <input type="hidden" name="swenfer"          value='Enfer' >
         <input type="hidden" name="swe"              value='1' >
	 <input type="hidden" name="sw"               value='5' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
</c:if>

<c:if test="${listalabo == '1' }">
<div style="font-size:14pt"> Lista de Pacientes Laboratorios e Imagenologia</div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro. </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Nombre Completo</th>
    <th bgcolor="#F2F2F2"> Nombre Medico  </th>
    <th bgcolor="#F2F2F2"> Imprimir </th>
    </tr>  
   <c:forEach var="listado" items="${listalab}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${listado.fechae}" pattern='dd/MM/yy HH:mm'/></td> 
       <td><c:out value="${listado.nombres}"/></td>    
       <td><c:out value="${listado.nombre}"/></td>
      <form name=formaLab<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarLab.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaLab<c:out value="${contador.count}"/>.submit();">Cobrar</a></div>
         <input type="hidden" name="id_reservacion"   value='<c:out value="${listado.id_historial}"/>' >
         <input type="hidden" name="id_persona"       value='<c:out value="${listado.id_persona}"/>' >         
         <input type="hidden" name="id_consultorio"   value='<c:out value="${id_consultorio}"/>' >         
         <input type="hidden" name="id_paciente"      value='<c:out value="${listado.id_paciente}"/>' >
         <input type="hidden" name="nombres"          value='<c:out value="${listado.nombres}"/>' >         
         <input type="hidden" name="id_pedido"        value='<c:out value="${lista.id_pedido}"/>' >         
         <input type="hidden" name="id_costo"         value='<c:out value="${lista.id_costo}"/>'>
         <input type="hidden" name="precio_total"     value='<c:out value="${lista.precio_total}"/>'>         
	 <input type="hidden" name="accion"           value='CobroLab' >
	 <input type="hidden" name="sw"               value='3' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>
<br>
</c:if>

</td>
<td width="50%" valign="top">
<div style="font-size:14pt"> Lista de Pacientes  a Cobrar con Historia Clinica</div>


<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <td>  
    <fieldset>
      <table align=center>
                <tr>
                 <form name=formaBN method=post action='<c:url value="/ListarCobroReserva.do"/>'>
                  <td align=right>Nombres Paciente::</td>
                  <td ><input class="form-control" type=text name=nombre maxlength="30" size="30" ></td>
                  <td ><input class="btn btn-primary" type="submit" name=boton value="BuscarN"></td>
                 </form> 
                </tr>  
                 <tr>
                    <form name=formaBF method=post action='<c:url value="/ListarCobroReserva.do"/>'>
                      <td align=right>Fecha Nacimiento::</td>
                      <td >
                           <SELECT NAME="dia" >
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
                      <td ><input class="btn btn-primary" type="submit" name=boton value="BuscarF"></td>
                    </form> 
                  </tr>  
      </table>
    </fieldset>
    </td>
  </tr>
</table>




<table>
  <tr>
  <form name=forma method=post action='<c:url value="/NuevoPaciente.do"/>'>
    <td colspan="2">
      <div><a class="btn btn-success" href="javascript:document.forma.submit();" >Nuevo Paciente</a>
       <input type="hidden" name="id_persona" value=<c:out value="${id_persona}"/> >                  
       <input type=hidden name=accion    value='Adicionar'>
       <input type=hidden name=accion1   value='Nuevo'>
    </div></td>  
    </form>
  <tr>
</table>

<div style="font-size:14pt"> Lista de Pacientes</div>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> HCL </th>
    <th bgcolor="#F2F2F2"> NOMBRE </th>
    <th bgcolor="#F2F2F2"> Fecha<br> Nacim. </th>                
    <th bgcolor="#F2F2F2"> Seguro </th>   
    <th bgcolor="#F2F2F2"> Modif. </th>
    <th bgcolor="#F2F2F2"> Afilia </th>
    <th bgcolor="#F2F2F2"> Cobrar </th>
    </tr>  
   <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <form name=formaKa<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente.do"/>'>
        <td>     
         <div><center><a href="javascript:document.formaKa<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
         <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="nombres"        value="<c:out value="${lista.nombres}"/>" >
         <input type="hidden" name="id_persona"     value='<c:out value="${id_persona}"/>' > 
         <input type="hidden" name="accion"         value='Kardex' >        
       </td>
     </form>
       <form name=formaR<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
              <td>     
                  <div class="aceptar"><a href="javascript:document.formaR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></a></div>
                  <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                      <input type="hidden" name="accion" value='Reservar' >
                  <input type="hidden" name="sw" value='1' >
              </td>
          </form>         
       <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yy'/></td>
       <c:if test="${lista.id_estado == 'A' }">
                  <td style="color:blue">Externo</td>
              </c:if>
              <c:if test="${lista.id_estado == 'S' }">
                  <td style="color:red">Ley475</td>
              </c:if>
              <c:if test="${lista.id_estado == 'P' }">
                  <td><c:out value="${lista.seguro}"/></td>
              </c:if>

      <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPaciente.do"/>'>
              <td>     
                  <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();">Modif.</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="accion"        value='Modificar' >
                  <input type="hidden" name="sw"            value='1' >
              </td>
          </form>
     <c:if test="${lista.id_estado == 'A'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div"><a class="btn btn-info btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Afiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Afiliar' >
                      <input type="hidden" name="sw1" value='1' >
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'S'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desaf</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1' >
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'P'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desafi</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1' >
                  </td>
              </form>
          </c:if>     
     
      <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/CobrarPaciente.do"/>'>
        <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Cobrar</a></div>
         <input type="hidden" name="id_paciente"    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name="nombres"        value='<c:out value="${lista.nombres}"/>'>
         <input type="hidden" name="expedido"        value='<c:out value="${lista.id_estado}"/>'>
         <input type="hidden" name="id_persona"     value='<c:out value="${id_persona}"/>'>                  
         <input type="hidden" name="accion"         value='Nuevo'>
         <input type="hidden" name="sw"             value='2'>
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>  
</td>
  </tr>
</table>
