<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3" bgcolor="#F2F2F2"><center>Administracion de Carpetas Familiares</center> </th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="formulario" width="100%">
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Numero de Carpeta</td>          
        <td style="font-size: 26pt; color: red"><c:out value = "${id_carpeta}"/></td>
      </tr> 
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
       <tr>
        <td align="right" bgcolor="#F2F2F2">Paterno::</td>
        <td><c:out value = "${datos.paterno}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Materno::</td>
        <td><c:out value = "${datos.materno}"/></td>            
      </tr>    
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres::</td>    
        <td><c:out value = "${datos.nombre}"/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n::</td>          
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  
  
   </table>
  </td>
  </tr>
   
</table>

 <form name=formacimp method=post action='<c:url value="/ListarPacientesD.do"/>'>
       <td>     
         <div><a class="btn btn-warning" href="javascript:document.formacimp.submit();"> Imprimir Carpeta</a></div>
         <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >    
         <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >                  
         <input type="hidden" name="accion" value='ImprimirCarpeta' >
         <input type="hidden" name="sw1" value='1' >
         <center><font size="5">DEPENDIENTES</font></center>
       </td>
  </form>
     

<table class="formulario">
  <tr>
    <td width="50%" valign="top">

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> HCL </th>
    <th> NOMBRE </th>
    <th> Fecha <br>Nacim.</th>                
    <th> PARENTESCO </th>                
    <th> Eliminar </th> 
    <th> Imprimir </th> 
    </tr>  
   <c:forEach var="lista" items="${listaPacientesD}" varStatus="contador">
       <tr style="font-size:9pt" >
       <td><c:out value="${lista.hcl}"/></td>  
       <form name=formaRd<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div class="aceptar"><a href="javascript:document.formaRd<c:out value="${contador.count}"/>.submit();"><c:out value="${lista.nombres}"/></a></div>
  	 <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
	 <input type="hidden" name="accion" value='Reservar' >
	 <input type="hidden" name="sw" value='1' >
         <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >   
         <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >         
       </td>
     </form>
       
     <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
     <td><c:out value="${lista.tipo}"/></td>       
     <form name=formaEd<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>

       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaEd<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >    
         <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >                  
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
     <form name=formaEimp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
       <td>     
         <div class="imprimir"><a class="btn btn-info btn-xs" href="javascript:document.formaEimp<c:out value="${contador.count}"/>.submit();"> Imprimir HCL</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >    
         <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >                  
         <input type="hidden" name="accion" value='Imprimir' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr>
   </c:forEach> 
</table>

  </td>

    <td width="50%" valign="top">
  
<form name=formaBN method=post action='<c:url value="/ListarPacientesD.do"/>'>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td>  
    <fieldset>
      <table align=center>
        <tr>
          <td align=right >Nombres Paciente</td>
          <td ><input class="form-control" type=text name=nombre onblur='validar(nombre,"A")'></td>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarN"></td>
        </tr>  
      </table>
    </fieldset>
    </td>

    </td>
  </tr>

  <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >  
  <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >          
</form>

<form name=formaBH method=post action='<c:url value="/ListarPacientesD.do"/>'>

  <tr>
    <td>  
    <fieldset>
      <table align=center>
        <tr>
          <td align=right >Historia Clinica</td>
          <td ><input class="form-control" type=text name=hcl onblur='validar(hcl,"9")'></td>
	  <td coslpan=3><input class="btn btn-primary" type="submit" name=boton value="BuscarH"></td>
        </tr>  
      </table>
    </fieldset>
    </td>

    </td>
  </tr>
</table>
  <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >  
  <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >    
</form>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr style="font-size:9pt">
    <th> HCL </th>
    <th> NOMBRE </th>
    <th> FECHA <br>NACIMIENTO </th>                    
    <th> PARENTESCO </th>                        
    <th> AGREGAR </th> 
   </tr>  
   <c:forEach var="lista" items="${listaPacientes}" varStatus="contador">
     <c:if test="${lista.id_carpeta == 0}">  
     <tr style="font-size:9pt">
     <td><c:out value="${lista.hcl}"/></td>  
     <td><c:out value="${lista.nombres}"/></td>         
     <td><fmt:formatDate value="${lista.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarPacientesD.do"/>'>
        <td>
          <SELECT NAME="parentesco" onchange="javascript:document.adicionarparentesco.submit();">
            <c:forEach var="paren" items="${listarParentescos}">
	      <option value="<c:out value="${paren.id_parentesco}"/>"><c:out value="${paren.parentesco}"/></option>
	    </c:forEach>
          </SELECT>	      
        </td>
        <td>     
         <div><a class="btn btn-success btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Agregar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >
         <input type="hidden" name="id_carpeta" value=<c:out value="${id_carpeta}"/> >    
         <input type="hidden" name="id_pacientej" value=<c:out value="${id_pacientej}"/> >         
         <input type="hidden" name="accion" value='Agregar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
      </tr>
     </c:if>
   </c:forEach>
</table>
    
      </td>
  </tr>

</table>




