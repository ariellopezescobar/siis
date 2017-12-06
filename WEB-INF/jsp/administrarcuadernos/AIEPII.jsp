<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<table class="formulario">

  <c:if test="${((datos.mes+datos.edad*12) < '2')}"> 
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th colspan="6"><center>ATENCION AL NIÑO/A DE 7 DIAS A MENOR DE 2 MESES DE EDAD</center></th>
      </tr>  
     <tr style="font-size:11pt">
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr style="font-size:11pt">    
        <td  align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr style="font-size:11pt">
        <td  align="right" bgcolor="#F2F2F2">Sexo</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr style="font-size:11pt">
        <td  align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>.............<font style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></font></td>
      </tr>
      <tr style="font-size:11pt">    
        <td  align="right" bgcolor="#F2F2F2">Talla</td>    	      
        <td><b><font style="color:blue" size="3"><c:out value = "${talla}"/></font>[cm]..Peso::<font style="color:blue" size="3"><c:out value = "${peso}"/></font>[Kg]..Meses::<font style="color:blue"><c:out value = "${datos.mes+datos.edad*12}"/></font></font>..Sem.::<font style="color:blue"><c:out value = "${semanas}"/></font></b></td>
      </tr>
  </table>
      
  <form name="aiepi11" method="POST" action='<c:url value="/Aiepi.do"/>' >
  <table class="formulario" width="90%" border="2">
      <tr>    
        <td class="etiqueta">¿Motivo de visita del niño?::</td>    
        <td colspan="3"><input type="mvisita" name="m1" size=100 maxlength=100 value="<c:out value = "${aiepi.tipodent}"/>" /></td>
      </tr>
     <tr>
         <th width="30%">PREGUNTAR</th>  
         <th width="30%">VERIFICAR</th>
         <th width="20%">Clasificar</th>
         <th width="20%">Tratar</th>
     </tr>
     <tr>
         <td colspan="4"><b>DETERMINAR SI SE TRATA DE UNA INFECCION BACTERIANA</b></td>      
     </tr>
     <tr>
         <td style="font-size:11pt"><li>¿El niño/a tuvo convulsiones?<br>¿o ataques?</li><li>¿Puede mamar o alimentarse?</li>
              <li>¿Vomita todo lo que mama?</li><li>¿Tiene friebre y se pone frio/a?</li><br><br><br><br><br><br><br><br><br><br><br><br><b>Respiracion rapida es<br>Menor de 2 meses:60 o mas <br>por minuto<br>Respiracion lenta es <br>Menor de 2 meses: 30 o mas<br>por minuto</b></td>  
         <td  style="font-size:11pt">
              <c:if test="${r11 == 'S'}">  <input type="checkbox" name="n1" value="1" checked/> ¿Esta letargico inconciente hipoactivo?<br>  </c:if>
                <c:if test="${r11 != 'S'}">  <input type="checkbox" name="n1" value="1" /> ¿Esta letargico inconciente hipoactivo?<br>  </c:if>
              <c:if test="${r12 == 'S'}">  <input type="checkbox" name="n2" value="2" checked/>¿Tiene dificultad para respirar?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Contar las respiraciones en un minuto<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.....resp/min.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Repetir si el recuento es alto o bajo<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Hay tiraje subcostal severo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene aleteo nasal?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Tiene quejido espiratorio<br>  </c:if>
                <c:if test="${r12 != 'S'}">  <input type="checkbox" name="n2" value="2" />¿Tiene dificultad para respirar?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Contar las respiraciones en un minuto<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...resp/min.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Repetir si el recuento es alto o bajo<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Hay tiraje subcostal severo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene aleteo nasal?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Tiene quejido espiratorio<br>  </c:if>
              <c:if test="${r13 == 'S'}">  <input type="checkbox" name="n3" value="3" checked/>¿Examinar y palpar la fontanela ?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Esta abombada?<br>  </c:if>
                <c:if test="${r13 != 'S'}">  <input type="checkbox" name="n3" value="3" />¿Examinar y palpar la fontanela ?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Esta abombada?<br>  </c:if>
              <c:if test="${r14 == 'S'}">  <input type="checkbox" name="n4" value="4" checked/>¿Examina el onbligo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta enrojesido y presenta supuracion<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta enrojesido se extiende a la piel<br>  </c:if>
                <c:if test="${r14 != 'S'}">  <input type="checkbox" name="n4" value="4" />¿Examina el onbligo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta enrojesido y presenta supuracion<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta enrojesido se extiende a la piel<br>  </c:if>
              <c:if test="${r15 == 'S'}">  <input type="checkbox" name="n5" value="5" checked/>Tiene fiebre o esta muy frio/a (tomar la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temperatura axilar o tocarlo para saber si <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;esta muy caliente o muy frio)<br>  </c:if>
                <c:if test="${r15 != 'S'}">  <input type="checkbox" name="n5" value="5" />Tiene fiebre o esta muy frio/a (tomar la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temperatura axilar o tocarlo para saber si <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;esta muy caliente o muy frio)<br>  </c:if>
              <c:if test="${r16 == 'S'}">  <input type="checkbox" name="n6" value="6" checked/>Observar la piel para saber si tiene pustulas<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Son muchas o extensas?<br>  </c:if>
                <c:if test="${r16 != 'S'}">  <input type="checkbox" name="n6" value="6" />Observar la piel para saber si tiene pustulas<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Son muchas o extensas?<br>  </c:if>
              <c:if test="${r17 == 'S'}">  <input type="checkbox" name="n7" value="7" checked/>¿Tiene secresion ocular con o sin <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hinchazon de parpados?<br>  </c:if>
                <c:if test="${r17 != 'S'}">  <input type="checkbox" name="n7" value="7" />¿Tiene secresion ocular con o sin <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hinchazon de parpados?<br>  </c:if>
              <c:if test="${r18 == 'S'}">  <input type="checkbox" name="n8" value="8" checked/>Determinar el color de la piel<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene cianosis y palidez?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene ictericia generalizada?  </c:if>
                <c:if test="${r18 != 'S'}">  <input type="checkbox" name="n8" value="8" />Determinar el color de la piel<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene cianosis y palidez?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Tiene ictericia generalizada?  </c:if>
          </td>   
         <td class="etiqueta">
             <textarea name="t1" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.tipoconsulta}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="t2" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.resultado}"/></textarea></td>       
      </tr>
     <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='.....Grabar1.....'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>
   <form name="aiepi12" method="POST" action='<c:url value="/Aiepi.do"/>' >   
      <tr>
          <c:if test="${aiepi.alcohol == '0'}">
              <td colspan="4"><b>EL NIÑO MENOR DE 2 MESES TIENE DIARREA.......................SI  ( <input type=radio name="radio" value="1" > )  NO  ( <input type=radio name="radio" value="0" checked> )</b></td>      
          </c:if>
          <c:if test="${aiepi.alcohol != '0'}">
              <td colspan="4"><b>EL NIÑO MENOR DE 2 MESES TIENE DIARREA.......................SI  ( <input type=radio name="radio" value="1" checked> )  NO  ( <input type=radio name="radio" value="0" > )</b></td>      
          </c:if>    
      </tr>
      <tr>
          <c:if test="${aiepi.aborto == '0'}">
          <td style="font-size:11pt"><ul><li>¿Hace cuanto tiempo?<input type="text" name="dias" size=3 maxlength=3 value="0"  onblur='validar(peso1,"9")'/> dias</li><li>¿Hay sangre en las heces?<br></li><li>¿Cuantas veces a tenido diarrea <br> en las ultimas 24 horas?</li></ul>
              <br><br><br><br></td>  
          </c:if>
          <c:if test="${aiepi.aborto > '0'}">
          <td style="font-size:11pt"><ul><li>¿Hace cuanto tiempo?<input type="text" name="dias" size=3 maxlength=3 value="<c:out value = "${aiepi.aborto}"/>"  onblur='validar(peso1,"9")'/> dias</li><li>¿Hay sangre en las heces?<br></li><li>¿Cuantas veces a tenido diarrea <br> en las ultimas 24 horas?</li></ul>
              <br><br><br><br></td>  
          </c:if>
          <td  style="font-size:11pt">
              <c:if test="${r21 == 'S'}">  <input type="checkbox" name="n1" value="1" checked/> Determinar es estado general del niño<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Esta letargico o inconsiente?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Inquieto o irritable?<br>  </c:if>
                <c:if test="${r21 != 'S'}">  <input type="checkbox" name="n1" value="1" /> Determinar es estado general del niño<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Esta letargico o inconsiente?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-¿Inquieto o irritable?<br>  </c:if>
              <c:if test="${r22 == 'S'}">  <input type="checkbox" name="n2" value="2" checked/>¿Tiene los ojos hundidos?<br>  </c:if>
                <c:if test="${r22 != 'S'}">  <input type="checkbox" name="n2" value="2" />¿Tiene los ojos hundidos?<br>  </c:if>
              <c:if test="${r23 == 'S'}">  <input type="checkbox" name="n3" value="3" checked/>¿Tiene signo del pliegue cutaneo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;La piel vuelve al pliegue anterior<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Muy lentamente (mas de 2 segundos)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Lentamente (2 segundos o menos)<br>  </c:if>
                <c:if test="${r23 != 'S'}">  <input type="checkbox" name="n3" value="3" />¿Tiene signo del pliegue cutaneo?<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;La piel vuelve al pliegue anterior<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Muy lentamente (mas de 2 segundos)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Lentamente (2 segundos o menos)<br>  </c:if>
          </td>
          <td class="etiqueta">
             <textarea name="t3" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.accion}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="t4" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.bacterias}"/></textarea></td>           
      </tr> 
     
      <tr>
         <td colspan="4"><b>EVALUAR SI HAY PROBLEMAS DE ALIMENTACION O BAJO PESO</b></td>      
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Recibe seno materno? SI ( ) NO ( ) <br> Si la respuesta es afirmativa :</li>-¿Cuantas veces en 24 horas?<br>-¿Tiene alguna dificultad para mamar?
             <li>¿Recibe otros alimentos, leche de vaca u otros liquidos? SI ( ) NO ( )</li>Si la respuesta es afirmativa <br>-¿Con que frecuencia?
             <br>-¿Que alimentos o liquidos le da?<br>-¿Con que le da los otros alimentos o liquidos?<br>-¿Recibe biberon (mamadera)?</ul></td>  
          
          <td  style="font-size:11pt">
              <c:if test="${r24 == 'S'}">  <input type="checkbox" name="n4" value="4" checked/> ¿Tiene emaciacion visible?<br>  </c:if>
                <c:if test="${r24 != 'S'}">  <input type="checkbox" name="n4" value="4" /> ¿Tiene emaciacion bisible?<br>  </c:if>
              <c:if test="${r25 == 'S'}">  <input type="checkbox" name="n5" value="5" checked/>El Peso / Edad en la curva, segun el <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sexo del niño/a esta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Por debajo de -3, segun el sexo<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Entre -2 y -3 segun el sexo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Por encima de -2 segun el sexo  <br></c:if>
                <c:if test="${r25 != 'S'}">  <input type="checkbox" name="n5" value="5" />El Peso / Edad en la curva, segun el <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sexo del niño/a esta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Por debajo de -3, segun el sexo<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Entre -2 y -3 segun el sexo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Por encima de -2 segun el sexo  <br></c:if>
              <c:if test="${r26 == 'S'}">  <input type="checkbox" name="n6" value="6" checked/>¿Tiene lesciones de moniliasis en la boca <br>  </c:if>
                <c:if test="${r26 != 'S'}">  <input type="checkbox" name="n6" value="6" />¿Tiene lesciones de moniliasis en la boca <br>  </c:if>
              <c:if test="${r27 == 'S'}">  <input type="checkbox" name="n7" value="7" checked/>Evaluar el amamantamiento (Posicion y agarre) <br>  </c:if>
                <c:if test="${r27 != 'S'}">  <input type="checkbox" name="n7" value="7" />Evaluar el amamantamiento (Posicion y agarre) <br>  </c:if>
          </td>
          
          <td class="etiqueta">
             <textarea name="t5" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.anti}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="t6" rows="10" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.cetonas}"/></textarea></td>           
      </tr> 
      <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='.....Grabar2.....'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>     
        <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
        <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
      </form>
     <form name="aiepi12" method="POST" action='<c:url value="/Aiepi.do"/>' >   
     <tr>
         <th width="30%" colspan="4">EVALUAR      EL      AMAMANTAMIENTO</th>  
      </tr>
      <tr>
         <th width="30%">ASPECTOS A EVALUAR</th>  
         <th width="30%">Practica Ideal</th>
         <th width="20%">Pactica real</th>
         <th width="20%">Conducta</th>
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>la posicion de mamar es correcta</li><br><br><br></ul></td>  
         <td style="font-size:11pt"><ul><li>La cabeza y el cuerpo del niño deben estar rectos</li><li>La nariz del niño debe estar frente al pezon</li> 
             <li>El cuerpo del niño debe estar pegado al de la madre</li><li>La madre debe sostener todo el cuerpo del niño</li>BUENA POSICION - MALA POSICION</ul></td>
         <td class="etiqueta">
             <textarea name="subjetivo" rows="4" cols="40" style="width:200px" maxlength="150"></textarea></td>   
         <td class="etiqueta">
             <textarea name="subjetivo" rows="4" cols="40" style="width:200px" maxlength="150"></textarea></td>       
      </tr>  
       <tr>
         <td style="font-size:11pt"><ul><li>¿El agarre es adecuado?</li><br><br><br></ul></td>  
         <td style="font-size:11pt"><ul><li>Toca la mama o pecho con el mentos</li><li>tiene la boca bien abierta</li> 
             <li>Tiene el labio inferior volteado hacia afuera</li><li>Se ve mas areola por encima de la boca que por debajo</li>BUEN AGARRE - MAL AGARRE</ul></td>
         <td class="etiqueta">
             <textarea name="subjetivo" rows="4" cols="40" style="width:200px" maxlength="150"></textarea></td>   
         <td class="etiqueta">
             <textarea name="subjetivo" rows="4" cols="40" style="width:200px" maxlength="150"></textarea></td>       
      </tr>  
       <tr>
         <td style="font-size:11pt"><ul><li>¿Succiona bien?</li><br><br><br></ul></td>  
         <td style="font-size:11pt">Succiona en forma lenta, profunda y con pausas ocacionales<br>La mama siente que el niño traga la leche<br>BUENA SUCCION - MALA SUCCION</td>
         <td class="etiqueta">
             <textarea name="subjetivo" rows="2" cols="40" style="width:200px" maxlength="150"></textarea></td>   
         <td class="etiqueta">
             <textarea name="subjetivo" rows="2" cols="40" style="width:200px" maxlength="150"></textarea></td>       
      </tr>  
       <tr>
         <td style="font-size:11pt"><ul><li>Tiene algun problema para darle de latar</li><br>-¿Cual es el problema?</ul></td>  
         <td style="font-size:11pt">La mama debe comunicar al personal de salud cualquier problema con la lactancia (pesones adoloridos, llanto bebe, etc.)</td>
         <td class="etiqueta">
             <textarea name="subjetivo" rows="2" cols="40" style="width:200px" maxlength="150"></textarea></td>   
         <td class="etiqueta">
             <textarea name="subjetivo" rows="2" cols="40" style="width:200px" maxlength="150"></textarea></td>       
      </tr>  
      <tr>
         <td style="font-size:13pt" colspan="2">VERIFICAR LOS ANTECEDENTES DE VACUNAS DEL NIÑO<ul><li>Ha recibido vacuna BCG? (vacuna antituberculosa)</li></ul></td>  
         <td align="center" style="font-size:11pt">Vacunas completas para la edad<br><br>No<input type=radio name="lista1" value="S">Si<input type=radio name="lista1" value="N" checked></td>      
         <td style="font-size:11pt">Volver para la siguiente vacuna<br><br><input type="text" name="dia_r" value="<c:out value="${dia_r}"/>" maxlength=2 size=2 onblur=validarNota(dia_r,1,31)>-
            <input type="text" name="mes_r" value="<c:out value="${mes_r}"/>" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>-
            <input type="text" name="anio_r" value="<c:out value="${anio_r}"/>" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />dd-mm-aaaa
         </td>       
      </tr>  
      <tr>
         <td style="font-size:13pt" colspan="2">EVALUAR DESARROLLO DEL NIÑO<br>(Emplear el carnet de salud infantil)</td>  
         <td align="center" style="font-size:11pt">Cumple con todos los hitosm de desarrollo<br><br>No<input type=radio name="lista2" value="S">Si<input type=radio name="lista2" value="N" checked></td>   
         <td class="etiqueta">
             <textarea name="subjetivo" rows="2" cols="40" style="width:200px" maxlength="150"></textarea></td>       
      </tr>
      <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='.....Grabar3.....'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>     
        <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
        <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
        <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
    </form>
  </c:if> 
      
      
      
      
      
      
      
      
  <c:if test="${((datos.mes+datos.edad*12) >= '2')}"> 
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <th colspan="6"><center>ATENCION AL NIÑO/A DE 2 MESES A MENOR DE 5 AÑOS DE EDAD</center></th>
      </tr>  
    <tr style="font-size:11pt">
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr style="font-size:11pt">    
        <td  align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr style="font-size:11pt">
        <td  align="right" bgcolor="#F2F2F2">Sexo</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr style="font-size:11pt">
        <td  align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>.............<font style="color:blue"><b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></font></td>
      </tr>
      <tr style="font-size:11pt">    
        <td  align="right" bgcolor="#F2F2F2">Talla</td>    	      
        <td><b><font style="color:blue" size="3"><c:out value = "${talla}"/></font>[cm]..Peso::<font style="color:blue" size="3"><c:out value = "${peso}"/></font>[Kg]..Meses::<font style="color:blue"><c:out value = "${datos.mes+datos.edad*12}"/></font></font>..Sem.::<font style="color:blue"><c:out value = "${semanas}"/></font></b></td>
      </tr>
  </table>
  <table class="formulario" width="90%" border="2">
   <form name="aiepi21" method="POST" action='<c:url value="/Aiepi.do"/>' >   
      <tr>    
        <td class="etiqueta">¿Motivo de visita del niño?::</td>    
        <td colspan="3"><input type="mvisita" name="m1" size=100 maxlength=100 value="<c:out value = "${aiepi.tipodent}"/>" /></td>
      </tr>
     <tr>
         <th width="30%">PREGUNTAR</th>  
         <th width="30%">VERIFICAR</th>
         <th width="20%">Clasificar</th>
         <th width="20%">Tratar</th>
     </tr>
  
     <tr>
         <td colspan="4"><b>VERIFICAR SI PRESENTA SIGNOS DE PELIGRO EN GENERAL</b></td>      
     </tr>
     <tr>
         <td style="font-size:9pt"><b>PREGUNTAR</b><br><ul><li>El niño/a ¿puede lactar o alimentarse?</li><li>¿Vomita todo lo que ingiere?</li><li>¿Ha tenido convulsiones o ataques?</li></ul></td> 
         <c:if test="${aiepi.bajopeso == '0'}">  
             <td><b>VERIFICAR</b><br><ul><input type="checkbox" name="c1" value="1" />¿Esta letargico o inconsiente?</ul></td>  
         </c:if>
         <c:if test="${aiepi.bajopeso != '0'}">  
             <td><b>VERIFICAR</b><br><ul><input type="checkbox" name="c1" value="1" checked/>¿Esta letargico o inconsiente?</ul></td>  
         </c:if>     
         <c:if test="${aiepi.bcg == '0'}">  
             <td align="center">Tiene algun signo de peligro en general<br><br>SI (<input type=radio name="r1" value="1">) NO (<input type=radio name="r1" value="0" checked>)</td>   
         </c:if>
         <c:if test="${aiepi.bcg != '0'}">  
             <td align="center">Tiene algun signo de peligro en general<br><br>SI (<input type=radio name="r1" value="1" checked>) NO (<input type=radio name="r1" value="0">)</td>   
         </c:if>
         
         <td class="etiqueta">
             <textarea name="u1" rows="3" cols="40" style="width:200px" maxlength="200"><c:out value = "${aiepi.bilirrubina}"/></textarea></td>   
     </tr>
      <tr>
         <td colspan="4"><b>CLASIFICAR EL ESTADO NUTRICIONAL DEL NIÑO/A</b></td>      
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>Tiene emanacion visible</li><li>Tiene edema en AMBOS pies</li><li>Tiene palidez palmar intensa</li></ul>
         <td style="font-size:9pt">
             <c:if test="${aiepi.dglobal == 'G'}">
                 <input type=radio name="r2" value="1" checked>Peso/Talla, el punto cae POR DEBAJO de la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curva NEGRA (-3) segun el sexo del niño o niña<br>
                 <input type=radio name="r2" value="2" disabled>Peso/Talla, el punto cae POR DEBAJO de la CURVA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2 HASTA LA -3 (INCLUYE SI EL UNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA -3), Segun sexo del niño/a<br>
                 <input type=radio name="r2" value="3" disabled>Peso/Talla, el punto cae EN LA CURVA 2 O POR<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEBAJO HASTA LA CURVA -2 (INCLUYE SI <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EL PUNTO CAE EN LA CURVA -2), segun del <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sexo del niño/a<br>
                 <input type=radio name="r2" value="4" disabled>Peso/Talla, el punto cae POR ENCIMA 2 HASTA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3 (INCLUYE SI EL PUNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3), segun el sexo del niño/a<br>
                 <input type=radio name="r2" value="5" disabled>Peso/Talla, el punto cae POR ENCIMA de la curva <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3, segun el sexo del niño/a  
             </c:if>
             <c:if test="${aiepi.dglobal == 'M'}">    
                 <input type=radio name="r2" value="1" disabled>Peso/Talla, el punto cae POR DEBAJO de la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curva NEGRA (-3) segun el sexo del niño o niña<br>
                 <input type=radio name="r2" value="2" checked>Peso/Talla, el punto cae POR DEBAJO de la CURVA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2 HASTA LA -3 (INCLUYE SI EL UNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA -3), Segun sexo del niño/a<br>
                 <input type=radio name="r2" value="3" disabled>Peso/Talla, el punto cae EN LA CURVA 2 O POR<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEBAJO HASTA LA CURVA -2 (INCLUYE SI <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EL PUNTO CAE EN LA CURVA -2), segun del <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sexo del niño/a<br>
                 <input type=radio name="r2" value="4" disabled>Peso/Talla, el punto cae POR ENCIMA 2 HASTA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3 (INCLUYE SI EL PUNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3), segun el sexo del niño/a<br>
                 <input type=radio name="r2" value="5" disabled>Peso/Talla, el punto cae POR ENCIMA de la curva <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3, segun el sexo del niño/a  
             </c:if>    
             <c:if test="${aiepi.dglobal == 'L' or aiepi.dglobal == 'N'}">        
                 <input type=radio name="r2" value="1" disabled>Peso/Talla, el punto cae POR DEBAJO de la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curva NEGRA (-3) segun el sexo del niño o niña<br>
                 <input type=radio name="r2" value="2" disabled>Peso/Talla, el punto cae POR DEBAJO de la CURVA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2 HASTA LA -3 (INCLUYE SI EL UNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA -3), Segun sexo del niño/a<br>
                 <input type=radio name="r2" value="3" checked>Peso/Talla, el punto cae EN LA CURVA 2 O POR<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEBAJO HASTA LA CURVA -2 (INCLUYE SI <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EL PUNTO CAE EN LA CURVA -2), segun del <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sexo del niño/a<br>
                 <input type=radio name="r2" value="4" disabled>Peso/Talla, el punto cae POR ENCIMA 2 HASTA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3 (INCLUYE SI EL PUNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3), segun el sexo del niño/a<br>
                 <input type=radio name="r2" value="5" disabled>Peso/Talla, el punto cae POR ENCIMA de la curva <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3, segun el sexo del niño/a  
             </c:if>    
             <c:if test="${aiepi.dglobal == 'S'}">        
                 <input type=radio name="r2" value="1" disabled>Peso/Talla, el punto cae POR DEBAJO de la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curva NEGRA (-3) segun el sexo del niño o niña<br>
                 <input type=radio name="r2" value="2" disabled>Peso/Talla, el punto cae POR DEBAJO de la CURVA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2 HASTA LA -3 (INCLUYE SI EL UNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA -3), Segun sexo del niño/a<br>
                 <input type=radio name="r2" value="3" disabled>Peso/Talla, el punto cae EN LA CURVA 2 O POR<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEBAJO HASTA LA CURVA -2 (INCLUYE SI <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EL PUNTO CAE EN LA CURVA -2), segun del <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sexo del niño/a<br>
                 <input type=radio name="r2" value="4" checked>Peso/Talla, el punto cae POR ENCIMA 2 HASTA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3 (INCLUYE SI EL PUNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3), segun el sexo del niño/a<br>
                 <input type=radio name="r2" value="5" disabled>Peso/Talla, el punto cae POR ENCIMA de la curva <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3, segun el sexo del niño/a  
             </c:if> 
             <c:if test="${aiepi.dglobal == 'O'}">        
                 <input type=radio name="r2" value="1" disabled>Peso/Talla, el punto cae POR DEBAJO de la <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curva NEGRA (-3) segun el sexo del niño o niña<br>
                 <input type=radio name="r2" value="2" disabled>Peso/Talla, el punto cae POR DEBAJO de la CURVA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-2 HASTA LA -3 (INCLUYE SI EL UNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA -3), Segun sexo del niño/a<br>
                 <input type=radio name="r2" value="3" disabled>Peso/Talla, el punto cae EN LA CURVA 2 O POR<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEBAJO HASTA LA CURVA -2 (INCLUYE SI <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EL PUNTO CAE EN LA CURVA -2), segun del <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sexo del niño/a<br>
                 <input type=radio name="r2" value="4" disabled>Peso/Talla, el punto cae POR ENCIMA 2 HASTA <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3 (INCLUYE SI EL PUNTO CAE EN <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LA CURVA 3), segun el sexo del niño/a<br>
                 <input type=radio name="r2" value="5" checked>Peso/Talla, el punto cae POR ENCIMA de la curva <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3, segun el sexo del niño/a  
             </c:if>   
         </td>        
         <td class="etiqueta">
             <c:if test="${aiepi.dglobal == 'G'}"> DESNUTRICION AGUDA GRAVE Y O ANEMIA GRAVE</c:if>
             <c:if test="${aiepi.dglobal == 'M'}"> DESNUTRICION AGUDA MODERADA              </c:if>    
             <c:if test="${aiepi.dglobal == 'L' or aiepi.dglobal == 'N'}"> NO TIENE DESNUTRICION AGUDA </c:if>    
             <c:if test="${aiepi.dglobal == 'S'}"> SOBREPESO             </c:if> 
             <c:if test="${aiepi.dglobal == 'O'}"> OBESIDAD              </c:if>        
         </td>   
         <td class="etiqueta">
             <textarea name="u2" rows="12" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.cantidad}"/></textarea></td>       
      </tr> 
      <tr>
         <td colspan="4"><b>CLASIFICAR TALLA</b></td>      
      </tr>
      <tr>
         <td style="font-size:11pt" colspan="2">
             <c:if test="${aiepi.dcronica == 'L'}"> 
                 <input type=radio name="r3" value="1" checked>Talla/Edad, el punto cae por DEBAJO DE LA CURVA -2, de acuerdo al sexo<br>
                 <input type=radio name="r3" value="1" disabled>Talla/Edad, el punto cae en POR ENCIMA DE LA CURVA ROJA -2<br>Si tiene talla previa: Determine si la tendencia de crecimiento es apropiada o inapropiada
             </c:if>    
             <c:if test="${aiepi.dcronica == 'N'}"> 
                 <input type=radio name="r3" value="1" disabled>Talla/Edad, el punto cae por DEBAJO DE LA CURVA -2, de acuerdo al sexo<br>
                 <input type=radio name="r3" value="1" checked>Talla/Edad, el punto cae en POR ENCIMA DE LA CURVA ROJA -2
             </c:if>         
         </td>    
         <td class="etiqueta">
             <c:if test="${aiepi.dcronica == 'L'}"> TALLA BAJA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:if>    
             <c:if test="${aiepi.dcronica == 'N'}"> NO TIENE TALLA BAJA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:if></td>  
         <td class="etiqueta">
             <textarea name="u3" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.color}"/></textarea></td>       
      </tr>
     <c:if test="${((datos.mes+datos.edad*12) >= '6' and (datos.mes+datos.edad*12) <= '24')}">  
      <tr>
         <td colspan="4"><b>SI EL NIÑO /A TIENE 6 A 24 MESES: EVALUAR LA VELOCIDAD DE CRECIMIENTO LINEAL</b></td>      
      </tr>
      <tr>
         <td style="font-size:11pt" colspan="2">
             <c:if test="${aiepi.dcronica == 'L'}"> 
                 <input type=radio name="r4" value="1" checked>La tendencia de crecimiento es horizontal y tiende a aproximarse a la curva inferior<br>
                 <input type=radio name="r4" value="1" disabled>La tendencia de crecimiento es paralela a las curvas
             </c:if>    
             <c:if test="${aiepi.dcronica == 'N'}"> 
                 <input type=radio name="r4" value="1" disabled>La tendencia de crecimiento es horizontal y tiende a aproximarse a la curva inferior<br>
                 <input type=radio name="r4" value="1" checked>La tendencia de crecimiento es paralela a las curvas
             </c:if>         
             
         <td class="etiqueta">
             <c:if test="${aiepi.dcronica == 'L'}"> CRECIMIENTO LINEAL INAPROPIADO</c:if>    
             <c:if test="${aiepi.dcronica == 'N'}"> CRECIMIENTO LINEAL APROPIADO</c:if>  
         <td class="etiqueta">
             <textarea name="u4" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.cilindros}"/></textarea></td>       
      </tr> 
     </c:if>
       <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar1...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>
   <form name="aiepi22" method="POST" action='<c:url value="/Aiepi.do"/>' >  
      <tr>
         <c:if test="${aiepi.diasc == '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE TOS Y DIFICUTAD PARA RESPIRAR........................SI  ( <input type=radio name="radio1" value="1" > )  NO  ( <input type=radio name="radio1" value="0" checked> )</b></td>       
         </c:if> 
         <c:if test="${aiepi.diasc != '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE TOS Y DIFICUTAD PARA RESPIRAR........................SI  ( <input type=radio name="radio1" value="1" checked> )  NO  ( <input type=radio name="radio1" value="0" > )</b></td>       
         </c:if> 
      </tr>
      <tr>
         <c:if test="${aiepi.controlpos == '0'}">
            <td style="font-size:11pt"><ul><li>¿Hace cuanto tiempo?<input type="text" name="r1" size=4 maxlength=10 value="0"  onblur='validar(r1,"9")'/> ....dias</li><li>¿Tiene Sibilancias?<br>-¿Es la primera que tiene sibilancias?</li></ul> <br><b>respiracion rapida es:<br>De 2 a 11 meses 50 o mas por minuto<br>de 1 año a menor de 5, 40 o mas por minuto</b></td> 
         </c:if> 
         <c:if test="${aiepi.controlpos > '0'}">
            <td style="font-size:11pt"><ul><li>¿Hace cuanto tiempo?<input type="text" name="r1" size=4 maxlength=10 value="<c:out value = "${aiepi.controlpos}"/>"  onblur='validar(r1,"9")'/> ....dias</li><li>¿Tiene Sibilancias?<br>-¿Es la primera que tiene sibilancias?</li></ul> <br><b>respiracion rapida es:<br>De 2 a 11 meses 50 o mas por minuto<br>de 1 año a menor de 5, 40 o mas por minuto</b></td>   
         </c:if>    
         <c:if test="${aiepi.curaciones == '0'}">
            <td style="font-size:11pt">Contar las respiraciones en un minuto <input type="text" name="r2" size=4 maxlength=10 value="0"  onblur='validar(r2,"9")'/> resp/min.<br><br>
             <c:if test="${r30 == 'S'}">  <input type="checkbox" name="q1" value="1" checked/> Tiene respiracion rapida<br>  </c:if>
                 <c:if test="${r30 != 'S'}">  <input type="checkbox" name="q1" value="1" /> Tiene respiracion rapida<br>  </c:if>
             <c:if test="${r31 == 'S'}">  <input type="checkbox" name="q2" value="2" checked/> Tiene tiraje subcostal<br>    </c:if>
                 <c:if test="${r31 != 'S'}">  <input type="checkbox" name="q2" value="2" /> Tiene tiraje subcostal<br>    </c:if>    
             <c:if test="${r32 == 'S'}">  <input type="checkbox" name="q3" value="3" checked/> Tiene estridor<br>            </c:if>    
                 <c:if test="${r32 != 'S'}">  <input type="checkbox" name="q3" value="3" /> Tiene estridor<br>            </c:if>    
             </td> 
         </c:if> 
         <c:if test="${aiepi.curaciones > '0'}">
            <td style="font-size:11pt">Contar las respiraciones en un minuto <input type="text" name="r2" size=4 maxlength=10 value="<c:out value = "${aiepi.curaciones}"/>"  onblur='validar(r2,"9")'/> resp/min.<br><br>
             <c:if test="${r30 == 'S'}">  <input type="checkbox" name="q1" value="1" checked/> Tiene respiracion rapida<br>  </c:if>
                 <c:if test="${r30 != 'S'}">  <input type="checkbox" name="q1" value="1" /> Tiene respiracion rapida<br>  </c:if>
             <c:if test="${r31 == 'S'}">  <input type="checkbox" name="q2" value="2" checked/> Tiene tiraje subcostal<br>    </c:if>
                 <c:if test="${r31 != 'S'}">  <input type="checkbox" name="q2" value="2" /> Tiene tiraje subcostal<br>    </c:if>    
             <c:if test="${r32 == 'S'}">  <input type="checkbox" name="q3" value="3" checked/> Tiene estridor<br>            </c:if>    
                 <c:if test="${r32 != 'S'}">  <input type="checkbox" name="q3" value="3" /> Tiene estridor<br>            </c:if>    
             </td> 
         </c:if>   
         <td class="etiqueta">
             <textarea name="u5" rows="6" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.espuma}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="u6" rows="6" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.contraref}"/></textarea></td>       
      </tr> 
      <tr>
         <c:if test="${aiepi.diasi == '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE DIARREA..................................SI  ( <input type=radio name="radio2" value="1" > )  NO  ( <input type=radio name="radio2" value="0" checked> )</b></td>        
         </c:if>
         <c:if test="${aiepi.diasi != '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE DIARREA..................................SI  ( <input type=radio name="radio2" value="1" checked> )  NO  ( <input type=radio name="radio2" value="0" > )</b></td>        
         </c:if>
      </tr>
      <tr>
         <c:if test="${aiepi.alcohol == '0'}">
            <td style="font-size:11pt">¿Hace cuanto tiempo?<input type="text" name="r3" size=4 maxlength=10 value="0"  onblur='validar(r3,"9")'/> dias<br>Hay sangre visible en las heces<br><br><br><br></td>  
         </c:if> 
         <c:if test="${aiepi.alcohol > '0'}">
            <td style="font-size:11pt">¿Hace cuanto tiempo?<input type="text" name="r3" size=4 maxlength=10 value="<c:out value = "${aiepi.alcohol}"/>"  onblur='validar(r3,"9")'/> dias<br>Hay sangre visible en las heces<br><br><br><br></td>  
         </c:if> 
         
         <td  style="font-size:9pt">
             <c:if test="${r33 == 'S'}"> <input type="checkbox" name="q4" value="4" checked/> Determinar el estado general del niño/a <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta letargico o inconsiente <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta inquieto / irritable<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Tiene los ojos hundidos <br> </c:if>
                    <c:if test="${r33 != 'S'}"> <input type="checkbox" name="q4" value="4" /> Determinar el estado general del niño/a <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta letargico o inconsiente <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Esta inquieto / irritable<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Tiene los ojos hundidos <br> </c:if>
                 <c:if test="${r34 == 'S'}"> <input type="checkbox" name="q5" value="5" checked/> Ofrecer liquidos al niño/a:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-No puede beber o bebe mal<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Bebe avidamente, con sed  <br> </c:if> 
                    <c:if test="${r34 != 'S'}"> <input type="checkbox" name="q5" value="5" /> Ofrecer liquidos al niño/a:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-No puede beber o bebe mal<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Bebe avidamente, con sed  <br> </c:if> 
                 <c:if test="${r35 == 'S'}"> <input type="checkbox" name="q6" value="6" checked/> Signo de pliegue cutaneo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-La piel vueve muy lentamente (mas de 2 segundos)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-La piel vueve lentamente (menos de 2 segundos)  </c:if> 
                    <c:if test="${r35 != 'S'}"> <input type="checkbox" name="q6" value="6" /> Signo de pliegue cutaneo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-La piel vueve muy lentamente (mas de 2 segundos)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-La piel vueve lentamente (menos de 2 segundos)  </c:if> 
          </td>  
         <td class="etiqueta">
             <textarea name="u7" rows="6" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.cristales}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="u8" rows="6" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.fama}"/></textarea></td>       
      </tr>
      <tr>
         <c:if test="${aiepi.discapa == '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE FIEBRE....................................SI  ( <input type=radio name="radio3" value="1" > )  NO  ( <input type=radio name="radio3" value="0" checked> )</b></td>         
         </c:if>
         <c:if test="${aiepi.discapa != '0'}">  
             <td colspan="4"><b>EL NIÑO TIENE FIEBRE....................................SI  ( <input type=radio name="radio3" value="1" checked> )  NO  ( <input type=radio name="radio3" value="0" > )</b></td>         
         </c:if>    
         
      </tr>
      <tr>
         <td  style="font-size:11pt" colspan="2">(Referida por interrogatorio sesiente caliente al tacto y tiene temperatura axilar de 38C o mas)<br>
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Determinar el riesgo de malaria :
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Con riesgo de malaria  -  Sin riesgo de malaria
              <c:if test="${aiepi.desesti == '0'}">
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Hace cuento tiempo tiene fiebre..<input type="text" name="r4" size=4 maxlength=10 value="0"  onblur='validar(r4,"9")'/> ..dias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
              </c:if> 
              <c:if test="${aiepi.desesti > '0'}">
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Hace cuento tiempo tiene fiebre..<input type="text" name="r4" size=4 maxlength=10 value="<c:out value = "${aiepi.desesti}"/>"  onblur='validar(r4,"9")'/> ..dias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
              </c:if> 
              <c:if test="${r36 == 'S'}">  
                  <input type="checkbox" name="q7" value="7" checked/> Tiene rigidez de nuca 
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Ha tenido fiebre todos los dias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </c:if>     
              <c:if test="${r36 != 'S'}">  
                   <input type="checkbox" name="q7" value="7" /> Tiene rigidez de nuca 
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Ha tenido fiebre todos los dias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </c:if>          
              <c:if test="${r37 == 'S'}">  
                  <input type="checkbox" name="q8" value="8" checked/> Determinar signos de sarampion
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Erupcion cutanea generalizada en uno de los siguintes 
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signos: Tos, catarro u ojos enrojecidos 
              </c:if>
              <c:if test="${r37 != 'S'}">  
                   <input type="checkbox" name="q8" value="8" /> Determinar signos de sarampion
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Erupcion cutanea generalizada en uno de los siguintes 
                   <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signos: Tos, catarro u ojos enrojecidos 
              </c:if>     
         </td>
         <td class="etiqueta">
             <textarea name="u9" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.densidad}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="u10" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.estado}"/></textarea></td>       
      </tr>
      <tr>
         <c:if test="${aiepi.disli == '0'}">  
             <td colspan="4"><b>EL NIÑO/A TIENE UN PROBLEMA DE OIDO....................................SI  ( <input type=radio name="radio4" value="1" > )  NO  ( <input type=radio name="radio4" value="0" checked> )</b></td>          
         </c:if> 
         <c:if test="${aiepi.disli != '0'}">  
             <td colspan="4"><b>EL NIÑO/A TIENE UN PROBLEMA DE OIDO....................................SI  ( <input type=radio name="radio4" value="1" checked> )  NO  ( <input type=radio name="radio4" value="0" > )</b></td>          
         </c:if>     
         
      </tr>
      <tr>
         <c:if test="${aiepi.diabetes == '0'}">
            <td style="font-size:11pt"><ul><li>¿Tiene dolor de oido?</li><li>Tiene supuracion de oido</li><li>En caso afirmativo</li><br>Hace cuanto tiempo..<input type="text" name="r5" size=4 maxlength=10 value="0"  onblur='validar(r5,"9")'/>.. dias</ul></td>  
          </c:if> 
          <c:if test="${aiepi.diabetes > '0'}">
            <td style="font-size:11pt"><ul><li>¿Tiene dolor de oido?</li><li>Tiene supuracion de oido</li><li>En caso afirmativo</li><br>Hace cuanto tiempo..<input type="text" name="r5" size=4 maxlength=10 value="<c:out value = "${aiepi.diabetes}"/>"  onblur='validar(r5,"9")'/>.. dias</ul></td>  
          </c:if>  
         
         <td style="font-size:11pt">
             <c:if test="${r38 == 'S'}">  <input type="checkbox" name="q9" value="9" checked/> Detertminar si hay supuracion en el oido<br> </c:if>
                 <c:if test="${r38 != 'S'}">  <input type="checkbox" name="q9" value="9" /> Detertminar si hay supuracion en el oido<br> </c:if>
             <c:if test="${r39 == 'S'}">  <input type="checkbox" name="q10" value="10" checked/> Palpar detras de la oreja para determinar si hay <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tumefaccion dolorosa </c:if>  
                 <c:if test="${r39 != 'S'}">  <input type="checkbox" name="q10" value="10" /> Palpar detras de la oreja para determinar si hay <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tumefaccion dolorosa </c:if>  
         </td>         
         <td class="etiqueta">
             <textarea name="u11" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.dhierro}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="u12" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.dvitaa}"/></textarea></td>       
      </tr> 
     <c:if test="${aiepi.dglobal == 'M'}"> 
      <tr>
         <c:if test="${aiepi.diu == '0'}">  
             <td colspan="4"><b>EL NIÑO/A TIENE CLASIFICACION DE DESNUTRICION MODERADA..................................SI  ( <input type=radio name="radio5" value="1" > )  NO  ( <input type=radio name="radio5" value="0" checked> )</b></td>            
         </c:if>  
         <c:if test="${aiepi.diu != '0'}">  
             <td colspan="4"><b>EL NIÑO/A TIENE CLASIFICACION DE DESNUTRICION MODERADA..................................SI  ( <input type=radio name="radio5" value="1" checked> )  NO  ( <input type=radio name="radio5" value="0" > )</b></td>            
         </c:if>      
         
      </tr>
       <tr>
       <td  style="font-size:11pt" colspan="2">Definir conducta frente al niño/a con Desnutricion Moderada
              <br>Determinar si el niño con Desnutricion moderada tiene ademas Clasificacion de:
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Neumonia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Diarrea Persistente
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Diarrea con deshidratacion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Malaria
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Disenteria&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Sospecha de sarampion
              </td>
         <td class="etiqueta">
             <textarea name="u13" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.ematies}"/></textarea></td>   
         <td class="etiqueta">
             <textarea name="u14" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.epiteliales}"/></textarea></td>       
      </tr>
     </c:if>  
     <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar2...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form> 
   <form name="aiepi23" method="POST" action='<c:url value="/Aiepi.do"/>' >      
      <tr>
         <td colspan="4"><b>VERIFICAR LOS ANTECENTES DE VACUNACION DEL NIÑO/A</b></td>      
      </tr>
      <tr>
         <td style="font-size:13pt" colspan="2">
             <table class="tabla" >
            <tr>
               <td><c:out value="${fbcg}"/><br>&nbsp;&nbsp;&nbsp;BCG</td>        
               <td>&nbsp;&nbsp;&nbsp;<c:out value="${fpenta1}"/><br>Pentavalente1 </td>
               <td>&nbsp;&nbsp;&nbsp;<c:out value="${fpenta2}"/><br>Pentavalente2 </td>
               <td>&nbsp;&nbsp;&nbsp;<c:out value="${fpenta3}"/><br>Pentavalente3 </td>
               <td><c:out value="${fsrp}"/><br>&nbsp;&nbsp;&nbsp;SRP </td>
               <td>&nbsp;&nbsp;&nbsp;<c:out value="${ffama}"/><br>Antiamarilica </td>
            </tr>    
          </table></td>
          <c:if test="${aiepi.eclam == '0'}">
             <td align="center" style="font-size:11pt">Vacunas completas para la edad<br><br>No<input type=radio name="radio1" value="0" checked>Si<input type=radio name="radio1" value="1" ></td>      
          </c:if>   
          <c:if test="${aiepi.eclam != '0'}">
             <td align="center" style="font-size:11pt">Vacunas completas para la edad<br><br>No<input type=radio name="radio1" value="0" >Si<input type=radio name="radio1" value="1" checked></td>      
          </c:if>
         <td>
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == diaz}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mesz}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anioz}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        dd-mm-aaaa    
        </td>	
              
      </tr>  
      <tr>
         <td style="font-size:13pt" colspan="2">EVALUAR DESARROLLO DEL NIÑO/A<br>(Emplear el carnet de salud infantil)</td>  
         <c:if test="${aiepi.endodoncia == '0'}">
             <td align="center" style="font-size:11pt">Cumple con todos los hitosm de desarrollo<br><br>No<input type=radio name="radio2" value="0" checked>Si<input type=radio name="radio2" value="1" ></td>   
          </c:if>   
          <c:if test="${aiepi.endodoncia != '0'}">
             <td align="center" style="font-size:11pt">Cumple con todos los hitosm de desarrollo<br><br>No<input type=radio name="radio2" value="0">Si<input type=radio name="radio2" value="1" checked></td>   
          </c:if>
         
         <td class="etiqueta">
             <textarea name="v1" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.glucosa}"/></textarea></td>       
      </tr>
       <tr>
         <td colspan="4" align="center"><b>EVALUAR LAS PRACTICAS DE ALIMENTACION DEL NIÑO/A DE 2 MESES A MENOR DE 5 AÑOS</b></td>      
      </tr>
      <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar3...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>
      
   <c:if test="${((datos.mes+datos.edad*12) < '6')}">       
   <form name="aiepi24" method="POST" action='<c:url value="/Aiepi.do"/>' >     
      <tr>
         <td colspan="4"><b>A. EVALUAR LA LACTANCIA MATERNA DEL NIÑO/A DE 2 MESES A MENOR DE 6 MESES DE EDAD</b></td>      
      </tr>
      <tr>
         <th width="30%">ASPECTOS A EVALUAR</th>  
         <th width="30%">Practica Ideal</th>
         <th width="20%">Pactica real</th>
         <th width="20%">Conducta</th>
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>Recibe lactancia materna exclusiva</li><br></ul></td>  
         <td style="font-size:11pt">El niño hasta los 6 meses debe recibir SOLO seno materno. no debe recibir NINGUN otro alimento o liquido (excepto vacuna antipolio o vitaminas)</td>
         <td class="etiqueta">
             <textarea name="u16" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.granulosos}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u17" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.hialianos}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>Cuantas veces en 24 horas</li><br></ul></td>  
         <td style="font-size:11pt">Al menos 10 veces en 24 horas</td>
         <td class="etiqueta">
             <textarea name="u18" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.laboratorio}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u19" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.leucocitos}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>Recibe otros alimentos o liquidos</li><br></ul></td>  
         <td style="font-size:11pt">Ningun alimento o liquido</td>
         <td class="etiqueta">
             <textarea name="u20" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.leucocitarios}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u21" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.lmexclu}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>Recibe biberon (mamadera, chupete)</li><br></ul></td>  
         <td style="font-size:11pt">No debe recibir biberon</td>
         <td class="etiqueta">
             <textarea name="u22" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.mujerdt}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u23" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.nitritos}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿La posicion para mamar es la correcta?</li><br></ul></td>  
         <td style="font-size:11pt">
              <c:if test="${z1 == 'S'}"> <input type="checkbox" name="c1" value="1" checked/> La cabeza y el cuerpo del niño deben estar rectos <br> </c:if>
                 <c:if test="${z1 != 'S'}"> <input type="checkbox" name="c1" value="1" /> La cabeza y el cuerpo del niño deben estar rectos <br>  </c:if>
             <c:if test="${z2 == 'S'}">  <input type="checkbox" name="c2" value="2"  checked/> La nariz del niño debe estar frente al pezon <br>  </c:if>  
                 <c:if test="${z2 != 'S'}">  <input type="checkbox" name="c2" value="2" /> La nariz del niño debe estar frente al pezon <br>  </c:if> 
             <c:if test="${z3 == 'S'}">  <input type="checkbox" name="c3" value="3"  checked/> El cuerpo del niño debe estar pegados al cuerpo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;de la madre <br>  </c:if>  
                 <c:if test="${z3 != 'S'}">  <input type="checkbox" name="c3" value="3" /> El cuerpo del niño debe estar pegados al cuerpo <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;de la madre <br>  </c:if> 
             <c:if test="${z4 == 'S'}">  <input type="checkbox" name="c4" value="4"  checked/> La madre debe sostener todo el cuerpo del niño <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y no solo cuerpo y hombros <br> </c:if>  
                 <c:if test="${z4 != 'S'}">  <input type="checkbox" name="c4" value="4" /> La madre debe sostener todo el cuerpo del niño <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y no solo cuerpo y hombros <br>  </c:if>         
         </td>
         <td class="etiqueta">
             <textarea name="u24" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.observa}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u25" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.observaciones}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>¿El agarre es adecuado?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z5 == 'S'}"> <input type="checkbox" name="c5" value="5" checked/> Toca la mama o pecho con el menton <br> </c:if>
                  <c:if test="${z5 != 'S'}"> <input type="checkbox" name="c5" value="5" /> Toca la mama o pecho con el menton <br>  </c:if>     
             <c:if test="${z6 == 'S'}"> <input type="checkbox" name="c6" value="6" checked/> Tiene la boca bien abierta <br>  </c:if>     
                  <c:if test="${z6 != 'S'}"> <input type="checkbox" name="c6" value="6" /> Tiene la boca bien abierta <br>   </c:if>     
             <c:if test="${z7 == 'S'}"> <input type="checkbox" name="c7" value="7" checked/> Tiene el labio inferior volteado hacia afuera <br>  </c:if>
                  <c:if test="${z7 != 'S'}"> <input type="checkbox" name="c7" value="7" /> Tiene el labio inferior volteado hacia afuera <br>   </c:if>     
             <c:if test="${z8 == 'S'}"> <input type="checkbox" name="c8" value="8" checked/> Se ve mas areola por encima de la boca que por debajo <br>   </c:if>     
                  <c:if test="${z8 != 'S'}"> <input type="checkbox" name="c8" value="8" /> Se ve mas areola por encima de la boca que por debajo <br>  </c:if>          
             
         </td>    
         <td class="etiqueta">
             <textarea name="u26" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.olor}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u27" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.otros}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>¿Vacia los dos pechos?</li><br></ul></td>  
         <td style="font-size:11pt">
         <c:if test="${z9 == 'S'}"> <input type="checkbox" name="c9" value="9"  checked/> La mama le debe dar ambos pechos hasta vaciarlos <br> </c:if>    
         <c:if test="${z9 != 'S'}"> <input type="checkbox" name="c9" value="9" /> La mama le debe dar ambos pechos hasta vaciarlos <br>  </c:if>             
             
         </td>
         <td class="etiqueta">
             <textarea name="u28" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.penta}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u29" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.pesonac}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>¿Tiene algun problema para darle de lactar</li><br>Cual es el problema?</ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z10 == 'S'}"> <input type="checkbox" name="c10" value="10" checked/> La mama debe comunicar al personal de salud <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cualquier problema con la lactancia(pezones adoloridos, llanto del bebe, etc.)  </c:if>
                  <c:if test="${z10 != 'S'}"> <input type="checkbox" name="c10" value="10" /> La mama debe comunicar al personal de salud <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cualquier problema con la lactancia(pezones adoloridos, llanto del bebe, etc.)  </c:if>
         </td>
         <td class="etiqueta">
             <textarea name="u30" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.piocitos}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u31" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.proteinas}"/></textarea></td>       
      </tr>
    <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar4...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>  
   </c:if> 
     
     
    
    <c:if test="${((datos.mes+datos.edad*12) >= '6' and (datos.mes+datos.edad*12) < '60')}">    
     <form name="aiepi25" method="POST" action='<c:url value="/Aiepi.do"/>' >       
      <tr>
         <td colspan="4"><b>B. EVALUAR LA ALIMENTACION DEL NIÑO/A DE 6 MESES A MENOR DE 5 AÑOS DE EDAD</b></td>      
      </tr>
       <tr>
         <th width="30%">ASPECTOS A EVALUAR</th>  
         <th width="30%">Practica Ideal</th>
         <th width="20%">Pactica real</th>
         <th width="20%">Conducta</th>
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Le sigue dando lactancia materna</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z1 == 'S'}"> <input type="checkbox" name="c1" value="1" checked/>El niño debe recibir lactancia materna hasta 2 años <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;o mas de edad <br> </c:if>
                 <c:if test="${z1 != 'S'}"> <input type="checkbox" name="c1" value="1" />El niño debe recibir lactancia materna hasta 2 años <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;o mas de edad <br>  </c:if>
         </td>
         <td class="etiqueta">
             <textarea name="u16" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.granulosos}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u17" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.hialianos}"/></textarea></td>       
      </tr> 
      <tr>
         <td style="font-size:11pt"><ul><li>¿Cuantas veces en 24 horas?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z2 == 'S'}"> <input type="checkbox" name="c2" value="2" checked/>Debe recibir 6 a 8 veces en 24 horas <br> </c:if>
                 <c:if test="${z2 != 'S'}"> <input type="checkbox" name="c2" value="2" />Debe recibir 6 a 8 veces en 24 horas <br>  </c:if>
         </td>
         <td class="etiqueta">
             <textarea name="u18" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.laboratorio}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u19" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.leucocitos}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Ha iniciado la alimentacion complementaria?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z3 == 'S'}"> <input type="checkbox" name="c3" value="3" checked/>La alimentacion complementaria debe iniciarse a los <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6 meses de edad <br> </c:if>
                 <c:if test="${z3 != 'S'}"> <input type="checkbox" name="c3" value="3" />La alimentacion complementaria debe iniciarse a los <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6 meses de edad <br>  </c:if>
             
         </td>
         <td class="etiqueta">
             <textarea name="u20" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.leucocitarios}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u21" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.lmexclu}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Que alimentos de la al niño?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z4 == 'S'}"> <input type="checkbox" name="c4" value="4" checked/>Debe recibir alimentos espesos, carnes, cereales, <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tuberculos,frutas, leguminosas y el complemento <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nutricional<br> </c:if>
                 <c:if test="${z4 != 'S'}"> <input type="checkbox" name="c4" value="4" />Debe recibir alimentos espesos, carnes, cereales, <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tuberculos,frutas, leguminosas y el complemento <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nutricional<br>  </c:if> 
         </td>
         <td class="etiqueta">
             <textarea name="u22" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.mujerdt}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u23" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.nitritos}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Cuanto le da por vez?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z5 == 'S'}"> <input type="checkbox" name="c5" value="5" checked/>Entre 6 a 12 cucharadas colmadas por vez <br> </c:if>
                 <c:if test="${z5 != 'S'}"> <input type="checkbox" name="c5" value="5" />Entre 6 a 12 cucharadas colmadas por vez <br>  </c:if> 
             
         </td>
         <td class="etiqueta">
             <textarea name="u24" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.observa}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u25" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.observaciones}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Cuantas veces le da?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z6 == 'S'}"> <input type="checkbox" name="c6" value="6" checked/>Debe comer 5 veces al dia, 3 comidas principales <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y dos entre comidas (alimento complementario)<br> </c:if>
                 <c:if test="${z6 != 'S'}"> <input type="checkbox" name="c6" value="6" />Debe comer 5 veces al dia, 3 comidas principales <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y dos entre comidas (alimento complementario)<br>  </c:if> 
             
         </td>
         <td class="etiqueta">
             <textarea name="u26" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.olor}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u27" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.otros}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿El niño come su rpopio plato?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z7 == 'S'}"> <input type="checkbox" name="c7" value="7" checked/>El niño debe tener su propio platore comidas y <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;compartir con padres, hermanos u otros personas<br> </c:if>
                 <c:if test="${z7 != 'S'}"> <input type="checkbox" name="c7" value="7" />El niño debe tener su propio platore comidas y <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;compartir con padres, hermanos u otros personas<br>  </c:if> 
             
         </td>
         <td class="etiqueta">
             <textarea name="u28" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.penta}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u29" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.pesonac}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>¿Quien le da de comer?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z8 == 'S'}"> <input type="checkbox" name="c8" value="8" checked/>La madre o cuidador debe hacerle comer, con <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mucha paciencia y amor <br> </c:if>
                 <c:if test="${z8 != 'S'}"> <input type="checkbox" name="c8" value="8" />La madre o cuidador debe hacerle comer, con <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mucha paciencia y amor <br>  </c:if>  
             
         </td>
         <td class="etiqueta">
             <textarea name="u30" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.piocitos}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u31" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.proteinas}"/></textarea></td>       
      </tr>
      <tr>
         <td style="font-size:11pt"><ul><li>Si el niño esta enfermo durante la enfermedad ¿Ha realizado algun cambio en la 
              alimentacion?¿Cual fue?</li><br></ul></td>  
         <td style="font-size:11pt">
             <c:if test="${z9 == 'S'}"> <input type="checkbox" name="c9" value="9" checked/>Durante la enfermedad del niño se le debe continuar  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alimentando y se le debe dar mas liquidos <br> </c:if>
                 <c:if test="${z9 != 'S'}"> <input type="checkbox" name="c9" value="9" />Durante la enfermedad del niño se le debe continuar  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alimentando y se le debe dar mas liquidos <br>  </c:if> 
             <c:if test="${z10 == 'S'}"> <input type="checkbox" name="c10" value="10" checked/>Despues de la enfermedad necesita comidad extras <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;para que se recupere <br> </c:if>
                 <c:if test="${z10 != 'S'}"> <input type="checkbox" name="c10" value="10" />Despues de la enfermedad necesita comidad extras <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;para que se recupere <br>  </c:if>     
         </td>
         <td class="etiqueta">
             <textarea name="u32" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.reaccion}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u33" rows="4" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.referido}"/></textarea></td>       
      </tr>
   
    <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar5...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>  
    </c:if>    
  </c:if> 

     
     
  <form name="aiepi41" method="POST" action='<c:url value="/Aiepi.do"/>' >      
      <tr>
         <td colspan="4"><b>EVALUAR OTROS PROBLEMAS DEL NIÑO/A</b></td>      
      </tr>
      <tr>
         <td style="font-size:13pt" colspan="2">Pregunte a la madre o cuidador si el niño/a tiene otros problemas</td>
         
         <td class="etiqueta">
             <textarea name="u34" rows="2" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.sangre}"/></textarea></td>              
         <td class="etiqueta">
             <textarea name="u35" rows="2" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.sbas}"/></textarea></td>       
      </tr>  
      <tr>
         <td style="font-size:13pt" colspan="2">Pregunte por la salud de la madre</td>
         <td class="etiqueta">
             <textarea name="u36" rows="2" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.sblancos}"/></textarea></td>       
         <td class="etiqueta">
             <textarea name="u37" rows="2" cols="40" style="width:200px" maxlength="150"><c:out value = "${aiepi.scay}"/></textarea></td>       
      </tr>
      <tr>
          <td style="font-size:13pt" colspan="2" >VOLVER PARA CONSULTA DE SEGUIMIENTO O CONTROL EL...</td>
         <td colspan="2">
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == diay}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mesy}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anioy}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
            dd-mm-aaaa    
        </td>
      </tr>
       
      <tr> 
        <td align="center" colspan="4"><input type="submit" name='accion' class="btn btn-primary" value='...Grabar6...'>
                                       <input type="submit" name='accion' class="btn btn-danger" value='.Terminar.'></td>  
         <input type="hidden" name="id_paciente"        value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name="id_reservacion"     value='<c:out value="${id_reservacion}"/>'>
         <input type="hidden" name="id_consultorio"     value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name="id_persona"         value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name="expedido"           value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'        value='<c:out value="${tipo_medico}"/>'>
     </tr>
   </form>
     
  </table> 
    
</table>