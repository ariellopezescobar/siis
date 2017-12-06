<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <td width="50%" valign="top"> 
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
       <th colspan="3" bgcolor="#F2F2F2"><center>ACCION A REALIZAR AL PACIENTE CUADERNO N6</center></th>
      </tr>  
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Sexo</td>
	<c:if test="${id_sexo==1}">      
           <td>FEMENINO</td>
        </c:if>
        <c:if test="${id_sexo==2}">      
           <td>MASCULINO</td>
        </c:if>
      </tr>    
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Edad</td>         
        <td><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</td>
      </tr>
      
</table>
<table class="tabla" border="1"><tr>
<td><form name=formaC6 method=post action='<c:url value="/Cuaderno6.do"/>'>
     <td colspan="2">
      <div><a class="btn btn-success btn-xs" href="javascript:document.formaC6.submit();">Retornar</a></div></td>
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
        <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
        <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
        <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
        <input type="hidden" name='accion'          value='Terminar'>
     </form></td></tr>
  </table>
  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr  style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nro </th>
    <th bgcolor="#F2F2F2"> Fecha </th>
    <th bgcolor="#F2F2F2"> TRATAMIENTO E</th>
    <th bgcolor="#F2F2F2"> ELIMINAR </th>
    </tr>  
   <c:forEach var="lista" items="${listaExter}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yy'/><br><font color="blue"><fmt:formatDate value="${lista.fechap}"  pattern='HH:mm'/></font></td> 
       <td>
       <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
           <c:if test="${lista.laboratorio != ''}">
           <tr style="font-size:8pt">    
              <td>Medico Tratante</td>   
              <td><c:out value="${lista.aspecto}"/></td>   
           </tr>
           <tr style="font-size:8pt">    
              <td>Tratamiento</td>   
              <td><c:out value="${lista.bacterias}"/></td>   
           </tr>
            </c:if>
            <!--
           <c:if test="${lista.resultado != ''}">
           <tr style="font-size:8pt">    
              <td>Diag. Egreso</td>   
              <td><c:out value="${lista.resultado}"/></td>   
           </tr>
            </c:if>
            -->
           <c:if test="${lista.suma1 == 1}">
           <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Menor de 1 años</td>   
           </tr>
           </c:if> 
           <c:if test="${lista.suma2 == 1}">
             <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Persona de 1 a 4 años</td>
             </tr>                 
           </c:if> 
           <c:if test="${lista.suma3 == 1}">
             <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Persona de 5 a 9 años</td>
             </tr>                 
           </c:if> 
           <c:if test="${lista.suma4 == 1}">
             <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Persona de 10 a 20 años</td> 
             </tr>             
           </c:if> 
           <c:if test="${lista.suma5 == 1}">
             <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Persona de 21 a 59 años</td> 
             </tr>             
           </c:if> 
           <c:if test="${lista.suma6 == 1}">
             <tr style="font-size:8pt">    
              <td>Edad</td>   
              <td>Persona de 60 años o mas</td>  
             </tr>
           </c:if> 
           <c:if test="${lista.inyectable != 0}">
            <tr style="font-size:8pt">    
              <td>Inyectable No.</td>    
              <td><c:out value="${lista.inyectable}"/>__<c:out value="${lista.suma42}"/>cc</td> 
             </tr>             
           </c:if> 
           <c:if test="${lista.sueros != 0}">
            <tr style="font-size:8pt">    
              <td>Suero No.</td>     
              <td><c:out value="${lista.sueros}"/></td> 
             </tr>                  
           </c:if> 
           <c:if test="${lista.suma20>0}">
            <tr style="font-size:8pt">    
              <td>Tipo Curacion</td>  
               <c:if test="${lista.suma20==1}">
                  <td>Pequeño</td> 
               </c:if>
               <c:if test="${lista.suma20==2}">
                  <td>Mediana</td> 
               </c:if>
               <c:if test="${lista.suma20==3}">
                  <td>Grande</td> 
               </c:if>
             </tr>                  
           </c:if>
           <c:if test="${lista.suma21>0}">
            <tr style="font-size:8pt">    
              <td>Biopsia</td>  
               <c:if test="${lista.suma21==1}">
                  <td>Exciocional</td> 
               </c:if>
               <c:if test="${lista.suma21==2}">
                  <td>Incicional</td> 
               </c:if>
             </tr>                  
           </c:if>
           <c:if test="${lista.suma22>0}">
            <tr style="font-size:8pt">    
              <td>Tipo Sonda</td>  
               <c:if test="${lista.suma22==1}">
                  <td>Nasogastrica</td> 
               </c:if>
               <c:if test="${lista.suma22==2}">
                  <td>Vesical</td> 
               </c:if>
               <c:if test="${lista.suma22==3}">
                  <td>Rectal</td> 
               </c:if>
             </tr>                  
           </c:if>
           <c:if test="${lista.suma26>0}">
            <tr style="font-size:8pt">    
              <td>Lipomas</td>  
               <c:if test="${lista.suma26==1}">
                  <td>Pequeño</td> 
               </c:if>
               <c:if test="${lista.suma26==2}">
                  <td>Mediana</td> 
               </c:if>
               <c:if test="${lista.suma26==3}">
                  <td>Grande</td> 
               </c:if>
             </tr>                  
           </c:if>
           <c:if test="${lista.suma23>0}">
            <tr style="font-size:8pt">    
                  <td>Actividades</td>  
                   <c:if test="${lista.suma23==1}">
                      <td>Nebilizacion</td> 
                   </c:if>
                   <c:if test="${lista.suma23==2}">
                      <td>Venoclisis</td> 
                   </c:if>
                   <c:if test="${lista.suma23==3}">
                      <td>Tricotomia</td> 
                   </c:if>
                   <c:if test="${lista.suma23==4}">
                      <td>Fototerapia</td> 
                   </c:if>
                   <c:if test="${lista.suma23==5}">
                      <td>Control Signos Vitales</td> 
                   </c:if>
                   <c:if test="${lista.suma23==6}">
                      <td>Exanguineo Transfucional</td> 
                   </c:if>
                   <c:if test="${lista.suma23==7}">
                      <td>Lavado Gastrico</td> 
                   </c:if>
                   <c:if test="${lista.suma23==8}">
                      <td>Trasfusiones</td> 
                   </c:if>
                   <c:if test="${lista.suma23==9}">
                      <td>Aseo Perinela</td> 
                   </c:if>
                   <c:if test="${lista.suma23==10}">
                      <td>Balance Hidrico</td> 
                   </c:if>
                   <c:if test="${lista.suma23==11}">
                      <td>Dialisis Peritonela</td> 
                   </c:if>
                   <c:if test="${lista.suma23==12}">
                      <td>Hemodialisis</td> 
                   </c:if>
                   <c:if test="${lista.suma23==13}">
                      <td>Desinfecion Terminal Incubadora</td> 
                   </c:if>
                   <c:if test="${lista.suma23==14}">
                      <td>Atencion Recien Nacido</td> 
                   </c:if>
                   <c:if test="${lista.suma23==15}">
                      <td>Atencion Neonato en Incubadora</td> 
                   </c:if>
                   <c:if test="${lista.suma23==16}">
                      <td>Atencion Neonato en Cuna</td> 
                   </c:if>
                   <c:if test="${lista.suma23==17}">
                      <td>Orientacion Lactancia Materna</td> 
                   </c:if>
                   <c:if test="${lista.suma23==18}">
                      <td>Obtencion de Muestras Lab</td> 
                   </c:if>
             </tr>                  
           </c:if>
            <c:if test="${lista.suma24>0}">
                <tr style="font-size:8pt">    
                  <td>Hidratacion</td>  
                   <c:if test="${lista.suma24==1}">
                      <td>Plan A</td> 
                   </c:if>
                   <c:if test="${lista.suma24==2}">
                      <td>Plan B</td> 
                   </c:if>
                   <c:if test="${lista.suma24==3}">
                      <td>Plan C</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma25>0}">
                <tr style="font-size:8pt">    
                  <td>Oxigencioan</td>  
                   <c:if test="${lista.suma25==1}">
                      <td>Face 1</td> 
                   </c:if>
                   <c:if test="${lista.suma25==2}">
                      <td>Face 2</td> 
                   </c:if>
                   <c:if test="${lista.suma25==3}">
                      <td>Facce 3</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma27>0}">
                <tr style="font-size:8pt">    
                  <td>Suturas</td>  
                   <c:if test="${lista.suma27==1}">
                      <td>Superficial</td> 
                   </c:if>
                   <c:if test="${lista.suma27==2}">
                      <td>Profundas</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma28>0}">
                <tr style="font-size:8pt">    
                  <td>Retiros</td>  
                   <c:if test="${lista.suma28==1}">
                      <td>Puntos</td> 
                   </c:if>
                   <c:if test="${lista.suma28==2}">
                      <td>Sondas</td> 
                   </c:if>
                   <c:if test="${lista.suma28==3}">
                      <td>Cuerpo Extraño</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma29>0}">
                <tr style="font-size:8pt">    
                  <td>Colocaciones</td>  
                   <c:if test="${lista.suma29==1}">
                      <td>Sonda Foley</td> 
                   </c:if>
                   <c:if test="${lista.suma29==2}">
                      <td>Sonda Nasogastrica</td> 
                   </c:if>
                   <c:if test="${lista.suma29==3}">
                      <td>Sonda Naseyeyunal</td> 
                   </c:if>
                   <c:if test="${lista.suma29==4}">
                      <td>Sonda Yeyunostomia</td> 
                   </c:if>
                   <c:if test="${lista.suma29==5}">
                      <td>Sonda Intrapleural</td> 
                   </c:if>
                   <c:if test="${lista.suma29==6}">
                      <td>Sonda Gastronomia</td> 
                   </c:if>
                   <c:if test="${lista.suma29==7}">
                      <td>Cateter Venoso Central</td> 
                   </c:if>
                   <c:if test="${lista.suma29==8}">
                      <td>Cateter Tenckhoff</td> 
                   </c:if>
                   <c:if test="${lista.suma29==9}">
                      <td>Cateter Por A Cath</td> 
                   </c:if>
                   <c:if test="${lista.suma29==10}">
                      <td>Cateter Permacath</td> 
                   </c:if>
                   <c:if test="${lista.suma29==11}">
                      <td>Venodiseccion</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma30>0}">
                <tr style="font-size:8pt">    
                  <td>Inyectables</td>  
                   <c:if test="${lista.suma30==1}">
                      <td>Intramuscular</td> 
                   </c:if>
                   <c:if test="${lista.suma30==2}">
                      <td>Endovenoso</td> 
                   </c:if>
                   <c:if test="${lista.suma30==3}">
                      <td>Subcutaneo</td> 
                   </c:if>
                   <c:if test="${lista.suma30==4}">
                      <td>Oral</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma31>0}">
                <tr style="font-size:8pt">    
                  <td>Sueros</td>  
                   <c:if test="${lista.suma31==1}">
                      <td>Fisiologico</td> 
                   </c:if>
                   <c:if test="${lista.suma31==2}">
                      <td>Glucosado</td> 
                   </c:if>
                   <c:if test="${lista.suma31==3}">
                      <td>Ringer Lactato</td> 
                   </c:if>
                   <c:if test="${lista.suma31==4}">
                      <td>Ringer Normal</td> 
                   </c:if>
                   <c:if test="${lista.suma31==5}">
                      <td>Solucion Manitol</td> 
                   </c:if>
                   <c:if test="${lista.suma31==6}">
                      <td>Solucion Acida</td> 
                   </c:if>
                   <c:if test="${lista.suma31==7}">
                      <td>Solucion Basica</td> 
                   </c:if>
                   <c:if test="${lista.suma31==8}">
                      <td>Solucion Multiamin</td> 
                   </c:if>
                   <c:if test="${lista.suma31==9}">
                      <td>Solucion Neo B</td> 
                   </c:if>
                   <c:if test="${lista.suma31==10}">
                      <td>Solucion para Hemodialisis</td> 
                   </c:if>
                   <c:if test="${lista.suma31==11}">
                      <td>Solucion dialisis Periton</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma32>0}">
                <tr style="font-size:8pt">    
                  <td>Cirugias</td>  
                   <c:if test="${lista.suma32==1}">
                      <td>Mayor</td> 
                   </c:if>
                   <c:if test="${lista.suma32==2}">
                      <td>Mediana</td> 
                   </c:if>
                   <c:if test="${lista.suma32==3}">
                      <td>Mayor</td> 
                   </c:if>
                   <c:if test="${lista.suma32==4}">
                      <td>Cuidado Preoperatorio</td> 
                   </c:if>
                   <c:if test="${lista.suma32==5}">
                      <td>Cuidado Postoperatorio</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma33>0}">
                <tr style="font-size:8pt">    
                  <td>Trabajos Quirofano</td>  
                   <c:if test="${lista.suma33==1}">
                      <td>Instrumentacion</td> 
                   </c:if>
                   <c:if test="${lista.suma33==2}">
                      <td>Preparacion de Instrumental</td> 
                   </c:if>
                   <c:if test="${lista.suma33==3}">
                      <td>Esterilizacion Material Quirusgico</td> 
                   </c:if>
                   <c:if test="${lista.suma33==4}">
                      <td>Preparacion de Ropa</td> 
                   </c:if>
                   <c:if test="${lista.suma32==5}">
                      <td>Preparacion Drenes Hilos Gasas</td> 
                   </c:if>
                   <c:if test="${lista.suma32==6}">
                      <td>Yesos</td> 
                   </c:if>
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma34>0}">
                <tr style="font-size:8pt">    
                  <td>Bloqueo</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma35>0}">
                <tr style="font-size:8pt">    
                  <td>Drenaje</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma36>0}">
                <tr style="font-size:8pt">    
                  <td>Oninitomia</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma37>0}">
                <tr style="font-size:8pt">    
                  <td>Taponamiento</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma38>0}">
                <tr>    
                  <td>Inmovilizacion</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma39>0}">
                <tr style="font-size:8pt">    
                  <td>Frenectomia</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.suma40>0}">
                <tr style="font-size:8pt">    
                  <td>Tendinorrafia</td>  
                  <td>SI</td>  
                 </tr>                  
           </c:if>
           <c:if test="${lista.curaciones != 0}">
             <tr style="font-size:8pt">    
              <td>Curacion</td>     
              <td><c:out value="${lista.curaciones}"/></td> 
             </tr>                
           </c:if> 
           <tr style="font-size:8pt">    
              <td>Situacion al Egreso</td>     
              <td><c:out value="${lista.tipo}"/></td>  
           </tr>
            <c:if test="${lista.tipo == 'M'}">
             <tr style="font-size:8pt">    
              <td>Causa Fallecimiento</td>     
             <c:if test="${lista.tipoconsulta == 0}">
               <td>Ninguno</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 1}">
               <td>de R.N. Menor de 7 dias</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 2}">
  	       <td>Por Diarrea en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 3}">
               <td>Por Neumonia en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 4}">
  	       <td>Por otras causas en < 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 5}">
               <td>Por otras causas en >= 5 años</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 6}">
               <td>Muerte Materna</td>
              </c:if>
              <c:if test="${lista.tipoconsulta == 7}">
               <td>Muerte Materna (P. falciparum)</td>
              </c:if>
             </tr>                
           </c:if> 
              
       </table>
       </td>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/Cuaderno6.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_cuaderno"     value='<c:out value="${lista.id_cuaderno}"/>' >
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name="nombres"         value="<c:out value="${nombres}"/>" >   
         <input type="hidden" name="fechaenf"        value='<c:out value="${fechaenf}"/>' >
         <input type="hidden" name="edad"            value="<c:out value="${edad}"/>" >         
         <input type="hidden" name="id_sexo"         value="<c:out value="${id_sexo}"/>" >                  
         <input type="hidden" name="sw"              value="<c:out value="${sw}"/>" >    
         <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
         <input type="hidden" name="accion" value='Eliminar' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

    </td>

    <td width="50%" valign="top">

