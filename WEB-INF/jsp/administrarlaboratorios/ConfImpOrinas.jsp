<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<table>
  <tr>
  <form name=forma method=post action='<c:url value="/VerLaboratorio.do"/>'>
    <td colspan="2">
      <div class="volver">
       <a href="javascript:document.forma.submit();" >Volver</a>
       <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
       <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
       <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
       <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
       <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
       <input type="hidden" name='accion'       value='imprimir' >
       <input type="hidden" name='sw'           value='1' >
    </div></td>
   </form>
  </tr>
</table>

<br>
<form name="adicionarempleado" method="POST">
<center>
 <table class="tabla">
   <tr>
     <th colspan="4"> EXAMEN FISICO</th>
     <th colspan="4"> EXAMEN QUIMICO</th>
     <th colspan="8"> EXAMEN MICROSCOPICO</th>
   </tr> 
   <tr>
     <th> Tipo<br> Variable</th>
     <th> Dato X</th>
     <th> Dato Y  </th>
     <th> Tamaño </th>
    
     <th> Tipo<br> Variable</th>
     <th> Dato X</th>
     <th> Dato Y  </th>
     <th> Tamaño </th>
    
     <th> Tipo<br> Variable</th>
     <th> Dato X</th>
     <th> Dato Y  </th>
     <th> Tamaño </th>
    
     <th> Tipo<br> Variable</th>
     <th> Dato X</th>
     <th> Dato Y  </th>
     <th> Tamaño </th>
  </tr>  
   <c:forEach var="listado" items="${datosImpOrin}" varStatus="contador">
     <tr> 
          <td>Volumen<br> (Cantidad)</td>                         
          <td><input type="text" name="exodoncia" value="<fmt:formatNumber value="${listado.exodoncia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="periodoncia" value="<fmt:formatNumber value="${listado.periodoncia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="cirugia" value="<fmt:formatNumber value="${listado.cirugia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Nitritos</td>       
          <td><input type="text" name="semanas" value="<fmt:formatNumber value="${listado.semanas}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="parto" value="<fmt:formatNumber value="${listado.parto}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="sexo" value="<fmt:formatNumber value="${listado.sexo}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Cel. Epiteliales</td>       
          <td><input type="text" name="epilepsia" value="<fmt:formatNumber value="${listado.epilepsia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="psico" value="<fmt:formatNumber value="${listado.psico}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="discapa" value="<fmt:formatNumber value="${listado.discapa}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Cilindros</td>       
          <td><input type="text" name="suma11" value="<fmt:formatNumber value="${listado.suma11}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma12" value="<fmt:formatNumber value="${listado.suma12}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma13" value="<fmt:formatNumber value="${listado.suma13}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
        </tr>  
        <tr>
          <td>Color </td>                         
          <td><input type="text" name="endodoncia" value="<fmt:formatNumber value="${listado.endodoncia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="rayosx" value="<fmt:formatNumber value="${listado.rayosx}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="preventiva" value="<fmt:formatNumber value="${listado.preventiva}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Glucosa</td>       
          <td><input type="text" name="imc" value="<fmt:formatNumber value="${listado.imc}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="nembarazo" value="<fmt:formatNumber value="${listado.nembarazo}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="eclam" value="<fmt:formatNumber value="${listado.eclam}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
           <td>Leucocitos</td>       
          <td><input type="text" name="cancer" value="<fmt:formatNumber value="${listado.cancer}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="cancero" value="<fmt:formatNumber value="${listado.cancero}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="depre" value="<fmt:formatNumber value="${listado.depre}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Granulosos</td>       
          <td><input type="text" name="suma14" value="<fmt:formatNumber value="${listado.suma14}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma15" value="<fmt:formatNumber value="${listado.suma15}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma16" value="<fmt:formatNumber value="${listado.suma16}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr>
          <td>Olor </td>                         
          <td><input type="text" name="primera" value="<fmt:formatNumber value="${listado.primera}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="numpieza" value="<fmt:formatNumber value="${listado.numpieza}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="suma1" value="<fmt:formatNumber value="${listado.suma1}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Sangre</td>       
          <td><input type="text" name="orientacion" value="<fmt:formatNumber value="${listado.orientacion}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="diu" value="<fmt:formatNumber value="${listado.diu}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="inyectable" value="<fmt:formatNumber value="${listado.inyectable}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Hematies</td>       
          <td><input type="text" name="pildora" value="<fmt:formatNumber value="${listado.pildora}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="aqv" value="<fmt:formatNumber value="${listado.aqv}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="mnatural" value="<fmt:formatNumber value="${listado.mnatural}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Hialianos</td>       
          <td><input type="text" name="suma17" value="<fmt:formatNumber value="${listado.suma17}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma18" value="<fmt:formatNumber value="${listado.suma18}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma19" value="<fmt:formatNumber value="${listado.suma19}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr>
          <td>Aspecto </td>                         
          <td><input type="text" name="suma2" value="<fmt:formatNumber value="${listado.suma2}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="suma3" value="<fmt:formatNumber value="${listado.suma3}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="suma4" value="<fmt:formatNumber value="${listado.suma4}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Cetonas</td>       
          <td><input type="text" name="nooplasia" value="<fmt:formatNumber value="${listado.nooplasia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="nefro" value="<fmt:formatNumber value="${listado.nefro}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="disli" value="<fmt:formatNumber value="${listado.disli}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Piocitos</td>       
          <td><input type="text" name="insumos" value="<fmt:formatNumber value="${listado.insumos}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="pap" value="<fmt:formatNumber value="${listado.pap}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="tabletas" value="<fmt:formatNumber value="${listado.tabletas}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Leucocitarios</td>       
          <td><input type="text" name="suma20" value="<fmt:formatNumber value="${listado.suma20}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma21" value="<fmt:formatNumber value="${listado.suma21}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma22" value="<fmt:formatNumber value="${listado.suma22}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr>
          <td>Reaccion </td>                         
          <td><input type="text" name="suma5" value="<fmt:formatNumber value="${listado.suma5}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="suma6" value="<fmt:formatNumber value="${listado.suma6}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="suma7" value="<fmt:formatNumber value="${listado.suma7}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Bilirrubina</td>       
          <td><input type="text" name="hemo" value="<fmt:formatNumber value="${listado.hemo}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="anestesia" value="<fmt:formatNumber value="${listado.anestesia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="controlpos" value="<fmt:formatNumber value="${listado.controlpos}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Bacterias</td>       
          <td><input type="text" name="sfembarazada" value="<fmt:formatNumber value="${listado.sfembarazada}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="sfpuerpera" value="<fmt:formatNumber value="${listado.sfpuerpera}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="vitamina" value="<fmt:formatNumber value="${listado.vitamina}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Cilindros</td>       
          <td><input type="text" name="suma23" value="<fmt:formatNumber value="${listado.suma23}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma24" value="<fmt:formatNumber value="${listado.suma24}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma25" value="<fmt:formatNumber value="${listado.suma25}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr>
          <td>Densidad </td>                         
          <td><input type="text" name="suma8" value="<fmt:formatNumber value="${listado.suma8}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="suma9" value="<fmt:formatNumber value="${listado.suma9}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="suma10" value="<fmt:formatNumber value="${listado.suma10}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Urobilinogeno</td>       
          <td><input type="text" name="sueros" value="<fmt:formatNumber value="${listado.sueros}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="curaciones" value="<fmt:formatNumber value="${listado.curaciones}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="condon" value="<fmt:formatNumber value="${listado.condon}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Otros</td>       
          <td><input type="text" name="suma26" value="<fmt:formatNumber value="${listado.suma26}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma27" value="<fmt:formatNumber value="${listado.suma27}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma28" value="<fmt:formatNumber value="${listado.suma28}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          <td><td colspan="4"></td> 
       </tr>
       <tr>
          <td>Espuma </td>                         
          <td><input type="text" name="fuma" value="<fmt:formatNumber value="${listado.fuma}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="alcohol" value="<fmt:formatNumber value="${listado.alcohol}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="violencia" value="<fmt:formatNumber value="${listado.violencia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Leucocitos</td>       
          <td><input type="text" name="tracto" value="<fmt:formatNumber value="${listado.tracto}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="lupus" value="<fmt:formatNumber value="${listado.lupus}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="litiasis" value="<fmt:formatNumber value="${listado.litiasis}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          
          <td>Observaciones</td>       
          <td><input type="text" name="suma29" value="<fmt:formatNumber value="${listado.suma29}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="suma30" value="<fmt:formatNumber value="${listado.suma30}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="suma31" value="<fmt:formatNumber value="${listado.suma31}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr>
          <td>Sedimento </td>                         
          <td><input type="text" name="auto" value="<fmt:formatNumber value="${listado.auto}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(endodoncia,"9");'/></td>                         
          <td><input type="text" name="urinaria" value="<fmt:formatNumber value="${listado.urinaria}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(rayosx,"9");'/></td>
          <td><input type="text" name="sistemica" value="<fmt:formatNumber value="${listado.sistemica}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(preventiva,"9");'/></td>
          
          <td>Pigmentos Biliares</td>       
          <td><input type="text" name="otro" value="<fmt:formatNumber value="${listado.otro}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="cardio" value="<fmt:formatNumber value="${listado.cardio}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="reuma" value="<fmt:formatNumber value="${listado.reuma}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
          <td colspan="4"></td>         
       </tr>  
       <tr><td colspan="4"></td>
          <td>Sales Biliares</td>       
          <td><input type="text" name="eritro" value="<fmt:formatNumber value="${listado.eritro}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="renal" value="<fmt:formatNumber value="${listado.renal}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="tuberculo" value="<fmt:formatNumber value="${listado.tuberculo}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr><td colspan="4"></td>
          <td>Proteinas</td>       
          <td><input type="text" name="ingreso" value="<fmt:formatNumber value="${listado.ingreso}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="anastecia" value="<fmt:formatNumber value="${listado.anastecia}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="servicio" value="<fmt:formatNumber value="${listado.servicio}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
       <tr><td colspan="4"></td>
          <td>Acido Diecetico</td>       
          <td><input type="text" name="frenal" value="<fmt:formatNumber value="${listado.frenal}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(exodoncia,"9");'/></td>                         
          <td><input type="text" name="bajopeso" value="<fmt:formatNumber value="${listado.bajopeso}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(periodoncia,"9");'/></td>
          <td><input type="text" name="prematuro" value="<fmt:formatNumber value="${listado.prematuro}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(cirugia,"9");'/></td>
       </tr>
   </c:forEach>
  
 </table>
</center> 
<center>
  <input type="submit" class="siguiente" value='Grabar' onclick="document.adicionarempleado.accion1.value='Guardar';
                                                                      document.adicionarempleado.action='<c:url value="/VerLaboratorio.do"/>';"></td>
  <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
  <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
  <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
  <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' >
  <input type="hidden" name='boton'        value='Guardar'>
 </center>  
</form>
