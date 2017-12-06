<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"><b> Pacientes en Lista de Espera</b></div>

<form name="listarreservasconsul" method="POST" action='<c:url value="/ListarReservas.do"/>' >
 
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th> No </th>
    <th> FECHA </th>
    <th> C.I. </th>
    <th> Matricula </th>
    <th> Telefono </th>
<c:if test="${seguro_estab == '10' }">
          <th> Empresa </th>
    </c:if>
    
    <th> NOMBRES PACIENTE </th>
    <th> Edad </th>
    <th> CONSULTORIO </th>  
    <th> Seguro </th> 
    <th> TRIAJE </th> 
    <th> MODIFICAR </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
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
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><font color="blue">&nbsp;&nbsp;<b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></font></td>       
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nro_registro}"/></td> 
       <td><c:out value="${lista.telefono}"/></td> 
       <c:if test="${seguro_estab == '10' }">
             <td style="color:blue"><c:out value="${fn:substring(lista.cadena1,0,25)}"/></td> 
       </c:if>
       
       <c:if test="${lista.codestaref== 0 }">
               <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b>
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
           <c:if test="${lista.codestaref != 0 }">
               <td><b><c:out value="${fn:substring(lista.nombres,0,30)}"/></b><br><font color="red" size="4">Transferido : &nbsp;&nbsp;<c:out value="${lista.nombrecodestared}"/></font></td> 
           </c:if>
       <form name=formaHR<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaHR<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad_ini}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
       <c:if test="${lista.suma1 == 0 }">
               <td><c:out value="${lista.consultorio}"/>
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
       </c:if>
       <c:if test="${lista.suma1 != 0 }">
                <td>Interconsulta:<font color="green"><c:out value="${lista.cadena4}"/></font>--<font color="red"><c:out value="${lista.cadena3}"/></font></td>
      </c:if>
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">Ley475</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
                <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
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
         <div><a class="btn btn-primary btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
  	 <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >
         <input type="hidden" name="id_persona" value=<c:out value="${lista.id_persona}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${lista.id_consultorio}"/> >         
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="expedido" value=<c:out value="${lista.expedido}"/> >         
	 <input type="hidden" name="accion" value='Consultar'>
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
   </c:forEach>
</table>

 <div style="font-size:15pt"><b> Pacientes que ya fueron Atendidos</b></div>
 <br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th> No </th>
    <th> FECHA </th>
    <th> PACIENTE </th>
    <th> Edad </th>
    <th> Seguro </th>   
    <th> Ley475 </th>
    <th> Recetas </th>        
    <th> C-1 </th>    
    <th> C-2 </th>    
    <th> C-3 </th>    
    <th> C-4 </th>
    <th> C-5 </th>    
    <th> C-6 </th>    
    <th> C-7 </th>        
    <th> C-V </th>
    <th> ExC </th>
    <th> Ima </th>
    <th colspan="3" align="center"> IMPRIMIR </th>
    <th> Modificar </th>
    </tr>  
   <c:forEach var="lista" items="${milistaAten}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <form name=formaMaMe<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
           <td>     
             <div><a href="javascript:document.formaMaMe<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/></a></center></div>
             <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_historial}"/> >
             <input type="hidden" name="accion" value='EliminarH'>
           </td>
       </form> 
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/>&nbsp;&nbsp;<font size="2"><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></font></td>       
       <c:if test="${lista.rango==1}">
           <td><c:out value="${lista.nombres}"/><font color="red">.Emergencia</font>
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
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    <c:if test="${lista.expedido=='S'}">
         <form name=formaHA<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarAmbulatorioGen.do"/>'>
              <td align="center" style="color:red">     
                  <div><center><a href="javascript:document.formaHA<c:out value="${contador.count}"/>.submit();">Ley475</a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="nombres"    value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>
    </c:if>
    <c:if test="${lista.expedido=='E'}"> 
              <td align="center">  Externo   </td>
    </c:if>
    
    <c:if test="${lista.expedido=='P'}"> 
           <td align="center" style="color:blue"><c:out value="${lista.accion}"/> </td>
    </c:if>
        
    <c:if test="${lista.expedido=='S'}">  <!--esto es el No. receta de sumi --> 
        <td align="center"><c:out value="${lista.suma1}"/></td>   
    </c:if>
    
    <c:if test="${lista.expedido!='S'}"> 
       <td align="center"><b>0<b></td>
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
       <form name=forma3P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno3.do"/>'>
              <td align="center">  
                  <div><center><a href="javascript:document.forma3P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma5}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno3' >
              </td>
       </form><!--Fin de cuaderno3 individual  -->
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
       <form name=forma7P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno7.do"/>'>
              <td align="center" style="color:blue">  
                  <div><center><a href="javascript:document.forma7P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma9}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno7' >
              </td>
          </form><!--Fin de cuaderno7 individual  -->
       <form name=formaV<c:out value="${contador.count}"/> method=post action='<c:url value="/Vacunas.do"/>'>
              <td align="center" style="color:blue">
                  <div><center><a href="javascript:document.formaV<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.suma10}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Vacunas1' >
              </td>
          </form><!--Fin de cuaderno vacunas individual  -->
          <td align="center" style="color:blue"><b>
                          <c:out value="${lista.suma11}"/>     
           </b></td>
           <td align="center" style="color:blue"><b>
                          <c:out value="${lista.suma12}"/>     
           </b></td>
     <td >   
     <form name=formaMip1<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>
       <a href="javascript:document.formaMip1<c:out value="${contador.count}"/>.submit();"><font size="2">Imp1</font></a>
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >            
	  <input type="hidden" name="accionc"         value='imprimeHCLBasica1'>
     </form>  
     </td>
     <td>
     <form name=formaMip2<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>
         <a href="javascript:document.formaMip2<c:out value="${contador.count}"/>.submit();"><font size="2">Imp2</font></a>
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >            
	  <input type="hidden" name="accionc"         value='imprimeHCLBasica2'>
     </form>
     </td>
     <td>
     <form name=formaMip3<c:out value="${contador.count}"/> method=post action='<c:url value="/HistorialAtendidos.do"/>'>
         <a href="javascript:document.formaMip3<c:out value="${contador.count}"/>.submit();"><font size="2">Imp3</font></a>
          <input type="hidden" name='id_historial'    value='<c:out value="${lista.id_historial}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${lista.id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${lista.id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${lista.id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${lista.expedido}"/>' >            
	  <input type="hidden" name="accionc"         value='imprimeHCLBasica3'>
     </form>
     </td>
     
     <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td >    <!--td onClick="return cambiarVentana()">  --> 
         <div><a class="btn btn-primary btn-sm" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Consultar</a></div>
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
     
   </c:forEach>
</table>