<form name="adicionar" method="POST" action='<c:url value="/Cuaderno6.do"/>' >
<center>
 <input type="submit" name='accion' class="btn btn-info btn-sm" value='EmergenciaMedica'>
 <input type="submit" name='accion' class="btn btn-primary btn-sm" value='EmergenciaEnfermeria'> 
 <input type="hidden" name="tenfer"         value='<c:out value="${tenfer}"/>' >
</center> 

<table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
  <tr>
    <th colspan="5" bgcolor="#F2F2F2"><center>TRATAMIENTO A REALIZAR</center></th>
  </tr>
  
 <c:if test="${(tenfer == 'EmergenciaEnfermeria')}">  
 <!--    
 <tr>

   <td align="right" colspan=3> Diagnostico de Ingreso</td>
   <td colspan=2><input type="text" name="estado" value="" size="40" maxlength=100 placeholder="Coloque el Presunto Diagnostico Ingreso..."></td>
</tr>
<tr>
   <td align="right" colspan=3> Diagnostico de Egreso</td>
   <td colspan=2><input type="text" name="resultado" value="" size="40" maxlength=100 placeholder="Coloque el Presunto Diagnostico Egreso..."></td>
</tr>
-->
<tr style="font-size:10pt">
   <td align="right" colspan=3> Medico Tratante</td>
   <td colspan=2><input type="text" name="tratante" value="" size="40" maxlength=100 placeholder="Escriba nombre Medico Tratante..."></td>
