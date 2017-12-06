<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<c:if test="${accion == 'Modificar'}">
  <div style="font-size:15pt"> Modificando Personas</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando Personas</div>
</c:if>

<div><a class="btn btn-warning" href='ListarPersonas.do'>Volver</a></div>
<br>

<form name="adicionarempleado" method="POST">
<center>   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3">INTRODUZCA LOS DATOS DEL TRABAJADOR EN SALUD</th>
  </tr>
  <trstyle="font-size:10pt">
    <td width="40%" valign="top">
    <table class="formulario" width="100%">
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">C.I.<font color='red'>(*)</font> </td>
        <td><input type="text" name="dip" value="<c:out value = "${dip}"/>" maxlength=15 onblur='validar(dip,"A9")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2"> Matricula Prof  </td>
        <td><input type="text" name="matricula" value="<c:out value = "${matricula}"/>" maxlength=15 onblur='validar(matricula,"A9")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">CodigoCNS  </td>
        <td><input type="text" name="codigoprof" value="<c:out value = "${codigoprof}"/>" maxlength=15 onblur='validar(codigoprof,"A9")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Paterno</td>
        <td><input type="text" name="paterno" value="<c:out value = "${paterno}"/>"maxlength=20 onblur='validar(paterno,"A")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Materno</td>
        <td><input type="text" name="materno" value="<c:out value = "${materno}"/>"maxlength=20 onblur='validar(materno,"A")'/></td>            
      </tr>    
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Nombres <font color='red'>(*)</font> </td>    
        <td><input type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="30" onblur='validar(nombres,"A")'/></td>
      </tr>    
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Sexo <font color='red'>(*)</font> </td>
        <td>
          <SELECT NAME="id_sexo">
            <option value="">-- seleccione --
            <c:forEach var="sexo" items="${listaSexos}">
  	      <OPTION value="<c:out value="${sexo.id_sexo}"/>" <c:if test="${sexo.id_sexo == id_sexo}">selected</c:if>> 
	        <c:out value="${sexo.sexo}"/>
	      </option>
	    </c:forEach>
          </SELECT>	
        </td>
      </tr> 
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Estado civil <font color='red'>(*)</font> </td> 
        <td>
          <SELECT NAME="id_ecivil">
	    <option value="">-- seleccione --
            <c:forEach var="estado" items="${listaCivil}">
	      <OPTION value="<c:out value="${estado.id_ecivil}"/>" <c:if test="${estado.id_ecivil == id_ecivil}">selected</c:if>> 
	        <c:out value="${estado.ecivil}"/>
	      </option>
	    </c:forEach>
           </SELECT>	
        </td>
      </tr>
    </table>
    </td>
    
    <td width="60%" valign="top">
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DATOS CONSULTORIO </font></th>
      </tr>
      <c:if test="${swclav!='1'}">
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Cargo <font color='red'>(*)</font> </td>   
        <td>
          <SELECT NAME="id_consultorio">
            <option value="0">-- seleccione --
       	    <c:forEach var="pas" items="${listaCargos}">
    	      <OPTION value="<c:out value="${pas.id_consultorio}"/>" <c:if test="${pas.id_consultorio == id_consultorio}">selected</c:if>> 
	        <c:out value="${pas.consultorio}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Establecimiento <font color='red'>(*)</font> </td>     
        <td>
          <SELECT NAME="cod_esta">
            <option value="0">-- seleccione --  
            <c:forEach var="estab" items="${listaEstab}">
	      <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
	        <c:out value="${estab.cod_esta}"/>;<c:out value="${estab.establecimiento}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
          <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Tipo Personal</td>    
             <td> 
                <c:if test="${id_urgencias=='0'}">
                    <SELECT NAME="urgencias">
                        <option value="0" > Personal Normal </option>
                        <option value="1" > Personal Urgencias</option>
                     </SELECT>    
                </c:if>
                <c:if test="${id_urgencias=='1'}">
                    <SELECT NAME="urgencias">
                        <option value="1" > Personal Urgencias</option>
                        <option value="0" > Personal Normal </option>
                     </SELECT>    
                </c:if>
             </td>
            </tr>    
            <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Farmacia</td>    
             <td>
                <SELECT NAME="id_farmacia">
                <option value="0">-- seleccione --  
                <c:forEach var="listaf" items="${listarFarmacia}">                
                   <option value="<c:out value="${listaf.id_farmacia}"/>"<c:if test="${listaf.id_farmacia == id_farmacia}">selected</c:if>> 
                     <c:out value="${listaf.id_farmacia}"/>;<c:out value="${listaf.farmacia}"/>
                   </option>
                </c:forEach>
              </SELECT>
             </td>
           </tr> 
           <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Laboratorio</td>    
             <td>
                <SELECT NAME="id_laboratorio">
                <option value="0">-- seleccione --  
                <c:forEach var="listal" items="${listarLaboratorios}">
                  <option value="<c:out value="${listal.id_laboratorio}"/>"<c:if test="${listal.id_laboratorio == id_laboratorio}">selected</c:if>> 
                    <c:out value="${listal.id_laboratorio}"/>;<c:out value="${listal.laboratorio}"/>
                  </option>
                </c:forEach>
              </SELECT>
             </td>
           </tr> 
           <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Piso</td>    
             <td>
                <SELECT NAME="id_piso">
                <option value="0">-- seleccione --  
                <c:forEach var="listaP" items="${listarPisos}">
                  <option value="<c:out value="${listaP.id_piso}"/>"<c:if test="${listaP.id_piso == id_piso}">selected</c:if>> 
                    <c:out value="${listaP.id_piso}"/>;<c:out value="${listaP.piso}"/>
                  </option>
                </c:forEach>
              </SELECT>
             </td>
           </tr> 
           <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Medico Asignado</td>    
             <td>
                <SELECT NAME="id_medico">
                <option value="0">-- seleccione --  
                <c:forEach var="emp" items="${listarPersonas}">                
                      <option value="<c:out value="${emp.id_persona}"/>" <c:if test="${emp.id_persona == id_medico}"> selected </c:if>>
                        <c:out value="${emp.nombres}"/>
                      </option>
                </c:forEach>
              </SELECT>
             </td>
           </tr> 
     </c:if>
     <c:if test="${swclav=='1'}">
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Cargo <font color='red'>(*)</font> </td>
        	      
        <td><input readonly type="text" name="id_consultorio" value="<c:out value="${id_consultorio}"/>" size="30"  /></td>
      </tr>
       <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Establecimiento <font color='red'>(*)</font> </td>
        	      
        <td><input readonly type="text" name="cod_esta" value="<c:out value="${cod_esta}"/>" size="30"  /></td>
      </tr>
      <c:if test="${idcargo=='33'}">
          <tr style="font-size:10pt">    
             <td align="right" bgcolor="#F2F2F2">Farmacia</td>    
       	       
             <td>
                <SELECT NAME="id_farmacia">
                <option value="0">-- seleccione --  
                <c:forEach var="listaf" items="${listarFarmacia}">
                  <c:if test="${listaf.id_estado=='A'}">  
                    <option value="<c:out value="${listaf.id_farmacia}"/>"<c:if test="${listaf.id_farmacia == id_farmacia}">selected</c:if>> 
                       <c:out value="${listaf.id_farmacia}"/>;<c:out value="${listaf.farmacia}"/>
                    </option>
                  </c:if>  
                </c:forEach>
              </SELECT>
             </td>
           </tr> 
      </c:if>
     </c:if>
    </table>
    </td>
  </tr>
  <tr>
    <td valign="top">
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>LUGAR DE NACIMIENTO</font></th>
      </tr>	
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Pa&iacute;s <font color='red'>(*)</font> </td>
        	      
        <td>
          <SELECT NAME="id_pais" onchange="javascript:document.adicionarempleado.submit();">
            <c:forEach var="pais" items="${listaPaises}">
    	      <option value="<c:out value="${pais.id_pais}"/>" <c:if test="${pais.id_pais == id_pais}">selected</c:if>> 
	        <c:out value="${pais.pais}"/>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>	
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Departamento <font color='red'>(*)</font> </td>
        
        <td>
          <SELECT NAME="id_departamento" onchange="javascript:document.adicionarempleado.submit();">
            <option value="0">-- seleccione --
   	    <c:forEach var="dpto" items="${listaDepartamentos}">
	      <OPTION value="<c:out value="${dpto.id_departamento}"/>"<c:if test="${dpto.id_departamento == id_departamento}">selected</c:if>> 
	        <c:out value="${dpto.departamento}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr style="font-size:10pt">    
      <tr>
        <td align="right" bgcolor="#F2F2F2">Provincia <font color='red'>(*)</font> </td>
        
        <td>
          <SELECT NAME="id_provincia" onchange="javascript:document.adicionarempleado.submit();">
            <option value="0">-- seleccione --
	    <c:forEach var="prov" items="${listaProvincias}">
	      <OPTION value="<c:out value="${prov.id_provincia}"/>"<c:if test="${prov.id_provincia == id_provincia}">selected</c:if>> 
	        <c:out value="${prov.provincia}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Localidad <font color='red'>(*)</font> </td>
        
        <td>
          <SELECT NAME="id_localidad">
            <c:forEach var="local" items="${listaLocalidad}">
	      <OPTION value="<c:out value="${local.id_localidad}"/>"<c:if test="${local.id_localidad == id_localidad}">selected</c:if>> 
	        <c:out value="${local.localidad}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Fecha de nac. <font color='red'>(*)</font> </td>    
        
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
        </td>	                 
      </tr>
    </table>
    </td>
    <td valign="top">
    <table class="formulario" width="100%">
      <tr>
        <th colspan="3"><font size=2>DIRECCI&Oacute;N</font></th>
      </tr>
      <tr style="font-size:10pt">    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n <font color='red'>(*)</font> </td>    
        	      
        <td><input type="text" name="direccion" value="<c:out value = "${direccion}"/>" maxlength=60/></td>
      </tr> 
      <c:if test="${accion == 'Modificar'}">
        <tr style="font-size:10pt">
          <td align="right" bgcolor="#F2F2F2">Firma</td>
          	      
          <c:if test="${ swclav!='1'}">
              <td><input type="text" name="firma" value="<c:out value = "${firma}"/>" maxlength=40 /></td>
          </c:if>
          <c:if test="${ swclav=='1'}">
              <td><input type="text" name="firma" value="<c:out value = "${firma}"/>" maxlength=40 readonly/></td>
          </c:if>
        </tr> 
      </c:if>
      <c:if test="${accion == 'Adicionar'}">
        <tr style="font-size:10pt">
          <td align="right" bgcolor="#F2F2F2">Firma</td>
          	      
          <td><input type="text" name="firma" value="/opt/firmas/f1.bmp" maxlength=40 /></td>
        </tr> 
      </c:if>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Tel&eacute;fono</td>
        	      
        <td><input type="text" name="telefono" value="<c:out value = "${telefono}"/>" maxlength=30 onblur='validar(telefono,"9")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Celular</td>
        	      
        <td><input type="text" name="celular" value="<c:out value = "${celular}"/>" maxlength=30 onblur='validar(this,"9")'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td align="right" bgcolor="#F2F2F2">Correo</td>   
        <td><input type="text" name="correo" value="<c:out value = "${correo}"/>" maxlength="100" /></td>
      </tr>
      <c:if test="${accion == 'Modificar' and swclav!='1'}">
        <tr style="font-size:10pt">
          <td align="right" bgcolor="#F2F2F2">Estado <font color='red'>(*)</font> </td>
          <td><input type=checkbox name="id_estado" value="<c:out value="${buscarEmpleado.id_estado}"/>" <c:if test="${buscarEmpleado.id_estado == 'A'}">checked</c:if>>
          </td>
        </tr>
      </c:if>
    </table>
    </td>
  </tr>
</table>
</center>   
<center>
  <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionarempleado.accion1.value='Guardar';
                                                                      document.adicionarempleado.action='<c:url value="/ConfirmarPersona.do"/>'"></td>
</center>
  <input type="hidden" name='accion1'         value=''>   
  <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
  <input type="hidden" name='swclav'          value='<c:out value="${swclav}"/>'>
  <input type="hidden" name='id_estado'      value='<c:out value="${id_estado}"/>'>
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
  <input type="hidden" name='id_pais'         value='<c:out value="${id_pais}"/>'>
  <input type="hidden" name='recargado'       value='Si'>
</form>
