<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />

<div style="font-size:15pt"><center> Laboratorios Realizados de Pacientes Internados</center></div>

 <center>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">  
 <tr>  
 <form name="forma" method="POST" action='<c:url value="/LabRealizadoI.do"/>' >
  <td>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th>BUSQUEDA DE DATOS</th>
    </tr>
    <tr>
      <td>
        <fieldset> 
          <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr>  
  	        <td align="right" bgcolor="#F2F2F2">Fecha inicio  </td>
                <td>
	          <SELECT NAME="diai">
                         <c:forEach var="dias" items="${dias}">
                           <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                             <c:out value="${dias}"/></option></c:forEach></SELECT>
                    <SELECT NAME="mesi">
                         <c:forEach var="meses" items="${meses}">
                           <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                             <c:out value="${meses}"/></option></c:forEach></SELECT>
                     <SELECT NAME="anioi">
                         <c:forEach var="anios" items="${anios}">
                           <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                             <c:out value="${anios}"/></option></c:forEach></SELECT>
                     <SELECT NAME="horai">
                         <c:forEach var="horas" items="${horas}">
                           <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora}">selected</c:if>> 
                             <c:out value="${horas}"/></option></c:forEach></SELECT>
                     <SELECT NAME="minutoi">
                         <c:forEach var="minutos" items="${minutos}">
                           <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto}">selected</c:if>> 
                             <c:out value="${minutos}"/></option></c:forEach></SELECT>
                     <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
                </td>
    	      </tr>
	      <tr>
	        <td align="right" bgcolor="#F2F2F2">Fecha final  </td>
                <td>
	          <SELECT NAME="diaf">
                         <c:forEach var="dias" items="${dias}">
                           <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
                             <c:out value="${dias}"/></option></c:forEach></SELECT>
                    <SELECT NAME="mesf">
                         <c:forEach var="meses" items="${meses}">
                           <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
                             <c:out value="${meses}"/></option></c:forEach></SELECT>
                     <SELECT NAME="aniof">
                         <c:forEach var="anios" items="${anios}">
                           <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
                             <c:out value="${anios}"/></option></c:forEach></SELECT>
                     <SELECT NAME="horaf">
                         <c:forEach var="horas" items="${horas}">
                           <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
                             <c:out value="${horas}"/></option></c:forEach></SELECT>
                     <SELECT NAME="minutof">
                         <c:forEach var="minutos" items="${minutos}">
                           <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
                             <c:out value="${minutos}"/></option></c:forEach></SELECT>
                     <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
                </td>
	      </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <center>
    <input type="submit" name="boton" class="btn btn-primary" value="Buscar">
  </center>
 </form></td>
 <form name="formanombre" method="POST" action='<c:url value="/LabRealizadoI.do"/>' >
  <td>
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
      <th>BUSQUEDA DE DATOS</th>
    </tr>
    <tr>
      <td>
        <fieldset> 
       <table >
        <tr>
          <td align=right>Buscar</td>
          <td ><input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3></td>
        </tr> 
        <tr >
            <td colspan="4">
            <table>  
               <tr>
                <td><input type=radio  name="id_estado" value="N" checked >   </td>
                <td class="etiqueta">Nombre</td>
                <td><input type=radio  name="id_estado" value="H" >   </td>
                <td class="etiqueta">H.C.L. </td>
                <td><input type=radio name="id_estado" value="P" >   </td>
                <td class="etiqueta">NºPedido </td>
               </tr>
            </table>
            </td>
        </tr>
      </table>
        </fieldset>
      </td>
    </tr>
  </table>
  <center>
    <input type="submit" name="boton2" class="btn btn-primary" value="Buscar">
  </center>
 </form></td>
  
  </tr>
  </table>
  </center>
  
    
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> ID </th>
    <th bgcolor="#F2F2F2"> Fecha<br> Pedido </th>
    <th bgcolor="#F2F2F2"> H.C.L.</th>
    <th bgcolor="#F2F2F2"> Nombre Completo</th>
    <th bgcolor="#F2F2F2"> Seguro </th>    
    <th bgcolor="#F2F2F2"> Medico  </th> 
    <th bgcolor="#F2F2F2"> Hecho<br>Por:</th>
    <th bgcolor="#F2F2F2"> Num.  </th>
    <th bgcolor="#F2F2F2"> Fecha <br> Realizado </th>
    <th bgcolor="#F2F2F2"> Ver Informe </th>    
    <th bgcolor="#F2F2F2"> Imprimir </th>
    <th bgcolor="#F2F2F2"> Imprimir </th>
    </tr>  
   <c:forEach var="listado" items="${listalab}" varStatus="contador">
     <tr style="font-size:9pt">
     <form name=formaMaMe<c:out value="${contador.count}"/> method=post action='<c:url value="/LabRealizadoI.do"/>'>
       <td>     
         <div class="nota"><a href="javascript:document.formaMaMe<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/></a></center></div>
  	 <input type="hidden" name='id_historial'   value='<c:out value="${listado.id_historial}"/>' >
         <input type="hidden" name='id_pedido'      value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_paciente'    value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='expedido'       value='<c:out value="${listado.expedido}"/>' >
         <input type="hidden" name='fechae'         value='<fmt:formatDate value="${listado.fechae}" pattern='dd/MM/yyyy'/>' >
	 <input type="hidden" name='accion'         value='Estado'>
         <input type="hidden" name='sw'             value='2'>
       </td>
     </form> 
       <td><c:out value="${listado.id_pedido}"/></td>        
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy H:mm'/></td> 
       <form name=formaH<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><center><a href="javascript:document.formaH<c:out value="${contador.count}"/>.submit();"><c:out value="${listado.primera}"/></a></center></div>
                  <input type="hidden" name="id_paciente"    value=<c:out value="${listado.id_paciente}"/> >
                  <input type="hidden" name="nombres"        value=<c:out value="${listado.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
        </form>
       <td><c:out value="${listado.nombres}"/>
               <c:if test="${listado.id_riesgo == '1' }">
                   <font color="Red"  size="4"> RIESGO</font>
               </c:if>
               <c:if test="${listado.id_riesgo == '2' }">
                   <font color="Red"  size="4"> MORA</font>
               </c:if>
               <c:if test="${listado.id_riesgo == '3' }">
                   <font color="Red" size="4"> ACCID.TRAB.</font>
               </c:if>
               <c:if test="${listado.id_riesgo == '4' }">
                   <font color="Red" size="4"> Sin DOC</font>
               </c:if>
       </td>      
           <c:if test="${listado.expedido == 'S' }">
                <td><font color="red" size="2">LEY475</font></td>
            </c:if>
            <c:if test="${listado.expedido == 'P' }">
                <td><c:out value="${fn:substring(listado.aspecto,0,10)}"/></td>
            </c:if>   
            <c:if test="${listado.expedido != 'S' and  listado.expedido != 'P'}">
                <td><font color="blue" size="2">Externo</font></td>
            </c:if>
       <td><c:out value="${listado.nombre}"/></td>   
       <td align="center" style="color:blue"><c:out value="${listado.id_persona}"/></td>
       <td><c:out value="${listado.numpieza}"/></td>
       <td style="color:green"><b><fmt:formatDate value="${listado.fechae}" pattern='dd/MM/yyyy H:mm'/></b></td>     
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/LabPendiente.do"/>'>
       <td >     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Informe</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${listado.id_persona}"/>'> 
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listado.id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${listado.expedido}"/>'> 
  	 <input type="hidden" name='accion'       value='nuevo' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
      <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/PedirLaboratorio.do"/>'>
      <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();">Pedido</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${listado.id_persona}"/>'> 
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listado.id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${listado.expedido}"/>'> 
  	 <input type="hidden" name='accion'       value='adicion' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>   
     <form name=formaIm<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaIm<c:out value="${contador.count}"/>.submit();">Resultado</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listado.id_pedido}"/>'>
         <input type="hidden" name='fechaped'     value='<fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy'/>'> 
         <input type="hidden" name='id_persona'  value='<c:out value="${listado.id_persona}"/>'> 
         <input type="hidden" name='id_paciente'  value='<c:out value="${listado.id_paciente}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${listado.id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${listado.expedido}"/>'> 
  	 <input type="hidden" name='accion'       value='imprimir' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>

</table>


