<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div class="table-responsive">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
<tr>
  <td width="30%" valign="top">
<center> 
<form name=formaBN method=post action='<c:url value="/ListarPacientes.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
  <tr>
    <td>  
    <fieldset>
      <legend align=center style="font-size:10pt"><b>Buscar por : Nombre / Matricula / CI / HCL</b> </legend>
      <table width=30% border=0 align=center>
        <tr>
          <td align=right style="font-size:10pt" class=colh><b>Nombres</b></td>
          <td class=colb colspan="2"><input type=text name=nombre size="25" maxlength="40" ></td>
	  <td coslpan=3><input type="submit" name=boton class="btn btn-success" value="BuscarN"></td>
        </tr> 
        <tr >
            <td colspan="4">
            <table class="table table-striped table-hover table-condensed table-responsive">  
               <tr>
                <td><input type=radio  name="id_estado" value="%" checked >   </td>
                <td style="font-size:10pt" class="etiqueta"><b>TODOS</b> </td>
                <c:if test="${tipoestab != 'T' }">
                <td><input type=radio  name="id_estado" value="S" >   </td>
                <td style="font-size:10pt" class="etiqueta"><b>Ley475</b></td>
                </c:if> 
                <td><input type=radio name="id_estado" value="P" >   </td>
                <td style="font-size:10pt" class="etiqueta"><b>Seguros(Otros)</b> </td>
               </tr>
            </table>
            </td>
        </tr>
      </table>
    </fieldset>
    </td>
  </tr>
</table>
</form>
</center>
</td>

<c:if test="${estab != '100000' }"> <!--100000 es codigo para promujer -->
<td width="30%" valign="top">
<center>
<form name=formaBH method=post action='<c:url value="/ListarPacientes.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
    <td>  
    <fieldset>
      <c:if test="${estab != '200010' }">
            <legend align=center style="font-size:10pt"><b>Buscar por : HCL del Paciente</b></legend>
      </c:if>  
      <c:if test="${estab == '200010' }">
            <legend align=center style="font-size:10pt">Importar Datos Externos</legend>
      </c:if>
      <table width=30% border=0 align=center>
        <tr>
          <td align=right style="font-size:10pt"><b>Historia Clinica</b></td>
          
          <td  colspan="2"><input type=text name=hcl size="20" maxlength="30" onfocus="BuscarH"></td>
           <c:if test="${estab != '200010' }">
               <td coslpan=3><input type="submit" name=boton class="btn btn-success" value="BuscarH"></td>
           </c:if>  
	      <td coslpan=3><input type="submit" name=boton class="btn btn-default" value="C.I."></td>
        </tr>  
      </table>
    </fieldset>
    </td>
 </tr>
</table>
</form>
</center>
</td>
</c:if> 

<td width="40%" valign="top">
<center>
<form name=formaBF width=40% method=post action='<c:url value="/ListarPacientes.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
      <td>  
          <fieldset>
              <legend align=center style="font-size:10pt"><b>Buscar por : Fecha Nac. del Paciente</b></legend>
              <table border=0 align=center>
                  <tr>
                      <td align=right style="font-size:10pt" class=colh ><b>Fecha Nac.</b></td>
                      <td colspan="2">
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
                      <!--<td coslpan=3><input type="submit" name=boton value="C,I,"></td>-->
                      <td coslpan=3><input type="submit" name=boton class="btn btn-success" value="BuscarF"></td>
                  </tr>  
              </table>
          </fieldset>
      </td>
  </tr>
  </table>
  </form>
   </center> 
  <td> 
 </tr> 
