<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<center>
 <form name="forma" method="POST" action='<c:url value="/ListarCamasInternados.do"/>' >   
  <table class="table table-striped table-bordered table-condensed table-responsive">
    <tr>
      <th colspan="3" bgcolor="#F2F2F2"><center>BUSQUEDA DE ESTADO DE CAMAS Y SALAS DISPONIBLES</center></th>
    </tr>
    <tr>
     <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-condensed table-responsive">	     
             <tr>
                <td class="etiqueta">Elegir Piso  </td>
      	      
                <td>
                  <SELECT NAME="id_piso" onchange="javascript:document.forma.submit();">
                    <option value="0">-- Sin Asignar Piso --
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
            <table>	     
             <tr>
                <td class="etiqueta">Elegir Sala  </td>      
                <td>
                  <SELECT NAME="id_sala" onchange="javascript:document.forma.submit();">
                    <option value="0">-- Sin Asignar Sala --
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
            <table>	     
             <tr>
                <td class="etiqueta">Estado Cama  </td>	      
                <td>
                  <SELECT NAME="estado" onchange="javascript:document.forma.submit();">
                        <c:if test="${id_estado=='0'}"> 
                            <option value="0"> Camas Libres </option>
                            <option value="1"> Camas Ocupadas </option>
                        </c:if>
                        <c:if test="${id_estado=='1'}"> 
                            <option value="1"> Camas Ocupadas </option>
                            <option value="0"> Camas Libres </option>
                        </c:if>
                  </SELECT>	
                </td>       
            </tr>  
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
</form>  
</center>


<c:if test="${listaocupada!='SI'}"> 
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> PISO </th>
    <th bgcolor="#F2F2F2"> SALA </th>
    <th bgcolor="#F2F2F2"> CAMA </th>
    <th bgcolor="#F2F2F2"> ESTADO </th>
    </tr>  
   <c:forEach var="lista" items="${listarCamasSala}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${lista.piso}"/></td>
       <td><c:out value="${lista.sala}"/></td>
       <td><c:out value="${lista.cama}"/></td>      
       <c:if test="${lista.estado=='1'}"> 
          <td align="center" style="color:Red">Ocupado</td>
       </c:if>
       <c:if test="${lista.estado=='0'}"> 
          <td align="center" style="color:blue">Libre</td>
       </c:if>
     </tr>   
   </c:forEach>
</table>
</c:if>


<c:if test="${listaocupada=='SI'}"> 
 <table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <th> No. </th>
    <th> FECHA </th>
    <th> Sala/ <br>Cama </th>
    <th> C.I. </th>
    <c:if test="${cod_esta=='200010'}"> 
        <th> Matricula </th>
        <th> Telefono </th>
        <th> Tipo </th>
        <th> Empresa </th>
    </c:if>
    <th> NOMBRE PACIENTE </th>
    <th> EDAD </th>
    <th> Seguro </th>    
    <th> Receta </th>    
    <th> Ley475 </th>   
    <th> Diagnostico </th>
    </tr>  
   <c:forEach var="lista" items="${listarPacInter}" varStatus="contador">
     <tr>
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><br><b><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></b></td>
       <td align="center"><font color="blue"><c:out value="${lista.sala}"/></font><br><c:out value="${lista.cama}"/></td>
       <td><c:out value="${lista.cadena1}"/></td>
       <c:if test="${cod_esta=='200010'}"> 
           <td><c:out value="${lista.cadena2}"/></td>
           <td><c:out value="${lista.cadena4}"/></td>
           <td align="center" style="color:red"><c:out value="${lista.cadena3}"/></td>
           <td><c:out value="${fn:substring(lista.cadena,0,25)}"/></td>
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
         <td align="center" style="color:blue"><c:out value="${lista.seguro}"/> </td>
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
       <td align="center" style="color:red"><b><c:out value="Falta"/></b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='E' and lista.edad_fin<=0}"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    
    <c:if test="${lista.expedido=='P' }"> 
       <td align="center"><b><c:out value="${lista.edad_fin}"/><b></td>
    </c:if>
    <td><c:out value="${lista.cadena5}" escapeXml="false"/></td>   
    </tr> 
   </c:forEach>
</table>
</c:if>    