</tr>
 <tr style="font-size:10pt">
   <td align="right" colspan=3> Accion / Medicamento</td>
   <td colspan=2><input type="text" name="accionmed" value="" size="40" maxlength=100 placeholder="Escriba el Medicamento o la Accion realizada..."></td>
</tr>
 <tr style="font-size:10pt">
   <td align="right" colspan=3> Forma Suministro Med.</td>
   <td colspan=2><SELECT NAME="tinyecta">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Intramuscular </option>
                  <option value="2" > Endovenoso </option>
                  <option value="3" > Subcutaneo </option>
                  <option value="4" > Oral </option>
                 </SELECT>
                 <SELECT NAME="tinyectable">
                  <option value="0" selected> 0 cc </option>
                  <option value="1" > 1 cc </option>
                  <option value="2" > 2 cc </option>
                  <option value="3" > 3 cc </option>
                  <option value="5" > 5 cc </option>
                  <option value="10"> 10cc </option>
                  <option value="20"> 20cc </option>
                 </SELECT> 
                 <font size="2">Nro.</font>
                 <SELECT NAME="inyectable">
                  <option value="0" selected> 0 </option>
                  <option value="1" > 1 </option>
                  <option value="2" > 2 </option>
                  <option value="3" > 3 </option>
                  <option value="4" > 4 </option>
                  <option value="5" > 5 </option>
                  <option value="6" > 6 </option>
                  <option value="7" > 7 </option>
                 </SELECT> 
            </td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=3>Nro. Curaciones y/o Suturas</td>
   <td colspan=2><SELECT NAME="tcuracion">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Pequeña </option>
                  <option value="2" > Mediana </option>
                  <option value="3" > Grande </option>
                  <option value="4" > Suturas </option>
   </SELECT><font size="2">Nro.</font><SELECT NAME="curaciones">
                  <option value="0" selected> 0 </option>
                  <option value="1" > 1 </option>
                  <option value="2" > 2 </option>
                  <option value="3" > 3 </option>
                  <option value="4" > 4 </option>
                  <option value="5" > 5 </option>
                  <option value="6" > 6y10 </option>
                  <option value="11" > 11y15 </option>
                  <option value="17" > 16y20 </option>
                  <option value="21" > 21y30 </option>
                  <option value="31" > 31y40 </option>
                  <option value="41" > 41y50 </option>
                  <option value="51" > 51y60 </option>
                  <option value="61" > 61y70 </option>
                  <option value="71" > 71y80 </option>
                  <option value="80" > > 80 </option>
                 </SELECT></td>
