<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<c:if test="${cod_esta != '400007' and cod_esta != '400010' and cod_esta != '400009' and cod_esta != '400014' and cod_esta != '400015' and cod_esta != '400016' and cod_esta != '400026' and cod_esta != '400011'}">
<script src="<c:url value="/js/angular.min.js"/>"></script>
        <script src="<c:url value="/js/angular-resource.min.js"/>"></script>  
        <script src="//maps.google.com/maps/api/js"></script>
        <script src="<c:url value="/js/ng-map.min.js"/>"></script>  
        <script src="<c:url value="/js/app.js"/>"></script>  
        <style>
            map{    height: 500px;   width: 500px;     }
        </style>
 </c:if> 
<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"><a class="btn btn-success" href='ListarPacientes.do'>Volver</a> Modificando Datos del Paaciente</div>
</c:if>

<form name="adicionarpaciente" method="POST" action='<c:url value="/NuevoPaciente.do"/>' > 
<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive" ng-controller="PersonasCtrl" ng-init="iniciar(<c:out value="${buscarPaciente.latitud}"/>,<c:out value="${buscarPaciente.longitud}"/>)">
  <tr>
    <td width="50%" valign="top">
    <table class="formulario1" width="100%">  
  <tr>
    <c:if test="${accion == 'Adicionar'}">
       <th colspan="3">INTRODUZCA LOS DATOS INICIALES</th>
   </c:if>
  </tr>
  <tr style="font-size:9pt">
    <td width="100%" valign="top">
    <table class="formulario3" width="100%">
 
      <c:if test="${accion == 'Adicionar'}">
       
       </c:if>
       <c:if test="${accion == 'Modificar'}">
       <tr style="font-size:9pt">
          <td align="right" bgcolor="#F2F2F2">Ultimo Usuario::  </td>
          <td style="color:blue"><font size="2"><c:out value = "${buscarEmpleado.nombres}"/>__<c:out value = "${buscarPaciente.id_paciente}"/></font></td>
       </tr>    
       <tr style="font-size:9pt">
          <td align="right" bgcolor="#F2F2F2">HCLs::  </td>
          <td><input type="text" name="hcl" value="<c:out value = "${buscarPaciente.hcl}"/>" maxlength=15 onblur='validar(dip,"A9")'/></td>
       </tr>
       </c:if>
        
       <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Paterno::</td>
        <td><input type="text" name="paterno" value="<c:out value = "${buscarPaciente.paterno}"/>" maxlength=20 onblur='validar(paterno,"A")' placeholder="Ap. Paterno ..."/></td>
      </tr>
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Materno::</td>
        <td><input type="text" name="materno" value="<c:out value = "${buscarPaciente.materno}"/>" maxlength=20 onblur='validar(materno,"A")' placeholder="Ap. Materno ..."/></td>            
      </tr>    
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres::  </td>    
        <td><input type="text" name="nombre" value="<c:out value = "${buscarPaciente.nombre}"/>" size="30" onblur='validar(nombre,"A")' placeholder="Nombres..."/></td>
      </tr> 
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Sexo::  </td>	      
        <td>
          <SELECT NAME="id_sexo">
            <option value="">-- seleccione --
            <c:forEach var="sexo" items="${listaSexos}">
  	      <option value="<c:out value="${sexo.id_sexo}"/>" <c:if test="${sexo.id_sexo == buscarPaciente.id_tipo_sexo}">selected</c:if>> 
	        <c:out value="${sexo.sexo}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
      </tr> 
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.::  </td>    
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
        dd-mm-aaaa    
        </td>	                 
      </tr>
      <c:if test="${accion == 'Adicionar'}">
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Residenca Local:: </td>        
            <td>Si<input type=radio name="resid" value="0" checked>No<input type=radio name="resid" value="1">Trans.<input type=radio name="resid" value="2"></td>  
          </tr> 
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n::  </td>    	      
            <td><input type="text" name="direccion" value="<c:out value = "${buscarPaciente.direccion}"/>" size="50" maxlength=60 placeholder="Dirección..."/></td>
          </tr> 
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Ocupaci&oacute;n :: </td>          
            <td><input type="text" name="ocupacion" value="<c:out value = "${buscarPaciente.ocupacion}"/>" size="40" maxlength=30 placeholder="Ocupación..."/></td>
          </tr>  
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Telefono ::</td>          
            <td><input type="text" name="telefono" value="<c:out value = "${buscarPaciente.telefono}"/>" maxlength=20 placeholder="Telefono..."/></td>
          </tr>   
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Carnet de Identidad::</td>         
            <td><input type="text" name="carnet" value="<c:out value = "${buscarPaciente.carnet}"/>" maxlength=20 onblur='validar(carnet,"A9")' placeholder="Número Documento..."/>
            <SELECT NAME="lugci">
	    <c:forEach var="lugarci" items="${listaDepartamentos}">
	      <option value="<c:out value="${lugarci.sigla}"/>" <c:if test="${lugarci.sigla == siglaci}">selected</c:if>> 
	        <c:out value="${lugarci.sigla}"/>
	      </option>
	    </c:forEach>
           </SELECT>
            </td>
          </tr> 
          <c:if test="${cod_esta == '200010'}">
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Matricula ::</td>       
            <td><input type="text" name="nro_registro" value="<c:out value = "${buscarPaciente.nro_registro}"/>" maxlength=20 placeholder="Matricula..."/>&nbsp;
                <SELECT NAME="cod"><c:forEach var="lcod" items="${listarCod}">
                  <option value="<c:out value="${lcod.descripcion}"/>" <c:if test="${lcod.descripcion == cod}">selected</c:if>> 
                    <c:out value="${lcod.descripcion}"/>
                  </option>
                </c:forEach></SELECT>
                PoliConsul.<input type="text" name="policonsul" value="<c:out value = "${buscarPaciente.id_policlinico}"/>" size="3" maxlength=3 /></td>
          </tr>
   
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Cod. Patronal:: </td>          
            <td><input type="text" name="patronal1" value="<c:out value = "${patronal1}"/>" size="2" maxlength=2 placeholder="99"/>-<input type="text" name="patronal2" value="<c:out value = "${patronal2}"/>" size="3" maxlength=3 placeholder="999"/>-<input type="text" name="patronal3" value="<c:out value = "${patronal3}"/>" size="5" maxlength=5 placeholder="99999"/></td>
          </tr>
           <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Nombre Empresa:: </td>          
            <td><input type="text" name="nomempresa" value="<c:out value = "${buscarPaciente.cadena2}"/>" size="40" maxlength=50 placeholder="Razon Social Empresa"/></td>
          </tr>
           </c:if>   
      </c:if>
      <c:if test="${accion == 'Modificar'}">
         <c:if test="${buscarPaciente.residencia == 0}">
            <tr style="font-size:9pt"><td align="right" bgcolor="#F2F2F2">Residenca Local:: </td>    	      
                <td>Si<input type=radio name="resid" value="0" checked>No<input type=radio name="resid" value="1">
                    &nbsp;&nbsp;&nbsp;<font style="font-size:10pt;"><b>fec_registro::</b></font><font style="font-size:10pt; color:blue"><b><fmt:formatDate value="${buscarPaciente.fec_registro}" pattern='dd/MM/yyyy'/></b></font>
                </td>  
            </tr>    
         </c:if>
         <c:if test="${buscarPaciente.residencia == 1}">
            <tr style="font-size:9pt"><td align="right" bgcolor="#F2F2F2">Residenca Local ::</td>    	      
                <td>Si<input type=radio name="resid" value="0">No<input type=radio name="resid" value="1" checked>
                    &nbsp;&nbsp;&nbsp;<font style="font-size:10pt;"><b>fec_registro::</b></font><font style="font-size:10pt; color:blue"><b><fmt:formatDate value="${buscarPaciente.fec_registro}" pattern='dd/MM/yyyy'/></b></font>
                </td>  
                
            </tr>    
         </c:if>
       <tr style="font-size:9pt">       
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n :: </td>          
        <td><input type="text" name="direccion" value="<c:out value = "${buscarPaciente.direccion}"/>" size="50" maxlength=60/></td>
      </tr>    
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Ocupaci&oacute;n :: </td>    	      
        <td><input type="text" name="ocupacion" value="<c:out value = "${buscarPaciente.ocupacion}"/>" size="40" maxlength=30/></td>
      </tr>    
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Telefono:: </td>          
        <td><input type="text" name="telefono" value="<c:out value = "${buscarPaciente.telefono}"/>" maxlength=20 /></td>
      </tr>   
      <tr style="font-size:9pt">    
        <td align="right" bgcolor="#F2F2F2">Carnet de Identidad ::</td>    	      
        <td><input type="text" name="carnet" value="<c:out value = "${buscarPaciente.carnet}"/>" maxlength=20 onblur='validar(carnet,"9")'/>
        
          <SELECT NAME="lugci">
	    <c:forEach var="lugarci" items="${listaDepartamentos}">
	      <option value="<c:out value="${lugarci.sigla}"/>" <c:if test="${lugarci.sigla == buscarPaciente.expedido}">selected</c:if>> 
	        <c:out value="${lugarci.sigla}"/>
	      </option>
	    </c:forEach>
           </SELECT>
           
        </td>
      </tr>
      
      <c:if test="${cod_esta == '200010'}">
         <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Matricula:: </td>        
            <td><input type="text" name="nro_registro" value="<c:out value = "${buscarPaciente.nro_registro}"/>" maxlength=20 placeholder="Matricula..."/>
                <SELECT NAME="cod"><c:forEach var="lcod" items="${listarCod}">
                  <option value="<c:out value="${lcod.descripcion}"/>" <c:if test="${lcod.descripcion == cod}">selected</c:if>> 
                    <c:out value="${lcod.descripcion}"/>
                  </option>
                </c:forEach></SELECT>
                PoliConsul.<input type="text" name="policonsul" value="<c:out value = "${buscarPaciente.id_policlinico}"/>" size="3" maxlength=3 /></td>
          </tr>   
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Cod. Patronal:: </td>       
            <td><input type="text" name="patronal1" value="<c:out value = "${patronal1}"/>" size="2" maxlength=2 placeholder="99"/>-<input type="text" name="patronal2" value="<c:out value = "${patronal2}"/>" size="3" maxlength=3 placeholder="999"/>-<input type="text" name="patronal3" value="<c:out value = "${patronal3}"/>" size="5" maxlength=5 placeholder="99999"/></td>
          </tr>
          <tr style="font-size:9pt">    
            <td align="right" bgcolor="#F2F2F2">Nombre Empresa:: </td>          
            <td><input type="text" name="nomempresa" value="<c:out value = "${nomempresa}"/>" size="20" maxlength=20 placeholder="Razon Social Empresa"/></td>
          </tr>
       </c:if>   
          
      </c:if>
        <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Tipo Documento::  </td>	      
        <td>
          <SELECT NAME="id_documento">
            <option value="">-- seleccione --</option>
            <c:forEach var="documento" items="${listaDocumentos}">
  	      <option value="<c:out value="${documento.id_documento}"/>" <c:if test="${documento.id_documento == buscarPaciente.id_tipo_documento}">selected</c:if>> 
	        <c:out value="${documento.documento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
      </tr>
      
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Estado civil:: </td>	      
        <td>
          <SELECT NAME="id_ecivil">
	    <option value="">-- seleccione --
            <c:forEach var="estado" items="${listaCivil}">
	      <option value="<c:out value="${estado.id_ecivil}"/>" <c:if test="${estado.id_ecivil == buscarPaciente.id_ecivil}">selected</c:if>> 
	        <c:out value="${estado.ecivil}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>
      </tr>
      <c:if test="${cod_esta != '200010'}">
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Escolaridad::  </td>      
        <td>
          <SELECT NAME="id_escolaridad">
            <option value="">-- seleccione --
            <c:forEach var="escolaridad" items="${listaEscolaridad}">
  	      <option value="<c:out value="${escolaridad.id_escolaridad}"/>" <c:if test="${escolaridad.id_escolaridad == buscarPaciente.id_escolaridad}">selected</c:if>> 
	        <c:out value="${escolaridad.escolaridad}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
      </tr> 
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Auto Petenencia Cultural:: </td>	      
        <td>
           <SELECT NAME="etnia">
              <option value="1">Mestizo</option>
              <option value="2">Blanca</option>
              <option value="3">Indigena</option>
              <option value="4">Negra</option>
              <option value="5">Otra</option>
            </SELECT>	
        </td>
      
      </c:if>    
      </tr> 
    </table>
    </td>
 </tr>
  <tr style="font-size:9pt">
     <td valign="top">
    <table class="formulario" width="100%">
      <tr style="font-size:9pt">
        <th colspan="3"><font size=2><center>LUGAR DE NACIMIENTO</center></font></th>
      </tr>	
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Pa&iacute;s :: </td>	      
        <td>
          <SELECT NAME="id_pais" onchange="javascript:document.adicionarpaciente.submit();">
            <option value="0">-- seleccione --
       	    <c:forEach var="pais" items="${listaPaises}">
    	      <option value="<c:out value="${pais.id_pais}"/>" <c:if test="${pais.id_pais == id_pais}">selected</c:if>> 
	        <c:out value="${pais.pais}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>	
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Departamento::  </td>
        <td>
          <SELECT NAME="id_departamento" onchange="javascript:document.adicionarpaciente.submit();">
            <option value="0">-- seleccione --
   	    <c:forEach var="dpto" items="${listaDepartamentos}">
	      <option value="<c:out value="${dpto.id_departamento}"/>"<c:if test="${dpto.id_departamento == id_departamento}">selected</c:if>> 
	        <c:out value="${dpto.departamento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>    
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Provincia :: </td>
        <td>
          <SELECT NAME="id_provincia" onchange="javascript:document.adicionarpaciente.submit();">
            <option value="0">-- seleccione --
	    <c:forEach var="prov" items="${listaProvincias}">
	      <option value="<c:out value="${prov.id_provincia}"/>"<c:if test="${prov.id_provincia == id_provincia}">selected</c:if>> 
	        <c:out value="${prov.provincia}"/>_<c:out value="${prov.id_provincia}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr style="font-size:9pt">
        <td align="right" bgcolor="#F2F2F2">Localidad  ::</td>
        <td style="font-size:9pt">
          <SELECT NAME="id_localidad">
            <c:forEach var="local" items="${listaLocalidad}">
	      <option value="<c:out value="${local.id_localidad}"/>"<c:if test="${local.id_localidad == id_localidad}">selected</c:if>> 
	        <c:out value="${local.localidad}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
    </table>
    </td>
  </tr>
 </table>
