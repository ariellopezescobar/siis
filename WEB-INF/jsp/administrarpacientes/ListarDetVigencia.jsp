<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Listar Documentos Vigencia y Derechos</div>

<form name=formaBN method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr>
    <td>  
    <fieldset>
      <table width=50% border=0 align=center>
        <tr>
          <td align=right >Dato Documento</td>
          <td ><input class="form-control" type=text name=nombre size="30" onblur='validar(nombre,"A9")'></td>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarVig"></td>
        </tr> 
      </table>
     </fieldset>
    </td>
   </tr>
  </table>
 </form>
 
 
  <table>
      <tr>
      <form name=forma method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
          <td colspan="2">
              <div>
                  <a class="btn btn-success" href="javascript:document.forma.submit();" >ConfigurarImpresion</a>
                  <input type=hidden name=accion value='Configurar'>
          </div></td>
      </form> 
      <tr>
  </table>
 
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> MATRICULA</th>
    <th bgcolor="#F2F2F2"> CARNET</th>
    <th bgcolor="#F2F2F2"> HCL</th>
    <th bgcolor="#F2F2F2"> PACENTE </th>
    <th bgcolor="#F2F2F2"> EMPRESA </th>
    <th bgcolor="#F2F2F2"> PATRONAL </th>
    <th bgcolor="#F2F2F2"> DOCUMENTO </th>
    <th bgcolor="#F2F2F2"> FORM. </th>
    <th bgcolor="#F2F2F2"> MODIFICAR </th> 
    <!--<th> ELIMINAR </th>
    <th> IMPRIMIR </th> -->
    <th bgcolor="#F2F2F2"> IMPRESION </th>
    </tr>  
   <c:forEach var="lista" items="${listaVigencia}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha_ini}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.direccion}"/></td>
       <td style="font-size:11pt ;color:red" align="center"><b><c:out value="${lista.carnet}"/></b></td>
       <td><c:out value="${lista.hcl}"/></td>
       <td><c:out value="${lista.nombres}"/></td>
       <td><c:out value="${lista.factor_riesgo}"/></td>
       <td><c:out value="${lista.id_estado}"/></td>
       <td><c:out value="${lista.documento}"/></td>
       <c:if test="${lista.id_tipo_sexo== '1' }">
           <td style="color:blue">Form.04</td>   
       </c:if>
       <c:if test="${lista.id_tipo_sexo== '2' }">
           <td style="color:red">Form.03</td>   
       </c:if>
       <c:if test="${lista.id_tipo_sexo== '3' }">
           <td style="color:green">Form.06</td>   
       </c:if>
       <c:if test="${lista.id_tipo_sexo== '4' }">
           <td style="color:black">Form.026</td>   
       </c:if>
    <form name=formaEM<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEM<c:out value="${contador.count}"/>.submit();"> Modificar</a></div>
         <input type="hidden" name='id_vigencia'    value='<c:out value="${lista.id_vigencia}"/>'>
         <input type="hidden" name='tipo'           value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name='id_paciente'    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='tipovig'        value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name="accion"         value='ModificarVig' >
       </td>
     </form>
     <!--<form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name='id_vigencia'    value='<c:out value="${lista.id_vigencia}"/>'>
         <input type="hidden" name='tipo'           value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name='id_paciente'    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='tipovig'        value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name="accion1"         value='EliminarVig' >
       </td>
     </form>
     <form name=formaI<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <td>     
         <div class="imprimir"><a href="javascript:document.formaI<c:out value="${contador.count}"/>.submit();"> Imprimir</a></div>
         <input type="hidden" name='id_vigencia'    value='<c:out value="${lista.id_vigencia}"/>'>
         <input type="hidden" name='tipo'           value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name='id_paciente'    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='tipovig'        value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name="accion1"         value='ImprimirVig' >
       </td>
     </form>-->
     <form name=formaIp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <td>     
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaIp<c:out value="${contador.count}"/>.submit();"> Impresion</a></div>
         <input type="hidden" name='id_vigencia'    value='<c:out value="${lista.id_vigencia}"/>'>
         <input type="hidden" name='tipo'           value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name='id_paciente'    value='<c:out value="${lista.id_paciente}"/>'>
         <input type="hidden" name='tipovig'        value='<c:out value="${lista.id_tipo_sexo}"/>'>
         <input type="hidden" name="accion1"         value='ImpresionVig' >
       </td>
     </form>
    </td> 
   </c:forEach>
 </table>
