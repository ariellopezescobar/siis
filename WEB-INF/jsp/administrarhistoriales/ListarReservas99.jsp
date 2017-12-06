<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarReservas.do"/>' >

<table class="formulario" >   
<tr > <td align="left">

<table class="table table-striped table-bordered table-condensed table-responsive"> 
  <tr>
    <th colspan="3" style="font-size:12pt"><center>Pacientes en Lista de Espera Emergencias por Consultorio - Medico</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-condensed table-responsive"> 
       <tr>
        <td align="right" bgcolor="#F2F2F2">Servicio  </td>      
        <td>
          <SELECT NAME="id_consultorio" onchange="javascript:document.listarreservasconsul.submit();">
	    <option value="0">-- seleccione --
            <c:forEach var="estado" items="${listarCargos}">
                <c:if test="${estado.id_cargo!=7 and estado.id_consultorio!=26 and estado.id_consultorio!=28 and estado.id_consultorio!=34 and estado.id_consultorio!=38 and estado.id_consultorio!=33}"> 
	            <OPTION value="<c:out value="${estado.id_consultorio}"/>" <c:if test="${estado.id_consultorio == id_consultorio}">selected</c:if>> 
	               <c:out value="${estado.consultorio}"/>_<c:out value="${estado.id_consultorio}"/>
	            </option>
                </c:if>
            </c:forEach>
           </SELECT>	
        </td>
       </tr> 
       <tr>
        <td align="right" bgcolor="#F2F2F2">Medico  </td>
        <td>
          <SELECT NAME="id_persona"  onchange="javascript:document.listarreservasconsul.submit();">
            <option value="0">-- seleccione --  
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>_<c:out value="${perso.id_persona}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
          <td align="right" bgcolor="#F2F2F2" >Nombres</td>
          <td ><input type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3><input type="submit" name=accion1 value="BuscarP"></td>
      </tr> 
   </table>
  </td>
  </tr>
 </table>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
</td>
<tr>
</table>
</form> 

   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> C.I. </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> Telefono </th>
    <th bgcolor="#F2F2F2"> Empresa </th>
    <th bgcolor="#F2F2F2"> Cod </th>
    <th bgcolor="#F2F2F2"> NOMBRES PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Seguro </th>
    <th bgcolor="#F2F2F2"> Consultorio </th>        
    <th bgcolor="#F2F2F2"> MEDICO </th>
    <th bgcolor="#F2F2F2"> TRIAJE </th>
    <th bgcolor="#F2F2F2"> ACCION </th>
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
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><font size="2" color="blue">&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></font></td>       
       <td><c:out value="${fn:substring(lista.carnet,0,8)}"/></td> 
       <td><c:out value="${lista.nro_registro}"/></td> 
       <td><c:out value="${lista.telefono}"/></td> 
       <td style="color:narrow"><c:out value="${fn:substring(lista.cadena1,0,25)}"/></td> 
       <td align="center"><c:out value="${lista.nro}"/></td>
       <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b>
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
               <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
       </td>  
       <form name=formaHR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaHR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad_ini}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
       
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">Ley475</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }"> 
                <td align="center" style="color:blue"><c:out value="${lista.cadena2}"/></td>
      </c:if>
       <td><c:out value="${lista.consultorio}"/></td>
       <c:if test="${lista.id_persona != 0 }">
          <c:forEach var="listaPer" items="${listarPersonas}">
             <c:if test="${lista.id_persona==listaPer.id_persona}"> 
                <td>Interconsulta:<font color="green"><c:out value="${listaPer.nombres}"/></font></td>
             </c:if>  
          </c:forEach> 
      </c:if>
      <td><c:out value="${fn:substring(lista.nombre,0,25)}"/></td> 
      <c:if test="${lista.id_tipo == '1' }">
               <td style="font-size:14pt; color:red">Rojo-Inmediato</td>
     </c:if> 
     <c:if test="${lista.id_tipo == '2' }">
               <td  style="font-size:13pt; color:orange">Naranja-15min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '3' }">
               <td  style="font-size:13pt; color:yellow">Amarillo-<font color="black">60min</font></td>
     </c:if>
     <c:if test="${lista.id_tipo == '4' }">
               <td  style="font-size:13pt; color:green">Verde-120min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '5' }">
               <td  style="font-size:13pt; color:blue">Azul-240min</td>
     </c:if>
     <c:if test="${lista.id_tipo == '0' }">
               <td>Normal</td>
     </c:if>
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td >     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion"    value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona"        value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio"    value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente"       value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido"          value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion"            value='Consultar' >
	 <input type="hidden" name="sw"                value='1' >
       </td>
     </form>
    </tr>   
   </c:forEach>
