<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="adicionarcolegio" method="POST" action='<c:url value="/SignosPaciente.do"/>' >
<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="3"><center>SIGNOS VITALES DEL PACIENTES</center></th>
  </tr>
  <tr>
       <td align="center" colspan="3"><input class="btn btn-info btn-xs" type="submit" name='accion' value='Repetir Ultima Talla'> </td>
  </tr> 
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr style="font-size:10pt">
       <td align="right">No. HCL - Nombre Completo</td>    
        <td><c:out value = "${datos.hcl}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <c:out value = "${datos.nombres}"/></td>
      <tr>
      <tr style="font-size:10pt">
        <td align="right">Fecha de Nacim. / Edad</td>    
        <td><c:out value="${fec_nacimiento}"/>&nbsp;&nbsp; - &nbsp;&nbsp; <font color="blue" size="4"> <c:out value="${datos.edad}"/> años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</font></td>	                 
      </tr>
      <tr style="font-size:10pt">
        <td align="right">Sexo - Direccion</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/>&nbsp;&nbsp; - &nbsp;&nbsp;<c:out value = "${datos.direccion}"/></td>
      </tr> 
      <tr style="font-size:10pt">
        <td align="right"> Talla (cm)  </td>
        <td><input type="text" name="talla" size="10" maxlength="10" value="<c:out value = "${datoshisto.talla}"/>"></td>
     </tr>  
     <tr style="font-size:10pt">
        <td align="right"> Peso (Kg) </td>
        <td><input type="text" name="peso" size="10" maxlength="10" value="<c:out value = "${datoshisto.peso}"/>"></td>
     </tr>  
     <tr style="font-size:10pt">
        <td align="right"> Temperatura  </td>
        <td><input type="text" name="temperatura" size="10" maxlength="10" value="<c:out value = "${datoshisto.temperatura}"/>"></td>
     </tr>  
     <tr style="font-size:10pt">
        <td align="right"> FC  </td>
        <td><input type="text" name="fc" size="10" maxlength="10" value="<c:out value = "${datoshisto.fc}"/>"></td>
     </tr>  
     <tr style="font-size:10pt">
        <td align="right"> PA  </td>
        <td><input type="text" name="pa" size="10" maxlength="10" value="<c:out value = "${datoshisto.pa}"/>"></td>
     </tr>  
     <tr style="font-size:10pt">
        <td align="right"> FR  </td>
        <td><input type="text" name="fr" size="10" maxlength="10" value="<c:out value = "${datoshisto.fr}"/>"></td>
     </tr>
      <tr style="font-size:10pt">
        <td align="right"> S O2 </td>
        <td><input type="text" name="so2" size="10" maxlength="10" value="<c:out value = "${datoshisto.fr}"/>"></td>
     </tr>
     <tr style="font-size:10pt">
        <td align="right"> Glicemia  </td>
        <td><input type="text" name="glicemia" size="10" maxlength="10" value="<c:out value = "${datoshisto.fr}"/>"></td>
     </tr>
     <td colspan="2">
        <center>
         <c:if test="${cod_esta != '700241' }">
            <!--  <input type="submit" name='accion' class="aceptar" value='Cambiar Consultorio'>  -->
         </c:if>   
              <input class="btn btn-primary" type="submit" name='accion' value='Terminar'>  
        </center>  
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
     </td>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</center>

</form>