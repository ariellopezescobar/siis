<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
 <form name="forma" method="POST" action='<c:url value="/ListarInternados.do"/>' >   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th colspan="3"><center>BUSQUEDA PACIENTES EN SERVICIO INTERNACION</center></th>
    </tr>
    <tr>
     <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive">	     
             <tr style="font-size:11pt">
                <td align="right">Elegir Piso  </td>	      
                <td>
                  <SELECT NAME="id_piso" onchange="javascript:document.forma.submit();">
                     <option value="0">-- Sin Piso --</option> 
                    <c:forEach var="estado" items="${listarPisos}">
                      <option value="<c:out value="${estado.id_piso}"/>" <c:if test="${estado.id_piso == id_piso}">selected</c:if>>
                        <c:out value="${estado.piso}"/>
                      </option></c:forEach></SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
      <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive">	     
             <tr style="font-size:11pt">
                <td align="right">Elegir Sala  </td>      
                <td>
                  <SELECT NAME="id_sala" onchange="javascript:document.forma.submit();">
                    <option value="0">-- seleccione --</option>
                    <c:forEach var="estado" items="${listarSalas}">
                      <option value="<c:out value="${estado.id_sala}"/>" <c:if test="${estado.id_sala == id_sala}">selected</c:if>>
                        <c:out value="${estado.sala}"/>
                      </option></c:forEach>
                  </SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
      <td>
        <fieldset>
              <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
                <tr style="font-size:11pt">
                  <td align=right class=colh>Datos</td>
                  <td class=colb><input input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
                  <td coslpan=3><input class="btn btn-success" type="submit" name=accion1 value="BuscarP"></td>
                </tr> 
              </table>
             </fieldset>
        </td>
    </tr>
  </table>
</form>  
</center>  

<table class="tabla" border="0">
  <tr>
   <td>
     <form name=formaLabz method=post action='<c:url value="/ListarCamasInternados.do"/>'>
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaLabz.submit();">Ver Camas Vacias</a></div>
          <input type="hidden" name='id_persona'    value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
          <input type="hidden" name="id_persona"     value=<c:out value="${id_persona}"/> >         
          <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
          <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
          <input type="hidden" name="expedido"       value=<c:out value="${lista.expedido}"/> >         
          <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >   
          <input type="hidden" name="accion1"        value='VerCamasVacias' >
          <input type="hidden" name="estado"         value='0' >
     </form>
   </td> 
 </tr>
</table>
  
  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th> No. </th>
    <th> FECHA </th>
    <th> Sala/ <br>Cama </th>
    <c:if test="${cod_esta=='200010'}"> 
        <th> Matricula </th>
        <th> Telefono </th>
        <th> ID </th>
        <th> Empresa </th>
    </c:if>
    
    <th> NOMBRE PACIENTE </th>
    <th> Edad </th>
    <th> Seguro </th>    
    <th> Ley<br>475 </th>    
    <th> Nº<br> Rec </th>
    <th> C-1 </th>    
    <th> C-2 </th>     
    <th> C-4 </th>
    <th> C-5 </th>    
    <th> C-6 </th>  
    <th> ExC </th>
    <th> Ima </th>
    <th> Medico </th>
    <th> MODIFICAR </th>

    
    </tr>  
   <c:forEach var="lista" items="${listarPacInter}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/><br><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>
       <td align="center"><font color="blue"><c:out value="${lista.sala}"/></font><br><c:out value="${lista.cama}"/></td>
       <c:if test="${cod_esta=='200010'}"> 
           <td><c:out value="${lista.cadena2}"/></td>
           <td><c:out value="${lista.cadena4}"/></td>
           <td align="center" style="color:red"><c:out value="${lista.cadena3}"/></td>
           <td><c:out value="${fn:substring(lista.cadena5,0,25)}"/></td>
        </c:if>
       
       <td style="color:blue"><b><c:out value="${fn:substring(lista.nombres,0,35)}"/></b></td>   
       
        <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    <c:if test="${lista.expedido=='S'}">
         <form name=formaHA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contador.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td></form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center" style="color:blue">  Externo   </td>
    </c:if>
    <c:if test="${lista.expedido=='P'}"> 
              <td align="center" style="color:blue"><c:out value="${lista.cadena1}"/> </td>
    </c:if>
    <c:if test="${lista.expedido=='S' and lista.suma1>0}"> 
       <td align="center"><b><c:out value="${lista.suma1}"/><b></td>
    </c:if>
    <c:if test="${lista.expedido=='S' and lista.suma1<=0}"> 
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if>
    <c:if test="${lista.expedido=='E' and lista.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    <c:if test="${lista.expedido=='P' }"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
     <form name=formaReceta<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">  
                  <div><center><a href="javascript:document.formaReceta<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma2}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='RecetaT' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>   
       <form name=forma1P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
              <th align="center">
                  <div><center><a href="javascript:document.forma1P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma3}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno1' >
              </th>
       </form><!--Fin de cuaderno1 individual  -->
        <form name=forma2P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno2.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.forma2P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma4}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno2' >
              </td>
       </form><!--Fin de cuaderno2 individual  -->
        <form name=forma4P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno4.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma4P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma6}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno4' >
              </td>
          </form><!--Fin de cuaderno4 individual  -->
          <form name=forma5P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno5.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma5P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma7}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno5' >
              </td>
          </form><!--Fin de cuaderno5 individual  -->
         <form name=forma6P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma6P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma8}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno6' >
              </td>
          </form><!--Fin de cuaderno6 individual  -->    
       <td align="center"><b><c:out value="${lista.suma11}"/></b></td><!--laboratorios  -->
       <td align="center"><b><c:out value="${lista.suma12}"/></b></td><!--imagenologia  -->
       <td><c:out value="${fn:substring(lista.cadena6,0,25)}"/><font color="red">_<c:out value="${lista.suma13}"/></font></td>
      
         <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" class="btn btn-primary btn-sm" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Internado</a></div>
             <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
             <input type="hidden" name="id_persona"     value=<c:out value="${lista.id_persona}"/> >         
             <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
             <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
             <input type="hidden" name="expedido"       value=<c:out value="${lista.expedido}"/> >         
             <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >         
             <input type="hidden" name="accion"         value='Internado' >
             <input type="hidden" name="sw1"            value='actualiza' >
             <input type="hidden" name="swinter"        value='inter' >
           </td>
         </form>
      </tr>
   </c:forEach>
</table>