</table>

 <div style="font-size:14pt"> Pacientes que ya fueron Atendidos Emergencias</div>
 <br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> C.I. </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> Telefono </th>
    <th bgcolor="#F2F2F2"> Cod </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Seguro </th>    
    <th bgcolor="#F2F2F2"> Receta </th>    
    <th bgcolor="#F2F2F2"> Ley475 </th>    
    <th bgcolor="#F2F2F2"> C-1 </th>    
    <th bgcolor="#F2F2F2"> ExC </th>
    <th bgcolor="#F2F2F2"> Imprime </th>
    <th bgcolor="#F2F2F2"> Servicio </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milistaAten}" varStatus="contador">
     <tr style="font-size:9pt">
       <form name=formaMaMe<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
           <td>     
             <div><a href="javascript:document.formaMaMe<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/></a></center></div>
             <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
             <input type="hidden" name="accion" value='EliminarH'>
           </td>
       </form> 
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>       
       <td><c:out value="${fn:substring(lista.carnet,0,8)}"/></td>
       <td><c:out value="${lista.cadena2}"/></td>
       <td><c:out value="${lista.cadena4}"/></td>
       <td align="center"><c:out value="${lista.cadena3}"/></td>
       <c:if test="${lista.rango==1}">
           <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b><font color="red">.Emergencia</font>
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
               <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
           </td>      
       </c:if>    
       <c:if test="${lista.rango!=1}">
           <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b>
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
               <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${lista.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
           </td>      
       </c:if>    
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    <c:if test="${lista.expedido=='S'}">
         <form name=formaHA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contador.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center">  Externo   </td>
    </c:if>
    <c:if test="${lista.expedido=='P'}"> 
              <td align="center" style="color:blue"><c:out value="${lista.cadena1}"/> </td>
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
    <c:if test="${lista.expedido=='S' and lista.edad_fin>0}"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='S' and lista.edad_fin<=0}"> 
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='E' and lista.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='P' }"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
       <form name=forma1P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
              <th align="center">     
                  <div><center><a href="javascript:document.forma1P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma3}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno1' >
              </th>
       </form><!--Fin de cuaderno1 individual  -->
       <td align="center"><c:out value="${lista.suma2}"/></td>
       
       <td >
     <center>
     <form name=formaMip1<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>
       <div class=""><a href="javascript:document.formaMip1<c:out value="${contador.count}"/>.submit();"><font size="2">Imp1</font></a></div>
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >            
	  <input type="hidden" name="accionc"         value='imprimeHCLBasica1'>
     </form> 
     </center>
     </td>
     
       <td style="color:blue"><c:out value="${fn:substring(lista.cadena7,0,15)}"/></td>
       <td><c:out value="${fn:substring(lista.cadena6,0,20)}"/></td>
       
     <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td >    <!--td onClick="return cambiarVentana()">  --> 
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
         
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
         <input type="hidden" name="tipo_medico" value=<c:out value="${tipo_medico}"/> >         
	 <input type="hidden" name="accion" value='Consultar' >
	 <input type="hidden" name="sw1" value='actualiza' >
       </td>
     </form>
     </tr>  
   </c:forEach>
</table>


