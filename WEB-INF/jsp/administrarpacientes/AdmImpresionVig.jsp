<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

 <div style="font-size:15pt" bgcolor="#F2F2F2"><center> Configurar Impresiones Vigencia</center></div>
 
 <center>
 <table class="table table-bordered table-hover table-condensed table-responsive">
    <tr style="font-size:12pt">
      <th style="font-size:12pt">Configurar<br>RIESGOS</th>
      <th style="font-size:12pt">Configurar<br>SIN DOCUMENTOS</th>
      <th style="font-size:12pt">Configurar<br>ACCIDENTES</th>
      <th style="font-size:12pt">Configurar<br>MORA</th>
    </tr>
    <tr>
    <form name=formaEimp<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <center><td>     
         <div><a class="btn btn-success" href="javascript:document.formaEimp<c:out value="${contador.count}"/>.submit();"> RIESGOS</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='Riesgos' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>  
     <form name=formaEimpP<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
      <center><td>     
         <div><a class="btn btn-success" href="javascript:document.formaEimpP<c:out value="${contador.count}"/>.submit();">SIN DOCUMENTOS</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='SinDocumen' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
      </form> <form name=formaGine<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <center><td>     
         <div><a class="btn btn-success" href="javascript:document.formaGine<c:out value="${contador.count}"/>.submit();"> ACCIDENTES</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='Accidente' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
     <form name=formaInf<c:out value="${contador.count}"/> method=post action='<c:url value="/ListarVigenciaAt.do"/>'>
       <center><td>     
         <div><a class="btn btn-success" href="javascript:document.formaInf<c:out value="${contador.count}"/>.submit();">MORA</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${id_paciente}"/> >
         <input type="hidden" name="accion" value='Mora' >
         <input type="hidden" name="sw1" value='1' >
       </td></center>
     </form>
    
    </tr>
  </center>
  
  
  
 <br>