</table>  
 
  
  <table >
      <tr>
      <form name=forma method=post action='<c:url value="/NuevoPaciente.do"/>'>
          <td colspan="2">
              <div class="agregar">
                  <a href="javascript:document.forma.submit();" class="btn btn-primary" >Nuevo</a>
                  <input type=hidden name=accion value='Adicionar'>
          </div></td>
      </form> 
      <tr>
  </table>
  
  
  <c:if test="${ci != 'C.I.' }">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr style="font-size:9pt">
          <th bgcolor="#F2F2F2"> No. </th>
          <th bgcolor="#F2F2F2"> HCL </th>
          <th bgcolor="#F2F2F2"> NOMBRE </th>
          <th bgcolor="#F2F2F2"> Fecha<br>Nacimien.</th>
          <th bgcolor="#F2F2F2"> Se<br>xo </th>
          <th bgcolor="#F2F2F2"> C.I. </th>  
          <c:if test="${estab == '200010' }">
               <th bgcolor="#F2F2F2"> Cod</th>  
               <th bgcolor="#F2F2F2"> Matricula</th>
               <th bgcolor="#F2F2F2"> Empresa</th>
               <th bgcolor="#F2F2F2"> Patronal</th>
          </c:if>
          <th bgcolor="#F2F2F2"> Seguro </th>  
          <c:if test="${tipoestab != 'T' }">
             <th bgcolor="#F2F2F2"> HCL<BR>Por :</th>
          
              <c:if test="${idrol2 != '29' }">
                   <th bgcolor="#F2F2F2"> Carpeta<br>Familiar </th>   
              </c:if>
               <th bgcolor="#F2F2F2"> KARDEX </th>
          </c:if>
          <th bgcolor="#F2F2F2"> MODIFICAR </th>
          <c:if test="${idrol2 != '29' }">
               <th bgcolor="#F2F2F2"> ELIMINAR </th> 
          </c:if>
          
          <th bgcolor="#F2F2F2"> Asegurar/<br>Desasegurar </th>
          <c:if test="${idrol2 != '29' }">
               <th bgcolor="#F2F2F2"> Imprimir </th>
          </c:if>
      </tr>  
      
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <!-- ********** Esto es para el efecto ************ -->
          <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
           <form name=formaUnir<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaUnir<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                 <input type="hidden" name="accion" value='unirHCL' >
                 <input type="hidden" name="sw1" value='1' >
              </td>
           </form>

           <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
         
           <form name=formaR<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div class="aceptar"><a href="javascript:document.formaR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></a></div>
                      <input type="hidden" name="id_paciente"  value=<c:out value="${lista.id_paciente}"/> >
                      <input type="hidden" name="id_empresa"   value=<c:out value="${lista.id_empresa}"/> >
                      <input type="hidden" name="id_carpeta"   value=<c:out value="${lista.id_carpeta}"/> >
                      <!--<input type="hidden" name="accion"   value='CNS' >-->
                      <input type="hidden" name="accion"       value='Reservar' >
                      <input type="hidden" name="sw"           value='1' >
                  </td>
              </form>
            
           
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
              <c:if test="${lista.id_tipo_sexo == '2' }">
                  <td align="center" style="font-size:10pt">M</td>
              </c:if>
              <c:if test="${lista.id_tipo_sexo == '1' }">
                  <td align="center" style="font-size:10pt">F</td>
              </c:if>
              
                  <td style="font-size:9pt"><c:out value="${fn:substring(lista.carnet,0,8)}"/></td>   
   
              <c:if test="${estab == '200010' }">
                  <c:if test="${lista.nro!='0' }">
                      <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>  
                  </c:if>
                  <c:if test="${lista.nro=='0' }">
                      <td style="font-size:30pt; color:red" align="center"><c:out value="${lista.nro}"/></td>  
                  </c:if>
                  <c:if test="${fn:length(lista.nro_registro)<5 }">
                       <td style="font-size:30pt; color:red"><c:out value="${lista.nro_registro}"/></td> 
                  </c:if>
                   <c:if test="${fn:length(lista.nro_registro)>5 }">
                       <td style="font-size:8pt"><c:out value="${lista.nro_registro}"/></td> 
                  </c:if>
                  <c:if test="${lista.registro==0 }">
                       <td style="font-size:30pt; color:red"><c:out value="${fn:substring(lista.resultado,0,30)}"/></td>
                  </c:if>
                  <c:if test="${lista.registro!=0 }">
                       <td style="font-size:8pt"><c:out value="${fn:substring(lista.resultado,0,30)}"/></td>
                  </c:if>
                      <td style="font-size:8pt"><c:out value="${lista.registro}"/></td> 
              </c:if>
              
              <c:if test="${lista.id_estado == 'A' }">
                  <td style="color:blue" align="center">Externo</td>
              </c:if>
              <c:if test="${lista.id_estado == 'S' }">
                  <td style="color:red" align="center">Ley 475</td>
              </c:if>
              <c:if test="${lista.id_estado == 'P' }">
                  <td align="center"><c:out value="${lista.seguro}"/></td>
              </c:if>
           <c:if test="${tipoestab != 'T' }">     
             <c:if test="${lista.id_consultorio == 1 or lista.id_consultorio ==7 }">
                 <td align="center"><c:out value="${lista.id_persona}"/></td> 
              </c:if>
              <c:if test="${lista.id_consultorio != 1 and lista.id_consultorio !=7 }">
                 <td align="center"style="color:red; font-size:9pt"><b><c:out value="${lista.id_persona}"/></b></td> 
              </c:if>
           
           <c:if test="${lista.id_carpeta == '0' }">
             <td><c:out value="${lista.id_carpeta}"/></td> 
          </c:if>      
          
            <c:if test="${lista.id_carpeta != '0' }">
               <c:if test="${idrol2 != '29' }">
               <form name=formaCarF<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
               <td>     
                 <div><a class="btn btn-warning btn-xs" href="javascript:document.formaCarF<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_carpeta}"/></a></div>
                 <input type="hidden" name="id_carpeta"     value='<c:out value="${lista.id_carpeta}"/>' >
                 <input type="hidden" name="id_pacientej"   value='<c:out value="${lista.id_paciente}"/>' >
                 <input type="hidden" name="accion"         value='Modificar'>
                 <input type="hidden" name="sw"             value='1'>
               </td>
               </form>
              </c:if>  
          </c:if>
          
          <form name=formaK<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
              <td style="font-size:10pt">     
                  <div class="modificar"><a class="btn btn-default btn-xs" href="javascript:document.formaK<c:out value="${contador.count}"/>.submit();">Kardex</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="id_empresa"    value=<c:out value="${lista.id_empresa}"/> >
                  <input type="hidden" name="id_carpeta"    value=<c:out value="${lista.id_carpeta}"/> >
                  <input type="hidden" name="accion"        value='KardexMed' >
                  <input type="hidden" name="sw"            value='1'>
              </td>
          </form>
          </c:if>
          <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPaciente.do"/>'>
              <td>     
                  <div class="modificar"><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="accion"        value='Modificar' >
                  <input type="hidden" name="sw"            value='1' >
              </td>
          </form>
         
          <c:if test="${idrol2 != '29' }">
              <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div><a class="btn btn-danger btn-xs" class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
                      <input type="hidden" name="id_paciente" value='<c:out value="${lista.id_paciente}"/>' >
                      <input type="hidden" name="accion"      value='Eliminar' >
                      <input type="hidden" name="sw1"         value='1' >
                  </td>
              </form>
          </c:if>      
          
          
          <c:if test="${lista.id_estado == 'A'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div class="agregar"><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Afiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Afiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'S'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div class="descargar"><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desafiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>
          <c:if test="${lista.id_estado == 'P'}">
              <form name=formaSumi<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
                  <td>     
                      <div class="descargar"><a class="btn btn-primary btn-xs" href="javascript:document.formaSumi<c:out value="${contador.count}"/>.submit();"> Desafiliar</a></div>
                      <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                          <input type="hidden" name="accion" value='Desafiliar' >
                      <input type="hidden" name="sw1" value='1'>
                  </td>
              </form>
          </c:if>
          
       <c:if test="${idrol2 != '29' }">
              <form name=formaEimpP<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientes.do"/>'>
               <td>     
                 <div class="imprimir"><a class="btn btn-info btn-xs" href="javascript:document.formaEimpP<c:out value="${contador.count}"/>.submit();">Imprimir</a></div>
                 <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
                 <input type="hidden" name="accion" value='imprimir' >
               </td>
             </form>
          </c:if>         
      </tr> 
      </c:forEach>  
     
   </table>
  </c:if>
  
  <c:if test="${ci == 'C.I.' }">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
          <th bgcolor="#F2F2F2"> No. </th>
          <th bgcolor="#F2F2F2"> HCL </th>
          <th bgcolor="#F2F2F2"> NOMBRE </th>
          <th bgcolor="#F2F2F2"> FECHA<br>NACIMIENTO </th>                
          <th bgcolor="#F2F2F2"> DIRECCION </th>    
          <th bgcolor="#F2F2F2"> SEXO </th>    
          <th bgcolor="#F2F2F2"> CARNET </th>
          <th bgcolor="#F2F2F2"> Adicionar</th> 
      </tr>  
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
        <c:if test="${lista.veces == '0' }">  
         <!-- ********** Esto es para el efecto ************ -->
          <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->
          <td style="color:blue"><c:out value="${contador.count}"/></td> 
          <td style="color:blue"><c:out value="${lista.hcl}"/></td> 
          <td style="color:blue"><c:out value="${lista.nombres}"/></td> 
          <td style="color:blue"><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
          <td style="color:blue"><c:out value="${lista.direccion}"/></td> 
          <c:if test="${lista.id_tipo_sexo == '1' }">
                <td style="color:blue">Femenino</td>
          </c:if>
          <c:if test="${lista.id_tipo_sexo == '2' }">
                <td style="color:blue">Masculino</td>
          </c:if>   
          <td style="color:blue"><c:out value="${lista.carnet}"/></td> 
          <td style="color:blue">Ya esta en Base del Estab.</td>
        </c:if> 
        <c:if test="${lista.veces == '1' }">  
         <!-- ********** Esto es para el efecto ************ -->
          <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->
          <td><c:out value="${contador.count}"/></td> 
          <td><c:out value="${lista.hcl}"/></td> 
          <td><c:out value="${lista.nombres}"/></td> 
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
          <td><c:out value="${lista.direccion}"/></td> 
          <c:if test="${lista.id_tipo_sexo == '1' }">
                <td >Femenino</td>
          </c:if>
          <c:if test="${lista.id_tipo_sexo == '2' }">
                <td>Masculino</td>
          </c:if>   
          <td><c:out value="${lista.carnet}"/></td> 
        <form name=formaEimp<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPaciente.do"/>'>
         <td>     
           <div class="aceptar"><a class="btn btn-primary" href="javascript:document.formaEimp<c:out value="${contador.count}"/>.submit();"> Adicionar</a></div>
           <input type="hidden" name="nombre"          value='<c:out value="${lista.nombre}"/>'>
           <input type="hidden" name="paterno"         value='<c:out value="${lista.paterno}"/>'>
           <input type="hidden" name="materno"         value='<c:out value="${lista.materno}"/>'>
           <input type="hidden" name="direccion"       value='<c:out value="${lista.direccion}"/>'>
           <input type="hidden" name="carnet"          value='<c:out value="${lista.carnet}"/>'>
           <input type="hidden" name="sexo"            value='<c:out value="${lista.id_tipo_sexo}"/>'>
           <input type="hidden" name="fecnac"          value='<fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/>'>
           <input type="hidden" name="accion"          value='Adicionar'>
           <input type="hidden" name="sw"              value='1'>
           <input type="hidden" name="swci"            value='1'>
         </td>
        </form>
        </c:if> 
      </c:forEach>  
   </table>
  </c:if>
</div>
<%@ include file="../Inferior.jsp" %>