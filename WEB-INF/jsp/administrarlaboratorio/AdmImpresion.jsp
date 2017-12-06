<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<center>
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
    <th colspan="3"><center>Impresion de Laboratorios Realizados</center></th>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td align="right" bgcolor="#F2F2F2">HCL</td>
        <td><c:out value = "${datos.hcl}"/></td>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Sexo</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td><c:out value="${fec_nacimiento}"/> <b><c:out value = "${datos.edad}"/> años <c:out value = "${datos.mes}"/> meses <c:out value = "${datos.dia}"/> dias</b></td>	                 
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Direcci&oacute;n</td>          
        <td colspan="4"><c:out value="${fn:substring(datos.direccion,0,40)}"/></td>
      </tr>    
   </table>
  </td>
  </tr>
 </table>
 </center>
<br>
 <center>
     
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr >
      <th colspan="9">IMPRESION DE LABORATORIO </th>
    </tr> 
    <tr style="font-size:9pt">
      <c:if test="${hemos == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Hematologia</th>
      </c:if>  
      <c:if test="${orin == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Orinas</th>
      </c:if> 
      <c:if test="${quimi == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Quimica<br>Sanguinea</th>
      </c:if> 
      <c:if test="${sero == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Serologia</th>
      </c:if> 
      <c:if test="${paras == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Parasitologia</th>
      </c:if> 
      <c:if test="${cito == '1'}">
             <th bgcolor="#F2F2F2">Citologia</th>
      </c:if> 
      <c:if test="${otr == '1'}">
             <th bgcolor="#F2F2F2">Todo<br>Otros</th>
      </c:if> 
      <!--<c:if test="${hemos == '1'}">
            <th>Hemograma<br>Completo</th>
      </c:if>
      <c:if test="${orin == '1'}">
           <th>Examen<br>General<br>de Orina</th>
      </c:if>
      -->
      <th bgcolor="#F2F2F2">Laboratorio<br>General</th>
    </tr>
    <tr>
      <c:if test="${hemos == '1'}">
         <form name=formaImHemat<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImHemat<c:out value="${contador.count}"/>.submit();"> Hematologia</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='hemograma' >
             <!--<input type="hidden" name='accionl'       value='hematologia' >  -->
             <input type="hidden" name='id_laboratorio' value='1'> 
             <input type="hidden" name='id_cargo'       value='1'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${orin == '1'}">
          <form name=formaImOri2<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImOri2<c:out value="${contador.count}"/>.submit();">Todo Orinas</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='orinas' >
             <!--<input type="hidden" name='accionl'       value='orinas2' > -->
             <input type="hidden" name='id_laboratorio' value='4'> 
             <input type="hidden" name='id_cargo'       value='4'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${quimi == '1'}">
         <form name=formaImQuimi<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImQuimi<c:out value="${contador.count}"/>.submit();">Todo Quimicas</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'> 
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='quimicas' >
             <input type="hidden" name='id_laboratorio' value='2'> 
             <input type="hidden" name='id_cargo'       value='2'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if> 
      <c:if test="${sero == '1'}">
         <form name=formaImSero<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImSero<c:out value="${contador.count}"/>.submit();">Todo Serologia</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='serologia' >
             <input type="hidden" name='id_laboratorio' value='3'> 
             <input type="hidden" name='id_cargo'       value='3'>
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if> 
      
      <c:if test="${paras == '1'}">
          <form name=formaImParas<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImParas<c:out value="${contador.count}"/>.submit();">Paracitologia</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='paracito' >
             <input type="hidden" name='id_laboratorio' value='5'> 
             <input type="hidden" name='id_cargo'       value='5'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${embar == '1'}">
          <form name=formaImEmba<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImEmba<c:out value="${contador.count}"/>.submit();">Embarazo</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='embara' >
             <input type="hidden" name='id_laboratorio' value='6'> 
             <input type="hidden" name='id_cargo'       value='6'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${cultivo == '1'}">
          <form name=formaImCultivo<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImCultivo<c:out value="${contador.count}"/>.submit();">Cultivos</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='cultivos' >
             <input type="hidden" name='id_laboratorio' value='7'> 
             <input type="hidden" name='id_cargo'       value='7'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${basilo == '1'}">
          <form name=formaImBasilo<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImBasilo<c:out value="${contador.count}"/>.submit();">Basiloscopia</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='basilo' >
             <input type="hidden" name='id_laboratorio' value='8'> 
             <input type="hidden" name='id_cargo'       value='8'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${liqui == '1'}">
          <form name=formaImLiquid<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImLiquid<c:out value="${contador.count}"/>.submit();">Liquidos</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='liquidos' >
             <input type="hidden" name='id_laboratorio' value='9'> 
             <input type="hidden" name='id_cargo'       value='9'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${bacter == '1'}">
          <form name=formaImBactero<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImBactero<c:out value="${contador.count}"/>.submit();">Liquidos</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='bactero' >
             <input type="hidden" name='id_laboratorio' value='10'> 
             <input type="hidden" name='id_cargo'       value='10'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
      <c:if test="${hormo == '1'}">
         <form name=formaImHormo<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImHormo<c:out value="${contador.count}"/>.submit();">Todo Hormonas</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='hormonas' >
             <input type="hidden" name='id_laboratorio' value='17'> 
             <input type="hidden" name='id_cargo'       value='17'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if> 
      <c:if test="${cito == '1'}">
          <form name=formaImCito<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImCito<c:out value="${contador.count}"/>.submit();">Citologia</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='cito' >
             <input type="hidden" name='id_laboratorio' value='11'> 
             <input type="hidden" name='id_cargo'       value='11'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>
     <c:if test="${otr == '1'}">
          <form name=formaImOtros<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
           <td>
             <div><a class="btn btn-info btn-lg" href="javascript:document.formaImOtros<c:out value="${contador.count}"/>.submit();">Otros</a></div>
             <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
             <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
             <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
             <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
             <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
             <input type="hidden" name='accionl'        value='otros' >
             <input type="hidden" name='id_laboratorio' value='19'> 
             <input type="hidden" name='id_cargo'       value='19'> 
             <input type="hidden" name='sw'             value='1' >
           </td>
         </form>
      </c:if>

      <form name=formaIm<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div><a class="btn btn-primary btn-lg" href="javascript:document.formaIm<c:out value="${contador.count}"/>.submit();">Resultado</a></div>
         <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'     value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial'   value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'        value='general'>
         <input type="hidden" name='id_laboratorio' value='999'> 
         <input type="hidden" name='id_cargo'       value='0'> 
	 <input type="hidden" name='sw'             value='1' >
       </td>
     </form>
    </tr>
   </table> 
   <br>
  </center>
  
  <center>
      
      
 <!--     
 <div style="font-size:15pt"> </div>   
  <br>
 <table class="formulario">
    <tr>
      <th colspan="8">IMPRESION DE LABORATORIO PEDISEÑADOS</th>
    </tr> 
    <tr>
      <th>Solo Hemograma<br>Completo</th>
      <form name=formaConfImpOrina<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <th>
         <div ><a href="javascript:document.formaConfImpOrina<c:out value="${contador.count}"/>.submit();">Solo Orinas</a></div>
         <input type="hidden" name='id_paciente'  value="<c:out value="${id_paciente}"/>"> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accion'       value='ImpOrinas' >
         <input type="hidden" name='id_tipo'      value='2' >
       </th>
     </form>
      <th>Quimica<br>Sanguinea</th>
      <th>Serologia</th>
      <th>Test de<br>Embarazo</th>
      <th>Solo Otros</th>
      <th>Ecografias</th>
    </tr>
    <tr>
      <form name=formaImHemoP<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImHemoP<c:out value="${contador.count}"/>.submit();">Hemograma</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'      value='hemograma' >
         <input type="hidden" name='accionpred'   value='pred' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
     <form name=formaImOrinaPx<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImOrinaPx<c:out value="${contador.count}"/>.submit();">Orinas</a></div>
         <input type="hidden" name='id_paciente'  value="<c:out value="${id_paciente}"/>"> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'      value='orinas'>
         <input type="hidden" name='accionpred'   value='pred'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>
     <form name=formaImQs<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImQs<c:out value="${contador.count}"/>.submit();">Quimica<br>Sanguinea </a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name='accionl'      value='qsangre'>
         <input type="hidden" name='accionpred'   value='pred'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>
     <form name=formaSero<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaSero<c:out value="${contador.count}"/>.submit();">Serologia </a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>'> 
         <input type="hidden" name='accionl'      value='serologia'>
         <input type="hidden" name='accionpred'   value='pred'>
	 <input type="hidden" name='sw'           value='1'>
       </td>
     </form>
     <form name=formaEmba<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaEmba<c:out value="${contador.count}"/>.submit();">Test de <br>Embarazo</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'      value='embarazo' >
         <input type="hidden" name='accionpred'   value='pred'>
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
     <form name=formaImOtrosP<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImOtrosP<c:out value="${contador.count}"/>.submit();">Otros</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'       value='otros' >
         <input type="hidden" name='accionpred'   value='pred' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
    <form name=formaImpEcos<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImpEcos<c:out value="${contador.count}"/>.submit();">Ecografia</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>         
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionl'       value='Ecos' >
         <input type="hidden" name='accionpred'   value='pred' >
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
     
    </tr>
   </table> 
  </center>
  -->