<form name="adicionarempleado" method="POST">
<center>
 <table class="table table-bordered table-hover table-condensed table-responsive">
   <tr>
     <th colspan="8" style="font-size:14pt" bgcolor="#F2F2F2"><center> <c:out value="${tipod}"/></center></th>
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
  </tr> 
  
  <c:if test="${tipod == 'RIESGOS EXTRAORDINARIOS'}"> 
   <c:forEach var="listado" items="${datoriesgo}" varStatus="contador">
     <tr> 
          <td>Numeracion</td>                         
          <td><input type="text" name="nume_x" value="<fmt:formatNumber value="${listado.suma64}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_x,"9");'/></td>                         
          <td><input type="text" name="nume_y" value="<fmt:formatNumber value="${listado.suma65}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_y,"9");'/></td>
          <td><input type="text" name="nume_t" value="<fmt:formatNumber value="${listado.suma66}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nume_t,"9");'/></td>
     </tr>  
     <tr> 
          <td>Señores</td>                         
          <td><input type="text" name="senior_x" value="<fmt:formatNumber value="${listado.suma1}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_x,"9");'/></td>                         
          <td><input type="text" name="senior_y" value="<fmt:formatNumber value="${listado.suma2}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_y,"9");'/></td>
          <td><input type="text" name="senior_t" value="<fmt:formatNumber value="${listado.suma3}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(senior_t,"9");'/></td>
          
          <td>Fecha/Hora</td>       
          <td><input type="text" name="fecha_x" value="<fmt:formatNumber value="${listado.suma4}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_x,"9");'/></td>                         
          <td><input type="text" name="fecha_y" value="<fmt:formatNumber value="${listado.suma5}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_y,"9");'/></td>
          <td><input type="text" name="fecha_t" value="<fmt:formatNumber value="${listado.suma6}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fecha_t,"9");'/></td>
     </tr>  
     <tr> 
          <td>Nombres</td>                         
          <td><input type="text" name="nombres_x" value="<fmt:formatNumber value="${listado.suma7}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_x,"9");'/></td>                         
          <td><input type="text" name="nombres_y" value="<fmt:formatNumber value="${listado.suma8}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_y,"9");'/></td>
          <td><input type="text" name="nombres_t" value="<fmt:formatNumber value="${listado.suma9}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nombres_t,"9");'/></td>
          
          <td>Matricula</td>       
          <td><input type="text" name="matricula_x" value="<fmt:formatNumber value="${listado.suma10}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_x,"9");'/></td>                         
          <td><input type="text" name="matricula_y" value="<fmt:formatNumber value="${listado.suma11}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_y,"9");'/></td>
          <td><input type="text" name="matricula_t" value="<fmt:formatNumber value="${listado.suma12}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(matricula_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Beneficiario</td>                         
          <td><input type="text" name="benefic_x" value="<fmt:formatNumber value="${listado.suma13}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_x,"9");'/></td>                         
          <td><input type="text" name="benefic_y" value="<fmt:formatNumber value="${listado.suma14}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_y,"9");'/></td>
          <td><input type="text" name="benefic_t" value="<fmt:formatNumber value="${listado.suma15}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(benefic_t,"9");'/></td>
          
          <td>Codigo / Edad</td>       
          <td><input type="text" name="codigo_x" value="<fmt:formatNumber value="${listado.suma16}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_x,"9");'/></td>                         
          <td><input type="text" name="codigo_y" value="<fmt:formatNumber value="${listado.suma17}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_y,"9");'/></td>
          <td><input type="text" name="codigo_t" value="<fmt:formatNumber value="${listado.suma18}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(codigo_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Empresa</td>                         
          <td><input type="text" name="empresa_x" value="<fmt:formatNumber value="${listado.suma19}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_x,"9");'/></td>                         
          <td><input type="text" name="empresa_y" value="<fmt:formatNumber value="${listado.suma20}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_y,"9");'/></td>
          <td><input type="text" name="empresa_t" value="<fmt:formatNumber value="${listado.suma21}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(empresa_t,"9");'/></td>
          
          <td>Patronal</td>       
          <td><input type="text" name="patronal_x" value="<fmt:formatNumber value="${listado.suma22}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_x,"9");'/></td>                         
          <td><input type="text" name="patronal_y" value="<fmt:formatNumber value="${listado.suma23}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_y,"9");'/></td>
          <td><input type="text" name="patronal_t" value="<fmt:formatNumber value="${listado.suma24}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(patronal_t,"9");'/></td>
     </tr> 
     <tr> 
          <td>Adscrito Policlinico / Consultorio</td>                         
          <td><input type="text" name="poli_x" value="<fmt:formatNumber value="${listado.suma25}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_x,"9");'/></td>                         
          <td><input type="text" name="poli_y" value="<fmt:formatNumber value="${listado.suma26}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_y,"9");'/></td>
          <td><input type="text" name="poli_t" value="<fmt:formatNumber value="${listado.suma27}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(poli_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Clase de Riesgo</td>                         
          <td><input type="text" name="riesgo_x" value="<fmt:formatNumber value="${listado.suma28}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_x,"9");'/></td>                         
          <td><input type="text" name="riesgo_y" value="<fmt:formatNumber value="${listado.suma29}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_y,"9");'/></td>
          <td><input type="text" name="riesgo_t" value="<fmt:formatNumber value="${listado.suma30}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(riesgo_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona / Calle /Telefono</td>                         
          <td><input type="text" name="zona_x" value="<fmt:formatNumber value="${listado.suma31}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_x,"9");'/></td>                         
          <td><input type="text" name="zona_y" value="<fmt:formatNumber value="${listado.suma32}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_y,"9");'/></td>
          <td><input type="text" name="zona_t" value="<fmt:formatNumber value="${listado.suma33}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona_t,"9");'/></td>
     </tr>
     
     <tr> 
          <td>Yo</td>                         
          <td><input type="text" name="yo_x" value="<fmt:formatNumber value="${listado.suma34}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_x,"9");'/></td>                         
          <td><input type="text" name="yo_y" value="<fmt:formatNumber value="${listado.suma35}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_y,"9");'/></td>
          <td><input type="text" name="yo_t" value="<fmt:formatNumber value="${listado.suma36}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(yo_t,"9");'/></td>
          
          <td>C.I.</td>       
          <td><input type="text" name="ci_x" value="<fmt:formatNumber value="${listado.suma37}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_x,"9");'/></td>                         
          <td><input type="text" name="ci_y" value="<fmt:formatNumber value="${listado.suma38}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_y,"9");'/></td>
          <td><input type="text" name="ci_t" value="<fmt:formatNumber value="${listado.suma39}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(ci_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona</td>                         
          <td><input type="text" name="zona2_x" value="<fmt:formatNumber value="${listado.suma40}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_x,"9");'/></td>                         
          <td><input type="text" name="zona2_y" value="<fmt:formatNumber value="${listado.suma41}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_y,"9");'/></td>
          <td><input type="text" name="zona2_t" value="<fmt:formatNumber value="${listado.suma42}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona2_t,"9");'/></td>
          
          <td>Calle </td>       
          <td><input type="text" name="calleg_x" value="<fmt:formatNumber value="${listado.suma43}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_x,"9");'/></td>                         
          <td><input type="text" name="calleg_y" value="<fmt:formatNumber value="${listado.suma44}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_y,"9");'/></td>
          <td><input type="text" name="calleg_t" value="<fmt:formatNumber value="${listado.suma45}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(calleg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Nº domicilio / Telefono</td>                         
          <td><input type="text" name="telefg_x" value="<fmt:formatNumber value="${listado.suma46}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_x,"9");'/></td>                         
          <td><input type="text" name="telefg_y" value="<fmt:formatNumber value="${listado.suma47}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_y,"9");'/></td>
          <td><input type="text" name="telefg_t" value="<fmt:formatNumber value="${listado.suma48}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(telefg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Atendido en</td>                         
          <td><input type="text" name="atendido_x" value="<fmt:formatNumber value="${listado.suma49}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_x,"9");'/></td>                         
          <td><input type="text" name="atendido_y" value="<fmt:formatNumber value="${listado.suma50}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_y,"9");'/></td>
          <td><input type="text" name="atendido_t" value="<fmt:formatNumber value="${listado.suma51}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(atendido_t,"9");'/></td>
          
          <td>Trasferencia</td>       
          <td><input type="text" name="trasfer_x" value="<fmt:formatNumber value="${listado.suma52}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_x,"9");'/></td>                         
          <td><input type="text" name="trasfer_y" value="<fmt:formatNumber value="${listado.suma53}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_y,"9");'/></td>
          <td><input type="text" name="trasfer_t" value="<fmt:formatNumber value="${listado.suma54}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(trasfer_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Internado</td>                         
          <td><input type="text" name="internado_x" value="<fmt:formatNumber value="${listado.suma55}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_x,"9");'/></td>                         
          <td><input type="text" name="internado_y" value="<fmt:formatNumber value="${listado.suma56}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_y,"9");'/></td>
          <td><input type="text" name="internado_t" value="<fmt:formatNumber value="${listado.suma57}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(internado_t,"9");'/></td>
          
          <td>Piso / Cama / Sala</td>       
          <td><input type="text" name="picasa_x" value="<fmt:formatNumber value="${listado.suma58}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_x,"9");'/></td>                         
          <td><input type="text" name="picasa_y" value="<fmt:formatNumber value="${listado.suma59}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_y,"9");'/></td>
          <td><input type="text" name="picasa_t" value="<fmt:formatNumber value="${listado.suma60}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(picasa_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Fecha Documento</td>                         
          <td><input type="text" name="fechdoc_x" value="<fmt:formatNumber value="${listado.suma61}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_x,"9");'/></td>                         
          <td><input type="text" name="fechdoc_y" value="<fmt:formatNumber value="${listado.suma62}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_y,"9");'/></td>
          <td><input type="text" name="fechdoc_t" value="<fmt:formatNumber value="${listado.suma63}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fechdoc_t,"9");'/></td>
     </tr>
   </c:forEach>
  </c:if> 
  
    <c:if test="${tipod == 'EMPRESAS EN MORA'}"> 
   <c:forEach var="listado" items="${datoriesgo}" varStatus="contador">
     <tr> 
          <td>Numeracion</td>                         
          <td><input type="text" name="nume_x" value="<fmt:formatNumber value="${listado.suma64}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_x,"9");'/></td>                         
          <td><input type="text" name="nume_y" value="<fmt:formatNumber value="${listado.suma65}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_y,"9");'/></td>
          <td><input type="text" name="nume_t" value="<fmt:formatNumber value="${listado.suma66}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nume_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Señores</td>                         
          <td><input type="text" name="senior_x" value="<fmt:formatNumber value="${listado.suma1}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_x,"9");'/></td>                         
          <td><input type="text" name="senior_y" value="<fmt:formatNumber value="${listado.suma2}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_y,"9");'/></td>
          <td><input type="text" name="senior_t" value="<fmt:formatNumber value="${listado.suma3}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(senior_t,"9");'/></td>
          
          <td>Fecha/Hora</td>       
          <td><input type="text" name="fecha_x" value="<fmt:formatNumber value="${listado.suma4}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_x,"9");'/></td>                         
          <td><input type="text" name="fecha_y" value="<fmt:formatNumber value="${listado.suma5}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_y,"9");'/></td>
          <td><input type="text" name="fecha_t" value="<fmt:formatNumber value="${listado.suma6}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fecha_t,"9");'/></td>
     </tr>  
     <tr> 
          <td>Nombres</td>                         
          <td><input type="text" name="nombres_x" value="<fmt:formatNumber value="${listado.suma7}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_x,"9");'/></td>                         
          <td><input type="text" name="nombres_y" value="<fmt:formatNumber value="${listado.suma8}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_y,"9");'/></td>
          <td><input type="text" name="nombres_t" value="<fmt:formatNumber value="${listado.suma9}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nombres_t,"9");'/></td>
          
          <td>Matricula</td>       
          <td><input type="text" name="matricula_x" value="<fmt:formatNumber value="${listado.suma10}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_x,"9");'/></td>                         
          <td><input type="text" name="matricula_y" value="<fmt:formatNumber value="${listado.suma11}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_y,"9");'/></td>
          <td><input type="text" name="matricula_t" value="<fmt:formatNumber value="${listado.suma12}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(matricula_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Beneficiario</td>                         
          <td><input type="text" name="benefic_x" value="<fmt:formatNumber value="${listado.suma13}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_x,"9");'/></td>                         
          <td><input type="text" name="benefic_y" value="<fmt:formatNumber value="${listado.suma14}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_y,"9");'/></td>
          <td><input type="text" name="benefic_t" value="<fmt:formatNumber value="${listado.suma15}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(benefic_t,"9");'/></td>
          
          <td>Codigo / Edad</td>       
          <td><input type="text" name="codigo_x" value="<fmt:formatNumber value="${listado.suma16}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_x,"9");'/></td>                         
          <td><input type="text" name="codigo_y" value="<fmt:formatNumber value="${listado.suma17}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_y,"9");'/></td>
          <td><input type="text" name="codigo_t" value="<fmt:formatNumber value="${listado.suma18}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(codigo_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Empresa</td>                         
          <td><input type="text" name="empresa_x" value="<fmt:formatNumber value="${listado.suma19}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_x,"9");'/></td>                         
          <td><input type="text" name="empresa_y" value="<fmt:formatNumber value="${listado.suma20}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_y,"9");'/></td>
          <td><input type="text" name="empresa_t" value="<fmt:formatNumber value="${listado.suma21}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(empresa_t,"9");'/></td>
          
          <td>Patronal</td>       
          <td><input type="text" name="patronal_x" value="<fmt:formatNumber value="${listado.suma22}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_x,"9");'/></td>                         
          <td><input type="text" name="patronal_y" value="<fmt:formatNumber value="${listado.suma23}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_y,"9");'/></td>
          <td><input type="text" name="patronal_t" value="<fmt:formatNumber value="${listado.suma24}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(patronal_t,"9");'/></td>
     </tr> 
     <tr> 
          <td>Adscrito Policlinico / Consultorio</td>                         
          <td><input type="text" name="poli_x" value="<fmt:formatNumber value="${listado.suma25}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_x,"9");'/></td>                         
          <td><input type="text" name="poli_y" value="<fmt:formatNumber value="${listado.suma26}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_y,"9");'/></td>
          <td><input type="text" name="poli_t" value="<fmt:formatNumber value="${listado.suma27}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(poli_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Clase de Riesgo</td>                         
          <td><input type="text" name="riesgo_x" value="<fmt:formatNumber value="${listado.suma28}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_x,"9");'/></td>                         
          <td><input type="text" name="riesgo_y" value="<fmt:formatNumber value="${listado.suma29}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_y,"9");'/></td>
          <td><input type="text" name="riesgo_t" value="<fmt:formatNumber value="${listado.suma30}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(riesgo_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona / Calle /Telefono</td>                         
          <td><input type="text" name="zona_x" value="<fmt:formatNumber value="${listado.suma31}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_x,"9");'/></td>                         
          <td><input type="text" name="zona_y" value="<fmt:formatNumber value="${listado.suma32}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_y,"9");'/></td>
          <td><input type="text" name="zona_t" value="<fmt:formatNumber value="${listado.suma33}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona_t,"9");'/></td>
     </tr>
     
     <tr> 
          <td>Yo</td>                         
          <td><input type="text" name="yo_x" value="<fmt:formatNumber value="${listado.suma34}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_x,"9");'/></td>                         
          <td><input type="text" name="yo_y" value="<fmt:formatNumber value="${listado.suma35}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_y,"9");'/></td>
          <td><input type="text" name="yo_t" value="<fmt:formatNumber value="${listado.suma36}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(yo_t,"9");'/></td>
          
          <td>C.I.</td>       
          <td><input type="text" name="ci_x" value="<fmt:formatNumber value="${listado.suma37}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_x,"9");'/></td>                         
          <td><input type="text" name="ci_y" value="<fmt:formatNumber value="${listado.suma38}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_y,"9");'/></td>
          <td><input type="text" name="ci_t" value="<fmt:formatNumber value="${listado.suma39}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(ci_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona</td>                         
          <td><input type="text" name="zona2_x" value="<fmt:formatNumber value="${listado.suma40}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_x,"9");'/></td>                         
          <td><input type="text" name="zona2_y" value="<fmt:formatNumber value="${listado.suma41}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_y,"9");'/></td>
          <td><input type="text" name="zona2_t" value="<fmt:formatNumber value="${listado.suma42}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona2_t,"9");'/></td>
          
          <td>Calle </td>       
          <td><input type="text" name="calleg_x" value="<fmt:formatNumber value="${listado.suma43}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_x,"9");'/></td>                         
          <td><input type="text" name="calleg_y" value="<fmt:formatNumber value="${listado.suma44}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_y,"9");'/></td>
          <td><input type="text" name="calleg_t" value="<fmt:formatNumber value="${listado.suma45}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(calleg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Nº domicilio / Telefono</td>                         
          <td><input type="text" name="telefg_x" value="<fmt:formatNumber value="${listado.suma46}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_x,"9");'/></td>                         
          <td><input type="text" name="telefg_y" value="<fmt:formatNumber value="${listado.suma47}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_y,"9");'/></td>
          <td><input type="text" name="telefg_t" value="<fmt:formatNumber value="${listado.suma48}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(telefg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Atendido en</td>                         
          <td><input type="text" name="atendido_x" value="<fmt:formatNumber value="${listado.suma49}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_x,"9");'/></td>                         
          <td><input type="text" name="atendido_y" value="<fmt:formatNumber value="${listado.suma50}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_y,"9");'/></td>
          <td><input type="text" name="atendido_t" value="<fmt:formatNumber value="${listado.suma51}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(atendido_t,"9");'/></td>
          
          <td>Trasferencia</td>       
          <td><input type="text" name="trasfer_x" value="<fmt:formatNumber value="${listado.suma52}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_x,"9");'/></td>                         
          <td><input type="text" name="trasfer_y" value="<fmt:formatNumber value="${listado.suma53}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_y,"9");'/></td>
          <td><input type="text" name="trasfer_t" value="<fmt:formatNumber value="${listado.suma54}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(trasfer_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Internado</td>                         
          <td><input type="text" name="internado_x" value="<fmt:formatNumber value="${listado.suma55}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_x,"9");'/></td>                         
          <td><input type="text" name="internado_y" value="<fmt:formatNumber value="${listado.suma56}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_y,"9");'/></td>
          <td><input type="text" name="internado_t" value="<fmt:formatNumber value="${listado.suma57}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(internado_t,"9");'/></td>
          
          <td>Piso / Cama / Sala</td>       
          <td><input type="text" name="picasa_x" value="<fmt:formatNumber value="${listado.suma58}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_x,"9");'/></td>                         
          <td><input type="text" name="picasa_y" value="<fmt:formatNumber value="${listado.suma59}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_y,"9");'/></td>
          <td><input type="text" name="picasa_t" value="<fmt:formatNumber value="${listado.suma60}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(picasa_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Fecha Documento</td>                         
          <td><input type="text" name="fechdoc_x" value="<fmt:formatNumber value="${listado.suma61}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_x,"9");'/></td>                         
          <td><input type="text" name="fechdoc_y" value="<fmt:formatNumber value="${listado.suma62}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_y,"9");'/></td>
          <td><input type="text" name="fechdoc_t" value="<fmt:formatNumber value="${listado.suma63}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fechdoc_t,"9");'/></td>
     </tr>
   </c:forEach>
  </c:if>
  
    <c:if test="${tipod == 'ACCIDENTES DE TRABAJO'}"> 
   <c:forEach var="listado" items="${datoriesgo}" varStatus="contador">
       <tr> 
          <td>Numeracion</td>                         
          <td><input type="text" name="nume_x" value="<fmt:formatNumber value="${listado.suma64}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_x,"9");'/></td>                         
          <td><input type="text" name="nume_y" value="<fmt:formatNumber value="${listado.suma65}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_y,"9");'/></td>
          <td><input type="text" name="nume_t" value="<fmt:formatNumber value="${listado.suma66}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nume_t,"9");'/></td>
     </tr> 
     <tr> 
          <td>Señores</td>                         
          <td><input type="text" name="senior_x" value="<fmt:formatNumber value="${listado.suma1}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_x,"9");'/></td>                         
          <td><input type="text" name="senior_y" value="<fmt:formatNumber value="${listado.suma2}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_y,"9");'/></td>
          <td><input type="text" name="senior_t" value="<fmt:formatNumber value="${listado.suma3}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(senior_t,"9");'/></td>
          
          <td>Fecha/Hora</td>       
          <td><input type="text" name="fecha_x" value="<fmt:formatNumber value="${listado.suma4}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_x,"9");'/></td>                         
          <td><input type="text" name="fecha_y" value="<fmt:formatNumber value="${listado.suma5}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_y,"9");'/></td>
          <td><input type="text" name="fecha_t" value="<fmt:formatNumber value="${listado.suma6}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fecha_t,"9");'/></td>
     </tr>  
     <tr> 
          <td>Nombres</td>                         
          <td><input type="text" name="nombres_x" value="<fmt:formatNumber value="${listado.suma7}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_x,"9");'/></td>                         
          <td><input type="text" name="nombres_y" value="<fmt:formatNumber value="${listado.suma8}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_y,"9");'/></td>
          <td><input type="text" name="nombres_t" value="<fmt:formatNumber value="${listado.suma9}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nombres_t,"9");'/></td>
          
          <td>Matricula</td>       
          <td><input type="text" name="matricula_x" value="<fmt:formatNumber value="${listado.suma10}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_x,"9");'/></td>                         
          <td><input type="text" name="matricula_y" value="<fmt:formatNumber value="${listado.suma11}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_y,"9");'/></td>
          <td><input type="text" name="matricula_t" value="<fmt:formatNumber value="${listado.suma12}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(matricula_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Beneficiario</td>                         
          <td><input type="text" name="benefic_x" value="<fmt:formatNumber value="${listado.suma13}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_x,"9");'/></td>                         
          <td><input type="text" name="benefic_y" value="<fmt:formatNumber value="${listado.suma14}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_y,"9");'/></td>
          <td><input type="text" name="benefic_t" value="<fmt:formatNumber value="${listado.suma15}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(benefic_t,"9");'/></td>
          
          <td>Codigo / Edad</td>       
          <td><input type="text" name="codigo_x" value="<fmt:formatNumber value="${listado.suma16}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_x,"9");'/></td>                         
          <td><input type="text" name="codigo_y" value="<fmt:formatNumber value="${listado.suma17}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_y,"9");'/></td>
          <td><input type="text" name="codigo_t" value="<fmt:formatNumber value="${listado.suma18}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(codigo_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Empresa</td>                         
          <td><input type="text" name="empresa_x" value="<fmt:formatNumber value="${listado.suma19}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_x,"9");'/></td>                         
          <td><input type="text" name="empresa_y" value="<fmt:formatNumber value="${listado.suma20}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_y,"9");'/></td>
          <td><input type="text" name="empresa_t" value="<fmt:formatNumber value="${listado.suma21}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(empresa_t,"9");'/></td>
          
          <td>Patronal</td>       
          <td><input type="text" name="patronal_x" value="<fmt:formatNumber value="${listado.suma22}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_x,"9");'/></td>                         
          <td><input type="text" name="patronal_y" value="<fmt:formatNumber value="${listado.suma23}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_y,"9");'/></td>
          <td><input type="text" name="patronal_t" value="<fmt:formatNumber value="${listado.suma24}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(patronal_t,"9");'/></td>
     </tr> 
     <tr> 
          <td>Adscrito Policlinico / Consultorio</td>                         
          <td><input type="text" name="poli_x" value="<fmt:formatNumber value="${listado.suma25}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_x,"9");'/></td>                         
          <td><input type="text" name="poli_y" value="<fmt:formatNumber value="${listado.suma26}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_y,"9");'/></td>
          <td><input type="text" name="poli_t" value="<fmt:formatNumber value="${listado.suma27}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(poli_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Clase de Riesgo</td>                         
          <td><input type="text" name="riesgo_x" value="<fmt:formatNumber value="${listado.suma28}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_x,"9");'/></td>                         
          <td><input type="text" name="riesgo_y" value="<fmt:formatNumber value="${listado.suma29}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_y,"9");'/></td>
          <td><input type="text" name="riesgo_t" value="<fmt:formatNumber value="${listado.suma30}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(riesgo_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona / Calle /Telefono</td>                         
          <td><input type="text" name="zona_x" value="<fmt:formatNumber value="${listado.suma31}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_x,"9");'/></td>                         
          <td><input type="text" name="zona_y" value="<fmt:formatNumber value="${listado.suma32}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_y,"9");'/></td>
          <td><input type="text" name="zona_t" value="<fmt:formatNumber value="${listado.suma33}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Yo</td>                         
          <td><input type="text" name="yo_x" value="<fmt:formatNumber value="${listado.suma34}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_x,"9");'/></td>                         
          <td><input type="text" name="yo_y" value="<fmt:formatNumber value="${listado.suma35}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_y,"9");'/></td>
          <td><input type="text" name="yo_t" value="<fmt:formatNumber value="${listado.suma36}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(yo_t,"9");'/></td>
          
          <td>C.I.</td>       
          <td><input type="text" name="ci_x" value="<fmt:formatNumber value="${listado.suma37}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_x,"9");'/></td>                         
          <td><input type="text" name="ci_y" value="<fmt:formatNumber value="${listado.suma38}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_y,"9");'/></td>
          <td><input type="text" name="ci_t" value="<fmt:formatNumber value="${listado.suma39}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(ci_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona</td>                         
          <td><input type="text" name="zona2_x" value="<fmt:formatNumber value="${listado.suma40}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_x,"9");'/></td>                         
          <td><input type="text" name="zona2_y" value="<fmt:formatNumber value="${listado.suma41}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_y,"9");'/></td>
          <td><input type="text" name="zona2_t" value="<fmt:formatNumber value="${listado.suma42}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona2_t,"9");'/></td>
          
          <td>Calle </td>       
          <td><input type="text" name="calleg_x" value="<fmt:formatNumber value="${listado.suma43}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_x,"9");'/></td>                         
          <td><input type="text" name="calleg_y" value="<fmt:formatNumber value="${listado.suma44}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_y,"9");'/></td>
          <td><input type="text" name="calleg_t" value="<fmt:formatNumber value="${listado.suma45}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(calleg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Nº domicilio / Telefono</td>                         
          <td><input type="text" name="telefg_x" value="<fmt:formatNumber value="${listado.suma46}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_x,"9");'/></td>                         
          <td><input type="text" name="telefg_y" value="<fmt:formatNumber value="${listado.suma47}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_y,"9");'/></td>
          <td><input type="text" name="telefg_t" value="<fmt:formatNumber value="${listado.suma48}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(telefg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Atendido en</td>                         
          <td><input type="text" name="atendido_x" value="<fmt:formatNumber value="${listado.suma49}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_x,"9");'/></td>                         
          <td><input type="text" name="atendido_y" value="<fmt:formatNumber value="${listado.suma50}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_y,"9");'/></td>
          <td><input type="text" name="atendido_t" value="<fmt:formatNumber value="${listado.suma51}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(atendido_t,"9");'/></td>
          
          <td>Trasferencia</td>       
          <td><input type="text" name="trasfer_x" value="<fmt:formatNumber value="${listado.suma52}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_x,"9");'/></td>                         
          <td><input type="text" name="trasfer_y" value="<fmt:formatNumber value="${listado.suma53}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_y,"9");'/></td>
          <td><input type="text" name="trasfer_t" value="<fmt:formatNumber value="${listado.suma54}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(trasfer_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Internado</td>                         
          <td><input type="text" name="internado_x" value="<fmt:formatNumber value="${listado.suma55}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_x,"9");'/></td>                         
          <td><input type="text" name="internado_y" value="<fmt:formatNumber value="${listado.suma56}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_y,"9");'/></td>
          <td><input type="text" name="internado_t" value="<fmt:formatNumber value="${listado.suma57}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(internado_t,"9");'/></td>
          
          <td>Piso / Cama / Sala</td>       
          <td><input type="text" name="picasa_x" value="<fmt:formatNumber value="${listado.suma58}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_x,"9");'/></td>                         
          <td><input type="text" name="picasa_y" value="<fmt:formatNumber value="${listado.suma59}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_y,"9");'/></td>
          <td><input type="text" name="picasa_t" value="<fmt:formatNumber value="${listado.suma60}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(picasa_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Fecha Documento</td>                         
          <td><input type="text" name="fechdoc_x" value="<fmt:formatNumber value="${listado.suma61}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_x,"9");'/></td>                         
          <td><input type="text" name="fechdoc_y" value="<fmt:formatNumber value="${listado.suma62}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_y,"9");'/></td>
          <td><input type="text" name="fechdoc_t" value="<fmt:formatNumber value="${listado.suma63}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fechdoc_t,"9");'/></td>
     </tr>
   </c:forEach>
  </c:if>
  
    <c:if test="${tipod == 'PACIENTES SIN DOCUMENTOS'}"> 
   <c:forEach var="listado" items="${datoriesgo}" varStatus="contador">
       <tr> 
          <td>Numeracion</td>                         
          <td><input type="text" name="nume_x" value="<fmt:formatNumber value="${listado.suma64}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_x,"9");'/></td>                         
          <td><input type="text" name="nume_y" value="<fmt:formatNumber value="${listado.suma65}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nume_y,"9");'/></td>
          <td><input type="text" name="nume_t" value="<fmt:formatNumber value="${listado.suma66}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nume_t,"9");'/></td>
      </tr> 
      <tr> 
          <td>Señores</td>                         
          <td><input type="text" name="senior_x" value="<fmt:formatNumber value="${listado.suma1}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_x,"9");'/></td>                         
          <td><input type="text" name="senior_y" value="<fmt:formatNumber value="${listado.suma2}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(senior_y,"9");'/></td>
          <td><input type="text" name="senior_t" value="<fmt:formatNumber value="${listado.suma3}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(senior_t,"9");'/></td>
          
          <td>Fecha/Hora</td>       
          <td><input type="text" name="fecha_x" value="<fmt:formatNumber value="${listado.suma4}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_x,"9");'/></td>                         
          <td><input type="text" name="fecha_y" value="<fmt:formatNumber value="${listado.suma5}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fecha_y,"9");'/></td>
          <td><input type="text" name="fecha_t" value="<fmt:formatNumber value="${listado.suma6}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fecha_t,"9");'/></td>
     </tr>  
     <tr> 
          <td>Nombres</td>                         
          <td><input type="text" name="nombres_x" value="<fmt:formatNumber value="${listado.suma7}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_x,"9");'/></td>                         
          <td><input type="text" name="nombres_y" value="<fmt:formatNumber value="${listado.suma8}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(nombres_y,"9");'/></td>
          <td><input type="text" name="nombres_t" value="<fmt:formatNumber value="${listado.suma9}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(nombres_t,"9");'/></td>
          
          <td>Matricula</td>       
          <td><input type="text" name="matricula_x" value="<fmt:formatNumber value="${listado.suma10}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_x,"9");'/></td>                         
          <td><input type="text" name="matricula_y" value="<fmt:formatNumber value="${listado.suma11}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(matricula_y,"9");'/></td>
          <td><input type="text" name="matricula_t" value="<fmt:formatNumber value="${listado.suma12}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(matricula_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Beneficiario</td>                         
          <td><input type="text" name="benefic_x" value="<fmt:formatNumber value="${listado.suma13}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_x,"9");'/></td>                         
          <td><input type="text" name="benefic_y" value="<fmt:formatNumber value="${listado.suma14}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(benefic_y,"9");'/></td>
          <td><input type="text" name="benefic_t" value="<fmt:formatNumber value="${listado.suma15}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(benefic_t,"9");'/></td>
          
          <td>Codigo / Edad</td>       
          <td><input type="text" name="codigo_x" value="<fmt:formatNumber value="${listado.suma16}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_x,"9");'/></td>                         
          <td><input type="text" name="codigo_y" value="<fmt:formatNumber value="${listado.suma17}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(codigo_y,"9");'/></td>
          <td><input type="text" name="codigo_t" value="<fmt:formatNumber value="${listado.suma18}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(codigo_t,"9");'/></td>
     </tr>   
     <tr> 
          <td>Empresa</td>                         
          <td><input type="text" name="empresa_x" value="<fmt:formatNumber value="${listado.suma19}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_x,"9");'/></td>                         
          <td><input type="text" name="empresa_y" value="<fmt:formatNumber value="${listado.suma20}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(empresa_y,"9");'/></td>
          <td><input type="text" name="empresa_t" value="<fmt:formatNumber value="${listado.suma21}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(empresa_t,"9");'/></td>
          
          <td>Patronal</td>       
          <td><input type="text" name="patronal_x" value="<fmt:formatNumber value="${listado.suma22}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_x,"9");'/></td>                         
          <td><input type="text" name="patronal_y" value="<fmt:formatNumber value="${listado.suma23}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(patronal_y,"9");'/></td>
          <td><input type="text" name="patronal_t" value="<fmt:formatNumber value="${listado.suma24}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(patronal_t,"9");'/></td>
     </tr> 
     <tr> 
          <td>Adscrito Policlinico / Consultorio</td>                         
          <td><input type="text" name="poli_x" value="<fmt:formatNumber value="${listado.suma25}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_x,"9");'/></td>                         
          <td><input type="text" name="poli_y" value="<fmt:formatNumber value="${listado.suma26}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(poli_y,"9");'/></td>
          <td><input type="text" name="poli_t" value="<fmt:formatNumber value="${listado.suma27}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(poli_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Clase de Riesgo</td>                         
          <td><input type="text" name="riesgo_x" value="<fmt:formatNumber value="${listado.suma28}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_x,"9");'/></td>                         
          <td><input type="text" name="riesgo_y" value="<fmt:formatNumber value="${listado.suma29}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(riesgo_y,"9");'/></td>
          <td><input type="text" name="riesgo_t" value="<fmt:formatNumber value="${listado.suma30}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(riesgo_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona / Calle /Telefono</td>                         
          <td><input type="text" name="zona_x" value="<fmt:formatNumber value="${listado.suma31}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_x,"9");'/></td>                         
          <td><input type="text" name="zona_y" value="<fmt:formatNumber value="${listado.suma32}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona_y,"9");'/></td>
          <td><input type="text" name="zona_t" value="<fmt:formatNumber value="${listado.suma33}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona_t,"9");'/></td>
     </tr>
     
     <tr> 
          <td>Yo</td>                         
          <td><input type="text" name="yo_x" value="<fmt:formatNumber value="${listado.suma34}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_x,"9");'/></td>                         
          <td><input type="text" name="yo_y" value="<fmt:formatNumber value="${listado.suma35}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(yo_y,"9");'/></td>
          <td><input type="text" name="yo_t" value="<fmt:formatNumber value="${listado.suma36}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(yo_t,"9");'/></td>
          
          <td>C.I.</td>       
          <td><input type="text" name="ci_x" value="<fmt:formatNumber value="${listado.suma37}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_x,"9");'/></td>                         
          <td><input type="text" name="ci_y" value="<fmt:formatNumber value="${listado.suma38}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(ci_y,"9");'/></td>
          <td><input type="text" name="ci_t" value="<fmt:formatNumber value="${listado.suma39}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(ci_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Zona</td>                         
          <td><input type="text" name="zona2_x" value="<fmt:formatNumber value="${listado.suma40}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_x,"9");'/></td>                         
          <td><input type="text" name="zona2_y" value="<fmt:formatNumber value="${listado.suma41}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(zona2_y,"9");'/></td>
          <td><input type="text" name="zona2_t" value="<fmt:formatNumber value="${listado.suma42}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(zona2_t,"9");'/></td>
          
          <td>Calle </td>       
          <td><input type="text" name="calleg_x" value="<fmt:formatNumber value="${listado.suma43}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_x,"9");'/></td>                         
          <td><input type="text" name="calleg_y" value="<fmt:formatNumber value="${listado.suma44}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(calleg_y,"9");'/></td>
          <td><input type="text" name="calleg_t" value="<fmt:formatNumber value="${listado.suma45}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(calleg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Nº domicilio / Telefono</td>                         
          <td><input type="text" name="telefg_x" value="<fmt:formatNumber value="${listado.suma46}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_x,"9");'/></td>                         
          <td><input type="text" name="telefg_y" value="<fmt:formatNumber value="${listado.suma47}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(telefg_y,"9");'/></td>
          <td><input type="text" name="telefg_t" value="<fmt:formatNumber value="${listado.suma48}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(telefg_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Atendido en</td>                         
          <td><input type="text" name="atendido_x" value="<fmt:formatNumber value="${listado.suma49}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_x,"9");'/></td>                         
          <td><input type="text" name="atendido_y" value="<fmt:formatNumber value="${listado.suma50}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(atendido_y,"9");'/></td>
          <td><input type="text" name="atendido_t" value="<fmt:formatNumber value="${listado.suma51}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(atendido_t,"9");'/></td>
          
          <td>Trasferencia</td>       
          <td><input type="text" name="trasfer_x" value="<fmt:formatNumber value="${listado.suma52}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_x,"9");'/></td>                         
          <td><input type="text" name="trasfer_y" value="<fmt:formatNumber value="${listado.suma53}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(trasfer_y,"9");'/></td>
          <td><input type="text" name="trasfer_t" value="<fmt:formatNumber value="${listado.suma54}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(trasfer_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Internado</td>                         
          <td><input type="text" name="internado_x" value="<fmt:formatNumber value="${listado.suma55}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_x,"9");'/></td>                         
          <td><input type="text" name="internado_y" value="<fmt:formatNumber value="${listado.suma56}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(internado_y,"9");'/></td>
          <td><input type="text" name="internado_t" value="<fmt:formatNumber value="${listado.suma57}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(internado_t,"9");'/></td>
          
          <td>Piso / Cama / Sala</td>       
          <td><input type="text" name="picasa_x" value="<fmt:formatNumber value="${listado.suma58}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_x,"9");'/></td>                         
          <td><input type="text" name="picasa_y" value="<fmt:formatNumber value="${listado.suma59}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(picasa_y,"9");'/></td>
          <td><input type="text" name="picasa_t" value="<fmt:formatNumber value="${listado.suma60}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(picasa_t,"9");'/></td>
     </tr>
     <tr> 
          <td>Fecha Documento</td>                         
          <td><input type="text" name="fechdoc_x" value="<fmt:formatNumber value="${listado.suma61}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_x,"9");'/></td>                         
          <td><input type="text" name="fechdoc_y" value="<fmt:formatNumber value="${listado.suma62}" pattern="#.00" maxFractionDigits="0"/>" maxlength=3 size=3 onblur='validar(fechdoc_y,"9");'/></td>
          <td><input type="text" name="fechdoc_t" value="<fmt:formatNumber value="${listado.suma63}" pattern="#.00" maxFractionDigits="0"/>" maxlength=2 size=2 onblur='validar(fechdoc_t,"9");'/></td>
     </tr>
   </c:forEach>
  </c:if>
  
  
 </table>
</center> 
<center>
  <input type="submit" class="btn btn-primary" value='Grabar' onclick="document.adicionarempleado.accion1.value='Guardar';
                                                                      document.adicionarempleado.action='<c:url value="/ListarVigenciaAt.do"/>';"></td>
  <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'> 
  <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'> 
  <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'> 
  <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'> 
  <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>         
  <input type="hidden" name='tipoimpresion'   value='<c:out value="${tipoimpresion}"/>' >
  <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >
  <input type="hidden" name='boton'           value='Guardar'>
 </center>  
</form>