</tr>

 <tr  style="font-size:10pt">
   <td align="right" colspan=3>Sueros </td>
   <td colspan=2><SELECT NAME="tsuero">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Solucion Fisiolofigo </option>
                  <option value="2" > Solucion Glucosado </option>
                  <option value="3" > Solucion Ringer Lactato </option>
                  <option value="4" > Solucion Ringer Normal</option>
                  <option value="5" > Solucion Manitol</option>
                  <option value="6" > Solucion Acida</option>
                  <option value="7" > Solucion Basica</option>
                  <option value="8" > Solucion Multiamin</option>
                  <option value="9" > Solucion Neo B</option>
                  <option value="10" > Solucion para Hemodialisis</option>
                  <option value="11" > Solucion Dialisis Periton</option>
                 </SELECT><font size="2">Nro.</font>
                 <SELECT NAME="sueros">
                  <option value="0" selected> 0 </option>
                  <option value="1" > 1 </option>
                  <option value="2" > 2 </option>
                  <option value="3" > 3 </option>
                  <option value="4" > 4 </option>
                  <option value="5" > 5 </option>
                  <option value="6" > 6 </option>
                  <option value="7" > 7 </option>
                 </SELECT></td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=3> Actividades Generales</td>
   <td colspan=2><SELECT NAME="actividad">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Nebulizacion </option>
                  <option value="2" > Venoclisis </option>
                  <option value="3" > Tricotomia </option>
                  <option value="4" > Fototerapia </option>
                  <option value="5" > Control Signos Vitales </option>
                  <option value="13" > Desinfecion Terminal Incubadora </option>
                  <option value="14" > Atencion Recien Nacido </option>
                  <option value="15" > Atencion Neonato en Incubadora </option>
                  <option value="16" > Atencion Neonato en Cuna </option>
                  <option value="17" > Orientacion Lactancia Materna </option>
                  <option value="18" > Obtencion de Muestras Lab. </option>
                  <option value="6" > Exanguineo Transfusion </option>
                  <option value="7" > Lavado Gastrico </option>
                  <option value="8" > Transfusiones </option>
                  <option value="9" > Aseo perineal </option>
                  <option value="10" > Balance Hidrico </option>
                  <option value="11" > Dialisi Peritoneal </option>
                  <option value="12" > Hemodialisis </option>
                 </SELECT></td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=3> Cirugia</td>
   <td colspan=2><SELECT NAME="cirugia">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Cirugia Mayor </option>
                  <option value="2" > Cirugia Mediana  </option>
                  <option value="3" > Cirugia Menor </option>
                  <option value="4" > Cuidado Pre operatorio </option>
                  <option value="5" > Cuidado Post operatorio </option>
                 </SELECT></td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=3>Trab. Quirofano</td>
   <td colspan=2><SELECT NAME="trabquiro">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Instrumentacion </option>
                  <option value="2" > Preparacion de Instrumental </option>
                  <option value="3" > Esterilizacion Material Quirurgico </option>
                  <option value="4" > Preparacion Ropa Quirurgica </option>
                  <option value="5" > Preparacion Drenes Hilos Gasas </option>
                  <option value="6" > Yesos </option>
                 </SELECT></td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=3> Sonda</td>
   <td colspan=2><SELECT NAME="sonda">
                  <option value="0" selected>-- seleccione -- </option>
                  <option value="1" > Nasogastrica </option>
                  <option value="2" > Vesical  </option>
                  <option value="3" > Rectal </option>
                 </SELECT></td>