<div style="font-size:14pt"> Pacientes en Observacion</div>
 <br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt" >
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> C.I. </th>
    <th bgcolor="#F2F2F2"> Matricula </th>
    <th bgcolor="#F2F2F2"> Telefono </th>
    <th bgcolor="#F2F2F2"> Cod </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Seguro </th>    
    <th bgcolor="#F2F2F2"> Receta </th>    
    <th bgcolor="#F2F2F2"> Ley475 </th>    
    <th bgcolor="#F2F2F2"> C-1 </th>    
    <th bgcolor="#F2F2F2"> ExC </th>
    <th bgcolor="#F2F2F2"> Servicio </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    <th bgcolor="#F2F2F2" MODIFICAR </th>
  </tr>  
    
   <c:forEach var="listae" items="${listarObservacion}" varStatus="contadore">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contadore.count}"/></td>
       <td><fmt:formatDate value="${listae.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<b><fmt:formatDate value="${listae.fecha}" pattern='HH:mm'/></b></td>       
       <td><c:out value="${fn:substring(listae.carnet,0,8)}"/></td>
       <td><c:out value="${listae.cadena2}"/></td>
       <td><c:out value="${listae.cadena4}"/></td>
       <td align="center"><c:out value="${listae.cadena3}"/></td>
       <c:if test="${listae.rango==1}">
           <td><b><c:out value="${fn:substring(listae.nombres,0,30)}"/></b><font color="red">.Emergencia</font>
              <c:if test="${lista.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
           </td>   
       </c:if>    
       <c:if test="${listae.rango!=1}">
           <td><b><c:out value="${fn:substring(listae.nombres,0,30)}"/></b>
              <c:if test="${listae.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${listae.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
           </td>   
       </c:if>    
       <form name=formaH2<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH2<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.edad}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial'>
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    <c:if test="${listae.expedido=='S'}">
         <form name=formaHA<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contadore.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    </c:if>
    <c:if test="${listae.expedido=='E'}"> 
              <td align="center">  Externo   </td>
    </c:if>
    <c:if test="${listae.expedido=='P'}"> 
            <td align="center" style="color:blue"><c:out value="${listae.cadena1}"/> </td>
    </c:if>
         

       <form name=formaReceta<c:out value="${contadore.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.formaReceta<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.suma2}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listae.nombres}"/> >
                  <input type="hidden" name="accion"         value='RecetaT' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
       </form>     
    <c:if test="${listae.expedido=='S' and listae.edad_fin>0}"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='S' and listae.edad_fin<=0}"> 
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='E' and listae.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${listae.expedido=='P' }"> 
       <td align="center"><b><c:out value="${listae.edad_fin}"/><b></td>
    </c:if>
       <form name=forma1P<c:out value="${contadore.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
              <th align="center">     
                  <div><center><a href="javascript:document.forma1P<c:out value="${contadore.count}"/>.submit();"><c:out value="${listae.suma3}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno1' >
              </th>
       </form><!--Fin de cuaderno1 individual  -->
       <td align="center"><c:out value="${listae.suma2}"/></td>
       <td><c:out value="${listae.cadena7}"/></td>
       <td><c:out value="${fn:substring(listae.cadena6,0,25)}"/></td>
       
         <form name=formaMaao<c:out value="${contadore.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaao<c:out value="${contadore.count}"/>.submit();">Internado</a></div>
             <input type="hidden" name="id_reservacion" value=<c:out value="${listae.id_historial}"/> >
             <input type="hidden" name="id_persona"     value=<c:out value="${listae.id_persona}"/> >         
             <input type="hidden" name="id_consultorio" value=<c:out value="${listae.id_consultorio}"/> >         
             <input type="hidden" name="id_paciente"    value=<c:out value="${listae.id_paciente}"/> >
             <input type="hidden" name="expedido"       value=<c:out value="${listae.expedido}"/> >         
             <input type="hidden" name="tipo_medico"    value=<c:out value="${tipo_medico}"/> >         
             <input type="hidden" name="accion"         value='Internado' >
             <input type="hidden" name="sw1"            value='actualiza' >
             <input type="hidden" name="swinter"        value='inter' >
           </td>
         </form>
      </tr>  
   </c:forEach>
</table>