</td>


<td width="50%" valign="top">
<table class="formulario2" border="1">
    <tr><td></td></tr>
    <c:if test="${cod_esta != '400007' and cod_esta != '400010' and cod_esta != '400009' and cod_esta != '400014' and cod_esta != '400015' and cod_esta != '400016' and cod_esta != '400026' and cod_esta != '400011'}">
    <div class=form-group col-lg-12">
                                <map center="<c:out value="${buscarPaciente.latitud}"/>, <c:out value="${buscarPaciente.longitud}"/>" zoom="<c:out value="${buscarPaciente.zoom}"/>" on-click="placeMarker()" >
                                    <marker position="<c:out value="${buscarPaciente.latitud}"/>,<c:out value="${buscarPaciente.longitud}"/>" title="<c:out value="${buscarPaciente.zoom}"/>"></marker> 
                                </map> 
                                 {{latitud}} {{longitud}} {{zoom}}
                                 <input type="hidden" name='latitud'      value='{{latitud}}'>
                                 <input type="hidden" name='longitud'     value='{{longitud}}'>
                                 <input type="hidden" name='zoom'         value="<c:out value="${buscarPaciente.zoom}"/>">
                            </div> 
    </c:if>    
</table>
</td>
</tr> 
</table>

</center> 

                          
<center>
  <!--<input type="submit" class="siguiente" value='Siguiente' onclick="document.adicionarpaciente.accion1.value='Guardar'">
  <input type="submit" class="siguiente" value='Siguiente'>
  --> 
  <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionarpaciente.accion1.value='Guardar';
                                           document.adicionarpaciente.action='<c:url value="/ConfirmarPaciente.do"/>'">
                                          
</center>
  <input type="hidden" name='accion1'     value=''>
  <input type="hidden" name='accion'      value='<c:out value="${accion}"/>'>
  <input type="hidden" name='swci'        value='<c:out value="${swci}"/>'>
  <input type="hidden" name='id_paciente' value='<c:out value="${id_paciente}"/>'>
  <input type="hidden" name='id_estado'   value='<c:out value="${buscarPaciente.id_estado}"/>'>
  <input type="hidden" name='recargado'   value='Si'>
</form>