</tr>

<tr style="font-size:10pt">
       <td align="right" colspan=3>Hidratacion</td>
       <td colspan=2><SELECT NAME="hidrata">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Plan A </option>
                  <option value="2" > Plan B </option>
                  <option value="3" > Plan C </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Oxigenoterapia</td>
       <td colspan=2><SELECT NAME="oxigeno">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > 1ra Fase </option>
                  <option value="2" > 2da Fase </option>
                  <option value="3" > 3ra Fase </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Infecciones Intra Hospitalarias</td>
     <td colspan=2><input type=checkbox name="infeccion" value="1" ></td>
   </tr>
</c:if>  

<c:if test="${(tenfer == 'EmergenciaMedica')}">      
    <tr style="font-size:10pt">
       <td align="right" colspan=3>Tipo Curacion</td>
       <td colspan=2><SELECT NAME="tcuracion">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Pequeña </option>
                  <option value="2" > Mediana </option>
                  <option value="3" > Grande </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Biopsias</td>
       <td colspan=2><SELECT NAME="biopsia">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Exicional</option>
                  <option value="2" > Insicional </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Lipomas</td>
       <td colspan=2><SELECT NAME="lipomas">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Pequeña </option>
                  <option value="2" > Mediana </option>
                  <option value="3" > Grande </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Suturas</td>
       <td colspan=2><SELECT NAME="suturas">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Superficial </option>
                  <option value="2" > Profunda </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Retiro</td>
       <td colspan=2><SELECT NAME="retpunto">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Puntos </option>
                  <option value="2" > Sonda Foley </option>
                  <option value="2" > Cuerpo Extraño </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
       <td align="right" colspan=3>Colocaciones</td>
       <td colspan=2><SELECT NAME="colocaciones">
                  <option value="0" selected>-- seleccione --</option>
                  <option value="1" > Sonda Foley </option>
                  <option value="2" > Sonda Nasogastrica </option>
                  <option value="3" > Sonda Nasoyeyunal </option>
                  <option value="3" > Sonda Yeyunostomía </option>
                  <option value="3" > Sonda Intrapleural </option>
                  <option value="3" > Sonda de Gastrostomia </option>
                  <option value="1" > Cateter Venoso Central </option>
                  <option value="1" > Cateter Port A Cath </option>
                  <option value="1" > Cateter Tenckhoff </option>
                  <option value="1" > Cattere Permacath </option>
                  <option value="1" > Venodisección </option>
                 </SELECT></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Bloqueo Troncular Dedos</td>
     <td colspan=2><input type=checkbox name="bloqueo" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Drenaje Absceso</td>
     <td colspan=2><input type=checkbox name="drenaje" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Oninitomias</td>
     <td colspan=2><input type=checkbox name="oninitomia" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Taponamiento Epistasis</td>
     <td colspan=2><input type=checkbox name="taponamiento" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Inmovilizaciones sin Yeso</td>
     <td colspan=2><input type=checkbox name="inmovilizacion" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Frenectomias</td>
     <td colspan=2><input type=checkbox name="frenectomia" value="1" ></td>
   </tr>
   <tr style="font-size:10pt">
     <td align="right" colspan=3 >Tendinorrafia</td>
     <td colspan=2><input type=checkbox name="tendinorrafia" value="1" ></td>
   </tr>
   
   
