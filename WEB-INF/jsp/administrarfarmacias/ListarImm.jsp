<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<table class="formulario" border="2" align="left">
  
    <tr>
     <td valign="top" width="40%">
      <div class="form-inline" align="center"> Buscar-Actualizar I.M.M.</div>

<!--<c:if test="${accion == 'Mostrar'}">
  <div style="font-size:15pt"> Listado de I.M.M.</div>
</c:if>
<c:if test="${accion == 'Adicionar'}">
  <div style="font-size:15pt"> Agregando I.M.M.</div>
  <br>
</c:if>
-->

<table > 
  <tr>
  <form name=formanuevo method=post action='<c:url value="/ListarImm.do"/>'>
    <td colspan="2">
      <div class="agregar">
       <a class="btn btn-primary" href="javascript:document.formanuevo.submit();" >Nuevo</a>
       <input type=hidden name=accion value='Adicionar'>
    </div></td>
    </form>
    <!--
    <form name=formanuevop method=post action='<c:url value="/ListarImm.do"/>'>
    <td colspan="2">
      <div class="nota">
       <a href="javascript:document.formanuevop.submit();" >Programas</a>
       <input type=hidden name=accion value='Programas'>
    </div></td>
    </form> -->
  </tr>
</table>


  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:8pt">
    <th> MES </th>
    <th> GESTION </th>    
    <th> MODIFICAR </th>
    <c:if test="${accion == 'Mostrar'}">
       <th> MOSTRAR </th> 
    </c:if>
    
    </tr>  
   <c:forEach var="lista" items="${listarImm}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:8pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <c:if test="${lista.mes == 1 }">   <td align="left"center">Enero</td>   </c:if>  
       <c:if test="${lista.mes == 2 }">   <td align="left">Febrero</td>   </c:if>  
       <c:if test="${lista.mes == 3 }">   <td align="left">Marzo</td>   </c:if>  
       <c:if test="${lista.mes == 4 }">   <td align="left">Abril</td>   </c:if>  
       <c:if test="${lista.mes == 5 }">   <td align="left">Mayo</td>   </c:if>  
       <c:if test="${lista.mes == 6 }">   <td align="left">Junio</td>   </c:if>  
       <c:if test="${lista.mes == 7 }">   <td align="left">Julio</td>   </c:if>  
       <c:if test="${lista.mes == 8 }">   <td align="left">Agosto</td>   </c:if>  
       <c:if test="${lista.mes == 9 }">   <td align="left">Septiembre</td>   </c:if>  
       <c:if test="${lista.mes == 10 }">   <td align="left">Octubre</td>   </c:if>  
       <c:if test="${lista.mes == 11 }">   <td align="left">Noviembre</td>   </c:if>  
       <c:if test="${lista.mes == 12 }">   <td align="left">Diciembre</td>   </c:if>  
        
       <td align="center"><c:out value="${lista.gestion}"/></td>    

     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarImm.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Actualizar</a></div>
         <input type="hidden" name="mes" value=<c:out value="${lista.mes}"/> >
         <input type="hidden" name="gestion" value=<c:out value="${lista.gestion}"/> >         
	 <input type="hidden" name="accion" value='Modificar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <c:if test="${accion == 'Mostrar'}">

     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarImm.do"/>'>
        <td>     
         <div class="imprimir"><a class="btn btn-success" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Ver Datos</a></div>
         <input type="hidden" name="mes" value=<c:out value="${lista.mes}"/> >
         <input type="hidden" name="gestion" value=<c:out value="${lista.gestion}"/> >         
         <input type="hidden" name="accion" value='Mostrar' >
         <input type="hidden" name="sw1" value='1' >
        </td>
     </form>
    </c:if>
    </tr>
   </c:forEach>
</table>



<td width="60%" valign="top">

<form name="forma" method="POST" action='<c:url value="/ListarImm.do"/>' >

  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
      <th><center>Generar I.M.M./Inventario-Prog./Inventario-Gral.</center></th>
    </tr>
    <tr>
      <td>
        <fieldset> 
            <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 	     
              <tr style="font-size:11pt"><td align="right"><b> Fecha Inicio</b></td>	
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
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              <tr style="font-size:11pt"><td align="right"><b> Fecha Final</b></td>	
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
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
	    </table>
        </fieldset>
      </td>
    </tr>
    <tr style="font-size:11pt">
      <td>
        <SELECT NAME="cod_esta" onchange="javascript:document.forma.submit();">
            <c:forEach var="estab" items="${listaEstab}">

                     <option value="<c:out value="${estab.cod_esta}"/>"<c:if test="${estab.cod_esta == cod_esta}">selected</c:if>> 
                     <c:out value="${estab.cod_esta}"/>_<c:out value="${estab.establecimiento}"/>
                     </option>

	    </c:forEach>
          </SELECT>	 
          <SELECT NAME="id_farmacia">
                <option value="0">-- TODOS --  
                <c:forEach var="listaf" items="${listarFarmacia}">                
                   <option value="<c:out value="${listaf.id_farmacia}"/>"<c:if test="${listaf.id_farmacia == id_farmacia}">selected</c:if>> 
                     <c:out value="${listaf.id_farmacia}"/>;<c:out value="${listaf.farmacia}"/>
                   </option>
                </c:forEach>
          </SELECT>	 
      </td>
    </tr>
  </table>

  <center>
    <input type="submit" style="font-size:11pt" class="btn btn-info" name="boton" value="GenerarIMM"> 
    <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="IMMaExcel"> 
  
          <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ListarAlmacen">
  
    <c:if test="${rol == '29' }">   
          <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ReporteCarmeloExcel">
    </c:if>
    <c:if test="${codesta != '200010'}"> 
       <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="BuscarProg">
    </c:if>
       <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="ConsumoMeses">
       <input type="submit" name="boton" style="font-size:11pt" class="btn btn-info" value="InventarioFisicoValorado">
  </center>
</form>








</td>
</tr>
</table>

