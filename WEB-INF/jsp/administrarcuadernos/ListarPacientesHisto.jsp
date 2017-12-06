<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"><center>  Ver Historiales Clinicos Pasados</center> </div>

<table class="table table-striped table-bordered table-condensed table-responsive">
<tr>
  <td width="33%" valign="top">
<center>    
<form name=formaBN method=post action='<c:url value="/ListarPacientes.do"/>'>
<table class="table table-striped table-bordered table-condensed table-responsive">
  <tr>
    <td>  
    <fieldset>
      <legend align=center>Nombre del Paciente/ Matricula / CI / HCL</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Nombres
          <td class=colh>::
          <td class=colb><input type=text name=nombre size="30" maxlength="30" onblur='validar(nombre,"A")' placeholder="Nombres / Matricula / CI / HCl ..."/>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton2 value="BuscarN"></td>
          <input type="hidden" name="hcl"         value='0' >
        </tr> 
        <tr >
            <td colspan="4">
            <table>  
               <tr>
                <td><input type=radio  name="id_estado" value="%" checked >   </td>
                <td class="etiqueta">TODOS </td>
                <td class="etiqueta">::</td>
                <td><input type=radio  name="id_estado" value="S" >   </td>
                <td class="etiqueta">SIIS </td>
                <td class="etiqueta">::</td>
                <td><input type=radio name="id_estado" value="P" >   </td>
                <td class="etiqueta">Seguros </td>
                <td class="etiqueta">::</td>
               </tr>
            </table>
            </td>
        </tr>
      </table>
    </fieldset>
    </td>

    </td>
  </tr>
</table>
</form>
</center>
</td>

<td width="33%" valign="top">
<center>
<form name=formaBH method=post action='<c:url value="/ListarPacientes.do"/>'>
<table valign=top border="0" cellspacing="0">
  <tr>
    <td>  
    <fieldset>
      <legend align=center>Por Diagnostico / CIE10 / Literal</legend>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right class=colh>Diagnostico
          <td class=colh>::
          <td class=colb><input type=text name=hcl placeholder="CIE10 / Literal ..." />
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton2 value="BuscarCie10"></td>
           <input type="hidden" name="nombre"         value='0' >
           <input type="hidden" name="id_estado"         value='0' >
        </tr>  
      </table>
    </fieldset>
    </td>
    </td>
  </tr>
</table>
</form>
</center>
</td>

 <tr> 
</table>  



  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
          <th bgcolor="#F2F2F2"> No. </th>
          <th bgcolor="#F2F2F2"> HCL </th>
          <th bgcolor="#F2F2F2"> NOMBRE </th>
          <th bgcolor="#F2F2F2"> Fecha<br>Nacimien.</th>
          <th bgcolor="#F2F2F2"> Sexo </th>
          <th bgcolor="#F2F2F2"> C.I. </th>  
          <c:if test="${estab == '200010' }">
               <th bgcolor="#F2F2F2"> Cod</th>  
               <th bgcolor="#F2F2F2"> Matricula</th>
          </c:if>
          <th bgcolor="#F2F2F2"> Seguro </th>  
          <th bgcolor="#F2F2F2"> CARPETA<BR>FAMILIAR </th>     
          <th bgcolor="#F2F2F2"> HISTORIAL </th>
      </tr>  
      <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
          <tr style="font-size:9pt">
           <td><c:out value="${contador.count}"/></td> 
           <td><c:out value="${lista.hcl}"/></td> 
           <td><c:out value="${lista.nombres}"/>-.-<c:out value="${lista.veces}"/></td> 

          <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
              <c:if test="${lista.id_tipo_sexo == '2' }">
                  <td align="center" style="font-size:10pt">M</td>
              </c:if>
              <c:if test="${lista.id_tipo_sexo == '1' }">
                  <td align="center" style="font-size:10pt">F</td>
              </c:if>
              <td style="font-size:9pt"><c:out value="${lista.carnet}"/></td>   
              <c:if test="${estab == '200010' }">
                  <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>   
                  <td style="font-size:9pt"><c:out value="${lista.nro_registro}"/></td>  
              </c:if>
              
              <c:if test="${lista.id_estado == 'A' }">
                  <td style="color:blue" align="center">Externo</td>
              </c:if>
              <c:if test="${lista.id_estado == 'S' }">
                  <td style="color:red" align="center">Ley 475</td>
              </c:if>
              <c:if test="${lista.id_estado == 'P' }">
                 <td align="center"><c:out value="${listaInt.seguro}"/></td>
              </c:if>

           <c:if test="${lista.id_carpeta == 0 }">
             <td align="right"><c:out value="${lista.id_carpeta}"/></td> 
          </c:if>      
          <c:if test="${lista.id_carpeta != 0 }">
          <td align="right"><c:out value="${lista.id_carpeta}"/></td>        
          </c:if>  
          
          <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarHistorial.do"/>'>
              <td>     
                  <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">VerHistorial</a></div>
                  <input type="hidden" name="id_paciente"   value='<c:out value="${lista.id_paciente}"/>' >
                  <input type="hidden" name="nombres"        value=<c:out value="${lista.nombres}"/> >
                  <input type="hidden" name="accion"         value='Historial' >
                  <input type="hidden" name="sw"             value='1' >
              </td>
          </form>

      </c:forEach>  
   </table>