</c:if>       


 <tr style="font-size:10pt">
   <td align="right" colspan=2> Referencias</td>
   <td colspan=2><input type="text" name="ref" value="" maxlength=50 ></td>
</tr>
<tr style="font-size:10pt">
   <td align="right" colspan=2> Contrareferencias</td>
   <td colspan=2><input type="text" name="cref" value="" maxlength=50 ></td>
</tr>

</table>

<center>
<input type="submit" name='accion' class="btn btn-primary btn-lg" value='Agregar'>  
<c:if test="${id_reservacion != null}">
  	       <input type="submit" name='accion' class="btn btn-danger btn-lg" value='Terminar'>  
</c:if>
</center>
  
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
    <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
    <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
    <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
    <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
    <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
    <input type="hidden" name="nombres"         value="<c:out value="${nombres}"/>" >         
    <input type="hidden" name="edad"            value="<c:out value="${edad}"/>" >         
    <input type="hidden" name="id_sexo"         value="<c:out value="${id_sexo}"/>" >         
    <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
    <input type="hidden" name="swinter"         value='<c:out value="${swinter}"/>' >
    <input type="hidden" name="swenfer"         value='<c:out value="${swenfer}"/>' >
    <input type="hidden" name="accionE"         value='<c:out value="${accionE}"/>' >
    <input type="hidden" name="tenfer"         value='<c:out value="${tenfer}"/>' >
    <input type="hidden" name="fechaenf"      value='<c:out value="${fechaenf}"/>' >
    <input type="hidden" name="sw"              value="<c:out value="${sw}"/>" >                  
</form>
  </td>
  </tr>
   
</table>
