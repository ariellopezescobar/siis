<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<form name="forma" method="POST" action='<c:url value="/BuscarPedidos.do"/>' >
 <CENTER>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th  bgcolor="#F2F2F2"><center>BUSQUEDA DE PEDIDOS FARMACIA</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive">      
             <tr style="font-size:12pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
               <td ><SELECT NAME="diai">
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
              
	      <tr style="font-size:12pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
               <td ><SELECT NAME="diaf">
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
              <tr style="font-size:11pt">
                 <td align=right ><b>Folio/Nombre</b></td>
                 <td colspan="1"><div class="form-inline"><input class="form-control" type=text name=nombres size="40" onblur='validar(nombre,"A9")'>
                 <center><b><input type=radio name="id_estado" value="T" checked >Egreso Gral.
                <input type=radio name="id_estado" value="I" >Ingresos Compras</b></center></div>
                 </td>
            </tr> 
            <tr>
                <td colspan="3"><center>
                    <input type="submit" name="boton" style="font-size:12pt" class="btn btn-success" value="Buscar">
                </center>
                </td>
             </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
  </table>
  </CENTER>
 </form>



 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> No </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <c:if test="${codesta=='200010'}">
         <th bgcolor="#F2F2F2"> Num.<br> Doc.</th>
    </c:if> 
    <c:if test="${codesta!='200010'}">
         <th bgcolor="#F2F2F2"> Num.<br> Fact.</th>
    </c:if>
    
    <th bgcolor="#F2F2F2"> Nombre Completo</th>
    <th bgcolor="#F2F2F2"> Estado </th> 
    <th bgcolor="#F2F2F2"> N.I.T.</th>
    <th bgcolor="#F2F2F2"> Orden </th> 
    <th bgcolor="#F2F2F2"> Monto</th>
    <th bgcolor="#F2F2F2"> Dpdo.<br> Por:</th>
    <th bgcolor="#F2F2F2"> Num.<br>Folio</th>
    <th bgcolor="#F2F2F2"> Modificar </th>    
  </tr>  
    <c:forEach var="lista" items="${listapago}" varStatus="contador">
       <tr style="font-size:9pt" >
       <form name=formaU<c:out value="${contador.count}"/> method=post action='<c:url value="/ReporteEntregados.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaU<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>'>
                 <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>'>
                 <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>'>
                 <input type="hidden" name="id_por"        value='<c:out value="${lista.id_dispensa}"/>'>
                 <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>'>
                 <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>'>
                 <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>'>
                 <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>'>
                 <input type="hidden" name="id_estado"     value='<c:out value="${lista.id_estado}"/>'>
                 <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>'>
                 <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy'/>'>
                 <input type="hidden" name="accion"        value='EliminarP'>
                 <input type="hidden" name="sw1"           value='1'>
              </td>
       </form>
       <td><fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yy HH:mm'/></td>      
       <td align="center"><c:out value="${lista.id_factura}"/></td>
       <td><c:out value="${lista.nombres}"/></td> 
       <c:if test="${lista.id_estado=='E' or lista.id_estado=='A' or lista.id_estado=='C'}"> 
            <td align="center"><c:out value="${lista.id_estado}"/></td> 
       </c:if>
       <c:if test="${lista.id_estado=='S'}"> 
            <td align="center" style="color:red">Ley475</td> 
       </c:if>
       <c:if test="${lista.id_estado=='P'}"> 
            <td align="center" style="color:blue">P</td> 
       </c:if>
       <c:if test="${lista.id_estado=='R'}"> 
            <td align="center" >R</td> 
       </c:if>
       <td><c:out value="${lista.nit}"/></td> 
       <td><c:out value="${lista.num_cladoc}"/></td> 
       <td><c:out value="${lista.precio_total}"/></td>  
       <td align="right"><c:out value="${lista.id_dispensa}"/></td>  
       <td align="center" style="color:red; font-size:13pt "><c:out value="${lista.suma1}"/></td>  
     <form name=formaMR<c:out value="${contador.count}"/> method=post action='<c:url value="/BuscarPedidos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning" href="javascript:document.formaMR<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         
         <input type="hidden" name="id_pedido"     value='<c:out value="${lista.id_pedido}"/>' >
         <input type="hidden" name="nombres"       value='<c:out value="${lista.nombres}"/>' >
         <input type="hidden" name="nit"           value='<c:out value="${lista.nit}"/>' >
         <input type="hidden" name="num_cladoc"    value='<c:out value="${lista.num_cladoc}"/>' >
         <input type="hidden" name="expedido"      value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="id_estado"     value='<c:out value="${lista.id_estado}"/>' >
         <input type="hidden" name="total"         value='<c:out value="${lista.precio_total}"/>' >
         <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
         <input type="hidden" name="id_tipo_far"   value='<c:out value="${lista.id_tipo_far}"/>' >
         <input type="hidden" name="id_factura"    value='<c:out value="${lista.id_factura}"/>' >
         <input type="hidden" name="tag"           value='<c:out value="${lista.cadena1}"/>' >
         <input type="hidden" name="fecha"         value='<fmt:formatDate value="${lista.fec_registro}" pattern='dd/MM/yyyy HH:mm'/>' >
         <input type="hidden" name="id_persona"    value='<c:out value="${lista.id_persona}"/>' >         
         <input type="hidden" name="boton"         value='mostrar' >
         <input type="hidden" name="sw1"           value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>

</table>

