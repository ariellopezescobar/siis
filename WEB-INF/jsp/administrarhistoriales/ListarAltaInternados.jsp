<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
 <form name="forma" method="POST" action='<c:url value="/ListarAltaInternados.do"/>' >   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th colspan="3"><center>BUSQUEDA PACIENTES QUE FUERON DADOS DE ALTA</center></th>
    </tr>
    <tr>
      <td>
        <fieldset>
              <table class="table table-striped table-bordered table-condensed table-responsive"> 
                <tr>
                  <td align=right >Datos</td>
                  <td >
                     <div class="form-inline">
                      <input class="form-control" type=text name=nombre size="70" onblur='validar(nombre,"A9")'>
                      <input class="btn btn-primary" type="submit" name=accion1 value="BuscarP">
                     </div ></td>
                </tr> 
              </table>
             </fieldset>
        </td>
    </tr>
  </table>
</form>  
</center>  

  
  
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No. </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Sala/ <br>Cama </th>
    <c:if test="${cod_esta=='200010'}"> 
        <th bgcolor="#F2F2F2"> Matricula </th>
        <th bgcolor="#F2F2F2"> Telefono </th>
        <th bgcolor="#F2F2F2"> ID </th>
        <th bgcolor="#F2F2F2"> Empresa </th>
    </c:if>
    <th bgcolor="#F2F2F2"> NOMBRE PACIENTE </th>
    <th bgcolor="#F2F2F2"> Edad </th>
    <th bgcolor="#F2F2F2"> Seguro </th>    
    <th bgcolor="#F2F2F2"> Nº<br> Rec </th>    
    <th bgcolor="#F2F2F2"> Ley<br>475 </th>    
    <th bgcolor="#F2F2F2"> C-1 </th>    
    <th bgcolor="#F2F2F2"> C-2 </th>     
    <th bgcolor="#F2F2F2"> C-4 </th>
    <th bgcolor="#F2F2F2"> C-5 </th>    
    <th bgcolor="#F2F2F2"> C-6 </th>  
    <th bgcolor="#F2F2F2"> ExC </th>
    <th bgcolor="#F2F2F2"> Medico </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th>
   </tr>  
   <c:forEach var="lista" items="${listarPacInter}" varStatus="contador">
     <tr style="font-size:9pt" >
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/><br><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>
       <td align="center"><font color="blue"><c:out value="${lista.sala}"/></font><br><c:out value="${lista.cama}"/></td>
    
       <c:if test="${cod_esta=='200010'}"> 
           <td><c:out value="${lista.cadena2}"/></td>
           <td><c:out value="${lista.cadena4}"/></td>
           <td align="center" style="color:red"><c:out value="${lista.cadena3}"/></td>
           <td><c:out value="${fn:substring(lista.cadena5,0,25)}"/></td>
        </c:if>
       
       <td style="color:blue"><b><c:out value="${fn:substring(lista.nombres,0,25)}"/></b></td>   
       
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
              <td align="center">  E   </td>
    </c:if>
    <c:if test="${lista.expedido=='P'}"> 
              <td align="center" style="color:blue"><c:out value="${lista.cadena1}"/> </td>
    </c:if>
         
       <form name=formaReceta<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarReceta.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.formaReceta<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.edad_ini}"/></a></center></div>
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
       <!--<td align="center" style="color:red"><b><c:out value="Falta"/></b></td>-->
       <td align="center"><b>0</b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='E' and lista.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='P' }"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
       <form name=forma1P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno1.do"/>'>
              <th align="center">     
                  <div><center><a href="javascript:document.forma1P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_tipo_documento}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno1' >
              </th>
       </form><!--Fin de cuaderno1 individual  -->
        <form name=forma2P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno2.do"/>'>
              <td align="center">     
                  <div><center><a href="javascript:document.forma2P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_tipo_parentesco}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno2' >
              </td>
       </form><!--Fin de cuaderno2 individual  -->
        <form name=forma4P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno4.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma4P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_departamento}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno4' >
              </td>
          </form><!--Fin de cuaderno4 individual  -->
          <form name=forma5P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno5.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma5P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.num}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno5' >
              </td>
          </form><!--Fin de cuaderno5 individual  -->
         <form name=forma6P<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
              <td align="center" style="color:blue">     
                  <div><center><a href="javascript:document.forma6P<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.id_provincia}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${lista.id_paciente}"/> >
                  <input type="hidden" name="accion"         value='Cuaderno6' >
              </td>
          </form><!--Fin de cuaderno6 individual  -->    
       <td align="center"><b><c:out value="${lista.id_reservacion}"/></b></td><!--laboratorios  -->
       <td><c:out value="${fn:substring(lista.cadena6,0,25)}"/><font color="red">_<c:out value="${lista.cadena8}"/></font></td>
      
         <form name=formaMaa<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
           <td>     
             <div><a class="btn btn-warning btn-xs" href="javascript:document.formaMaa<c:out value="${contador.count}"/>.submit();">Internado</a></div>
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
      
   </c:forEach>
</table>