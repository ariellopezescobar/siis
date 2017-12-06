<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
<tr>
  <td width="30%" valign="top">
<center> 
<form name=formaBN method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <legend align=center>Nombre del Paciente</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nombres</td>
          <td class=colb><input type=text name=nombre size="30" onblur='validar(nombre,"A")'></td>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarN"></td>
          <input type="hidden" name="id_estado"         value='%' >
        </tr> 
        
      </table>
    </fieldset>
    </td>
  </tr>
</table>
</form>
</center>
</td>

<td width="30%" valign="top">
<center>
<form name=formaBH method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
    <td>  
    <fieldset>
      <legend align=center>HCL del Paciente / Matricula / C.I.</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>HCL </td>
          <td class=colh>::</td>
          <td class=colb><input type=text name=hcl onblur='validar(hcl,"A9")' onfocus="BuscarH"></td>
          <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarH"></td>
        </tr>  
      </table>
    </fieldset>
    </td>
 </tr>
</table>
</form>
</center>
</td>

<td width="40%" valign="top">
<center>
<form name=formaBF method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
      <td>  
          <fieldset>
              <legend align=center>Fecha Nac. del Paciente</legend>
              <table border=0 align=center>
                  <tr>
                      <td align=right class=colh>Fecha Nac.</td>
                      <td class=colh>::</td>
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
  </center> 
  <td> 
 </tr> 
</table>  


 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr style="font-size:9pt">
          <th> No. </th>
          <th> HCL </th>
          <th> NOMBRE </th>
          <th> Fecha<br>Nacimien.</th>
          <th> Se<br>xo </th>
          <th> C.I. </th>  
          <c:if test="${estab == '200010' }">
               <th> Cod</th>  
               <th> Matricula</th>
               <th> Empresa</th>
          </c:if>
          <th> Seguro </th> 
          <th> Kardex</th>
          <th> Modificar </th>
          <th> Accion</th>
      </tr>  
      
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <!-- ********** Esto es para el efecto ************ -->
          <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
              <!-- ********** Fin  efecto ************ -->
           
           <td ><c:out value="${contador.count}"/></td>

           <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td >     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.hcl}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
          <td style="font-size:10pt"><b><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></b></td>
           
          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
              <c:if test="${lista.id_tipo_sexo == '2' }">
                  <td align="center" style="font-size:12pt">M</td>
              </c:if>
              <c:if test="${lista.id_tipo_sexo == '1' }">
                  <td align="center" style="font-size:12pt">F</td>
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
                       <td style="font-size:9pt"><c:out value="${lista.nro_registro}"/></td> 
                  </c:if>
                  <c:if test="${lista.registro==0 }">
                       <td style="font-size:30pt; color:red"><c:out value="${fn:substring(lista.resultado,0,30)}"/></td>
                  </c:if>
                  <c:if test="${lista.registro!=0 }">
                       <td style="font-size:8pt"><c:out value="${fn:substring(lista.resultado,0,30)}"/></td>
                  </c:if>
              </c:if>
              
              <c:if test="${lista.id_estado == 'A' or lista.id_estado == 'E'}">
                  <td style="color:blue" align="center">Externo</td>
              </c:if>
              
              <c:if test="${lista.id_estado == 'S' }">
                  <td style="color:red" align="center">Ley 475</td>
              </c:if>
              <c:if test="${lista.id_estado == 'P' }">
                  <td align="center"><c:out value="${lista.seguro}"/></td>
              </c:if>
              

           <form name=formaK<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
              <td style="font-size:12pt">     
                  <div><a class="btn btn-info btn-xs" class="btn btn-info btn-xs" href="javascript:document.formaK<c:out value="${contador.count}"/>.submit();">Kardex</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="id_empresa"    value=<c:out value="${lista.id_empresa}"/> >
                  <input type="hidden" name="id_carpeta"    value=<c:out value="${lista.id_carpeta}"/> >
                  <input type="hidden" name="accion"        value='KardexMed' >
                  <input type="hidden" name="sw"            value='1'>
              </td>
          </form>
          <form name=formaMod<c:out value="${contador.count}"/> method=post action='<c:url value="/NuevoPaciente.do"/>'>
              <td>     
                  <div><a class="btn btn-warning btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaMod<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="accion"        value='Modificar' >
                  <input type="hidden" name="sw"            value='1' >
              </td>
          </form>
           <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacFarmacia.do"/>'>
              <td style="font-size:12pt">     
                  <div class="siguiente"><a class="btn btn-success" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Siguiente</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="id_empresa"    value=<c:out value="${lista.id_empresa}"/> >
                  <input type="hidden" name="id_carpeta"    value=<c:out value="${lista.id_carpeta}"/> >
                  <input type="hidden" name="accion"        value='SiguienteMed' >
                  <input type="hidden" name="swfar"         value='1'>
              </td>
          </form>
         </tr> 
        </c:forEach>  
   </table>

  
  