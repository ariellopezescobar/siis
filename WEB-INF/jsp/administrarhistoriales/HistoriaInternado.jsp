<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="../compruebaFormulario.js"></script>

<script language="javascript" type="text/javascript" src="./tiny_mce/tiny_mce.js"></script>
<script language="javascript" type="text/javascript">
  tinyMCE.init({
    mode : "textareas",
    theme: "simple",
    plugins : "style,layer,table,save,advhr,advimage,advlink,insertdatetime,preview,searchreplace,contextmenu,paste,directionality,fullscreen,noneditable",
    theme_advanced_buttons1_add_before : "newdocument,separator",
    theme_advanced_buttons1_add : "fontselect,fontsizeselect",
    theme_advanced_buttons2_add : "separator,insertdate,inserttime,preview,separator,forecolor,backcolor",
    theme_advanced_buttons2_add_before: "cut,copy,paste,pastetext,pasteword,separator,search,replace,separator",
    theme_advanced_buttons3_add_before : "tablecontrols,separator",
    theme_advanced_buttons3_add : "iespell,advhr,separator,ltr,rtl,separator,fullscreen",
    theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    theme_advanced_path_location : "bottom",
    content_css : "example_full.css",
    plugin_insertdate_dateFormat : "%d-%m-%Y",
    plugin_insertdate_timeFormat : "%H:%M:%S",
    extended_valid_elements : "hr[class|width|size|noshade],span[class|align|style]",
    external_link_list_url : "example_link_list.js",
    external_image_list_url : "example_image_list.js",
    flash_external_list_url : "example_flash_list.js",
    file_browser_callback : "fileBrowserCallBack",
    theme_advanced_resize_horizontal : false,
    theme_advanced_resizing : true
  });
  function fileBrowserCallBack(field_name, url, type, win) {
    // This is where you insert your custom filebrowser logic
    alert("Example of filebrowser callback: field_name: " + field_name + ", url: " + url + ", type: " + type);
    // Insert new URL, this would normaly be done in a popup
    win.document.forms[0].elements[field_name].value = "someurl.htm";
  }
</script>

<center>   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
   <tr>
    <th colspan="3"><center>DATOS PACIENTE INTERNADO</center></th>
  </tr>
  <tr>
    <td colspan="2" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr style="font-size:10pt">    
        <td bgcolor="#F2F2F2">Nombres :: <c:out value = "${datos.nombres}"/></td>    
        <td bgcolor="#EAEAE6">HCL :: <c:out value = "${datos.hcl}"/></td>
        <td bgcolor="#F2F2F2">Matricula :: <c:out value = "${datos.nro_registro}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Fecha de nac. :: <c:out value = "${fec_nacimiento}"/> </td>    
        <td bgcolor="#EAEAE6">Edad :: <c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</td>
        <td bgcolor="#F2F2F2">Patronal :: <c:out value = "${datos.registro}"/></td>    
      </tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Direccion :: <c:out value = "${datos.direccion}"/></td>    
        <td bgcolor="#EAEAE6">Ocupacion :: <c:out value = "${datos.ocupacion}"/></td>
        <td bgcolor="#F2F2F2">Empresa :: <c:out value="${fn:substring(datos.cadena1,0,20)}"/></td>
      </tr>  
   </table>
    </td>
  </tr>
  
  <form name="adicionar" method="POST" action='<c:url value="/InternarPaciente.do"/>' >
      
   <tr>
   <c:if test="${editar == 'editar'}"> 
         <tr>
            <td>Fecha Atencion<font color='red'>(*)</font> </td>    
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
          </td>
      </tr>
      </c:if>
    </tr>
    <tr> 
    <td width="15%" valign="top">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr style="font-size:9pt">
        <td> Talla{cm} </td>
        <td><input type="text" name="talla" size="6" maxlength=10 value="<c:out value="${datoshisto.talla}"/>" onblur='validar(talla1,"9")' placeholder="167.5"/></td>                      
     </tr>  
     <tr style="font-size:9pt">    
        <td>Peso{Kg} </td>	
        <td><input type="text" name="peso" size="6" maxlength=10 value="<c:out value="${datoshisto.peso}"/>"  onblur='validar(peso1,"9")' placeholder="60.5"/></td>                      
     </tr>
     <tr style="font-size:9pt">
        <td> Temp.{ºC} </td>
        <td><input type="text" name="temperatura" size="6" maxlength="10" value="<c:out value="${datoshisto.temperatura}"/>" placeholder="36.5"/></td>
     </tr>  
     <tr style="font-size:9pt">
        <td> FC{lpm} </td>
        <td><input type="text" name="fc" size="6" maxlength="10" value="<c:out value="${datoshisto.fc}"/>" placeholder="80"/></td>
     </tr>  
     <tr style="font-size:9pt">
        <td> PA{mmHg} </td>
        <td><input type="text" name="pa" size="6" maxlength="10" value="<c:out value="${datoshisto.pa}"/>" placeholder="90/60"/></td>
     </tr>  
     <tr style="font-size:9pt">
        <td> FR{cpm} </td>
        <td><input type="text" name="fr" size="6" maxlength="10" value="<c:out value="${datoshisto.fr}"/>" placeholder="20"/></td>
     </tr> 
     <tr style="font-size:9pt">
        <td> SO2 </td>
        <td><input type="text" name="so2" size="6" maxlength="6" value="<c:out value = "${datoshisto.so2}"/>" onblur='validar(fc,"9")'></td>
     </tr> 
     <tr style="font-size:9pt">
        <td> Glicemia </td>
        <td><input type="text" name="glicemia" size="6" maxlength="6" value="<c:out value = "${datoshisto.glicemia}"/>" onblur='validar(fc,"9")'></td>
     </tr> 
     </table>
  </td>   
  <td width="85%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">

     <tr>
        <td align="center"><c:out value="${datoshisto.id_historia}"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EVOLUCION / DIAGNOSTICO PACIENTE INTERNADO</font> </td>
     </tr>   
     <c:if test="${editar != 'editar'}"> 
         <tr><td><textarea name="diagnostico" rows="8" cols="220" style="width: 100%" placeholder="Escriba la evolucion del paciente o las acciones realizadas......"><c:out value = "${datoshisto.diagnostico}" escapeXml="False"/></textarea></td>
     </c:if>
     <c:if test="${editar == 'editar'}"> 
         <tr><td><textarea name="diagnostico" rows="10" cols="220" style="width: 100%" placeholder="Escriba la evolucion del paciente o las acciones realizadas......"><c:out value = "${datoshisto.diagnostico}" escapeXml="False"/></textarea></td>
     </c:if>
     </tr> 
     
    </table>
     </tr> 
     
      <tr ><td colspan="2">
        <c:if test="${editar != 'editar'}"> 
          <input align="right" type="submit" name='accion' class="btn btn-success" value='Historial' >
          <input align="right" type="submit" name='accion' class="btn btn-warning" value='Laboratorio'>
          <input align="right" type="submit" name='accion' class="btn btn-info" value='Repetir Ultimos Datos'>
          <input align="right" type="submit" name='accion' class="btn btn-primary" value='Grabar Evolucion Internado' onclick="compruebaZFormulario(this.form)">  
        </c:if>
        <c:if test="${editar == 'editar'}"> 
          <input align="right" type="submit" name='accion' class="btn btn-primary" value='GrabarModificacion' >
        </c:if>
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='id_historia'     value='<c:out value="${id_historia}"/>'>
        <input type="hidden" name='talla'           value='<c:out value="${talla}"/>'>
        <input type="hidden" name='peso'            value='<c:out value="${peso}"/>'>
        <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
        <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
        <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
        <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>
        <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >         
        <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>
        <input type="hidden" name='sw'              value='subjetivo'>
      </td></tr>
      
   </form>  
   
     </table>
     </td>
   </tr> 

</table>
</center>


<c:if test="${editar != 'editar'}">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt">
    <th> NRO </th>
    <th> FECHA </th>
    <th> INTERNADO POR </th>
    <th> SUBJETIVO </th>        
    <th> OBJETIVO </th>        
    <th> DIAGNOSTICO </th>   
    <th> PLAN ACCION </th>         
    </tr>  
   <c:forEach var="lista" items="${milistaI}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy'/><br><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></td>
       <td>edad:<c:out value="${datos.edad}"/><br>talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br><c:out value="${lista.nombres}"/><br><c:out value="${lista.consultorio}"/></td>        
       <td><c:out value="${lista.subjetivo}" escapeXml="False"/></td>
       <td><c:out value="${lista.objetivo}"  escapeXml="False"/></td>     
       <td><c:out value="${lista.diagnostico}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.accion}"  escapeXml="False"/></td>  
     </tr>
   </c:forEach>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
 <tr>  
    <th colspan="5" style="font-size:15pt"><center>EVOLUCION MEDICO</center></th>
    <th colspan="5" style="font-size:15pt"><center>NOTAS DE ENFERMERIA</center></th>
 </tr>   
 <tr>  
      <th colspan="5"><center> <form name=formaEv<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>      
         <div> <input align="right" type="submit" name='accion1' class="btn btn-info" value='Imprimir Evoluciones'> </div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >                   
          <input type="hidden" name="accion1"         value='imprimeEvo'>
       </form></center></th>
      
    <th colspan="5"> <center><form name=formaEvo<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>      
         <div> <input align="right" type="submit" name='accion1' class="btn btn-info" value='Imprimir Notas Enfermeria'> </div>
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>           
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
          <input type="hidden" name='id_seguro'       value='<c:out value="${id_seguro}"/>'> 
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >                   
          <input type="hidden" name="accion1"         value='imprimeEvo'>
       </form></center></th>
   
 </tr>
  <tr>  
     <td colspan="5" width="60%" valign="top">
       <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
       <tr style="font-size:9pt">
        
        <th> FECHA <br>MEDICO SERVICIO <br> Signos Vitales </th>
        <th> DIAGNOSTICO / EVOLUCION </th> 
        <th> PISO/ SALA/ CAMA </th>  
       </tr>  
       <c:forEach var="listainter" items="${milistaInter}" varStatus="contador">
         <!-- ********** Esto es para el efecto ************ -->
           <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
         <!-- ********** Fin  efecto ************ -->
         <td>  <table class="tabla" border="0">
               <tr>
                  <td align="center"><c:out value="${contador.count}"/></td>
                  <td><form name=formaEvoI<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>      
                     <a class="btn btn-warning btn-xs " href="javascript:document.formaEvoI<c:out value="${contador.count}"/>.submit();">Encabezado
                      <input type="hidden" name='id_historia'     value='<c:out value="${listainter.id_historia}"/>'> 
                      <input type="hidden" name='id_persona'      value='<c:out value="${listainter.id_persona}"/>'>
                      <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                      <input type="hidden" name="accion1"         value='ImprimirEvolucionCabecera'>
                   </form></td>
               </tr> 
             <tr>
                  <form name=formaEvoI2<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'> 
                      <td><SELECT NAME="id_fila" >
                          <option value="15"> 1 Fila</option>
                          <option value="55"> 2 Fila</option>
                          <option value="100"> 3 Fila</option>
                          <option value="150"> 4 Fila</option>
                          <option value="200"> 5 Fila</option>
                          <option value="250"> 6 Fila</option>
                          <option value="300"> 7 Fila</option>
                          <option value="350"> 8 Fila</option>
                          <option value="400"> 9 Fila</option>
                          <option value="450"> 10 Fila</option>
                          <option value="500"> 11 Fila</option>
                          <option value="550"> 12 Fila</option>
                          <option value="600"> 13 Fila</option>
                      </SELECT>	</td>
                     <td><a class="btn btn-warning btn-xs " href="javascript:document.formaEvoI2<c:out value="${contador.count}"/>.submit();">Evolucion
                      <input type="hidden" name='id_historia'     value='<c:out value="${listainter.id_historia}"/>'> 
                      <input type="hidden" name='id_persona'      value='<c:out value="${listainter.id_persona}"/>'>
                      <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                      <input type="hidden" name="accion1"         value='ImprimirEvolucionIndi'>
                      </td>
                   </form>
             </tr> 
           </table>  
 
           <br> 
           <font size="4"><fmt:formatDate value="${listainter.fecha}" pattern='dd/MM/yyyy' /><br><fmt:formatDate value="${listainter.fecha}" type="time" timeStyle="short"/></font><br><br><font color="blue"><c:out value="${listainter.nombres}"/></font><br><c:out value="${listainter.consultorio}"/><br><font color="red"><c:out value="${listainter.id_historia}"/></font>
           <br><c:if test="${listainter.peso!='0'}">Peso:<font color="blue"><b><c:out value="${listainter.peso}"/> </b></font>Kg.</c:if>  <c:if test="${listainter.talla!='0'}"> <br>Talla:<font color="blue"><b><c:out value="${listainter.talla}"/> </b></font>Cm.</c:if><c:if test="${listainter.temperatura!='0'}">  <br>Temp.:<font color="blue"><b><c:out value="${listainter.temperatura}"/></b></font>ºC</c:if> <c:if test="${listainter.pa!='0'}"> <br>PA :<c:out value="${listainter.pa}"/></c:if><c:if test="${listainter.fc!='0'}"><br>FC :<c:out value="${listainter.fc}"/></c:if><c:if test="${listainter.fr!='0'}"><br>FR :<c:out value="${listainter.fr}"/></c:if>
         </td>   
           <td style="font-size:12pt" ><c:out value="${listainter.diagnostico}"  escapeXml="False"/></td>
            <td><form name=formaEdit<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
                  <div class="modificar"><center><a class="btn btn-success" href="javascript:document.formaEdit<c:out value="${contador.count}"/>.submit();">Editar</a></center></div>
                  <input type="hidden" name="id_historial"    value='<c:out value="${listainter.id_historial}"/>' >
                  <input type="hidden" name='id_paciente'     value='<c:out value="${listainter.id_paciente}"/>'>
                  <input type="hidden" name="id_historia"     value='<c:out value="${listainter.id_historia}"/>' >
                  <input type="hidden" name='id_persona'      value='<c:out value="${listainter.id_persona}"/>'>
                  <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                  <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                  <input type="hidden" name="accion"          value='Editar' >
                  <input type="hidden" name="sw"              value='1' >
             </form>
             <br>
             <form name=formaCama<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarCama.do"/>'>
                  <div><center><a class="btn btn-info btn-xs" href="javascript:document.formaCama<c:out value="${contador.count}"/>.submit();"><c:out value="${listainter.piso}"/>/<br><c:out value="${listainter.codigo}"/>/<br><c:out value="${listainter.accion}"/></a></center></div>
                  <input type="hidden" name="id_historial"   value='<c:out value="${listainter.id_historial}"/>' >
                  <input type="hidden" name="id_historia"    value='<c:out value="${listainter.id_historia}"/>' >
                  <input type="hidden" name='id_paciente'    value='<c:out value="${listainter.id_paciente}"/>'>
                  <input type="hidden" name='id_consultorio' value='<c:out value="${listainter.id_consultorio}"/>'>
                  <input type="hidden" name='id_persona'     value='<c:out value="${listainter.id_persona}"/>'>
                  <input type="hidden" name="camaactual"     value='<c:out value="${listainter.id_cama}"/>' >
                  <input type="hidden" name="id_cama"        value='<c:out value="${listainter.id_cama}"/>' >
                  <input type="hidden" name="id_sala"        value='<c:out value="${listainter.id_sala}"/>' >
                  <input type="hidden" name="id_piso"        value='<c:out value="${listainter.id_piso}"/>' >
                  <input type="hidden" name="nombres"        value='<c:out value="${datos.nombres}"/>' >
                  <input type="hidden" name="accionc"        value='cama' >
                  <input type="hidden" name="sw"             value='1' >
                </td>
             </form>
           </tr>  
          </c:forEach>
    </table>
    
    </td>
      <td colspan="5"  width="40%" valign="top">
       <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
        <tr style="font-size:9pt">        
        <th> FECHA <br>NOMBRE PERSONAL <br> Signos Vitales</th>
        <th> NOTAS ENFERMERIA </th>     
        </tr>  
       <c:forEach var="listaintere" items="${milistaInterEnf}" varStatus="contador">
         <!-- ********** Esto es para el efecto ************ -->
           <tr style="font-size:9pt" <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
           <!-- ********** Fin  efecto ************ --> 
           <td align="center">
            <table class="tabla" border="1">
                
                <tr>
                  <td align="center"><c:out value="${contador.count}"/></td>
               
                  <td><form name=formaEvoIEnf<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>      
                     <div class="imprimir"><a href="javascript:document.formaEvoIEnf<c:out value="${contador.count}"/>.submit();">Encab.</div>
                      <input type="hidden" name='id_historia'     value='<c:out value="${listaintere.id_historia}"/>'> 
                      <input type="hidden" name='id_persona'      value='<c:out value="${listaintere.id_persona}"/>'>
                      <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                      <input type="hidden" name="accion1"         value='ImprimirNotaCabecera'>
                   </form></td>
               </tr> 
             <tr>
                  <form name=formaEvoI2Enf<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'> 
                      <td><SELECT NAME="id_fila" >
                          <option value="15"> 1 Fila</option>
                          <option value="55"> 2 Fila</option>
                          <option value="100"> 3 Fila</option>
                          <option value="150"> 4 Fila</option>
                          <option value="200"> 5 Fila</option>
                          <option value="250"> 6 Fila</option>
                          <option value="300"> 7 Fila</option>
                          <option value="350"> 8 Fila</option>
                          <option value="400"> 9 Fila</option>
                          <option value="450"> 10 Fila</option>
                          <option value="500"> 11 Fila</option>
                          <option value="550"> 12 Fila</option>
                          <option value="600"> 13 Fila</option>
                      </SELECT>	</td>
                     <td><div class="imprimir"><a href="javascript:document.formaEvoI2Enf<c:out value="${contador.count}"/>.submit();">Nota</div>
                      <input type="hidden" name='id_historia'     value='<c:out value="${listaintere.id_historia}"/>'> 
                      <input type="hidden" name='id_persona'      value='<c:out value="${listaintere.id_persona}"/>'>
                      <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                      <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                      <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                      <input type="hidden" name="accion1"         value='ImprimirNotaIndi'>
                      </td>
                   </form>
             </tr> 
             
             
 
           <tr> 
           <td>
               <fmt:formatDate value="${listaintere.fecha}" pattern='dd/MM/yyyy' /><br><fmt:formatDate value="${listaintere.fecha}" type="time" timeStyle="short"/><br><br><font color="blue"><c:out value="${listaintere.nombres}"/></font><br><c:out value="${listaintere.consultorio}"/><br><font color="red"><c:out value="${listaintere.id_historia}"/></font>
               <br><c:if test="${listaintere.peso!='0'}">Peso:<font color="blue"><b><c:out value="${listaintere.peso}"/> </b></font>Kg.</c:if>  <c:if test="${listaintere.talla!='0'}"> <br>Talla:<font color="blue"><b><c:out value="${listaintere.talla}"/> </b></font>Cm.</c:if><c:if test="${listaintere.temperatura!='0'}">  <br>Temp.:<font color="blue"><b><c:out value="${listaintere.temperatura}"/></b></font>ºC</c:if> <c:if test="${listaintere.pa!='0'}"> <br>PA :<c:out value="${listaintere.pa}"/></c:if><c:if test="${listaintere.fc!='0'}"><br>FC :<c:out value="${listaintere.fc}"/></c:if><c:if test="${listaintere.fr!='0'}"><br>FR :<c:out value="${listaintere.fr}"/></c:if>
               <form name=formaEditEnf<c:out value="${contador.count}"/> method=post action='<c:url value="/InternarPaciente.do"/>'>
                   <div class="modificar"><center><a class="btn btn-warning" href="javascript:document.formaEditEnf<c:out value="${contador.count}"/>.submit();">Editar</a></center></div>
                   <input type="hidden" name="id_historial"    value='<c:out value="${listaintere.id_historial}"/>' >
                   <input type="hidden" name='id_paciente'     value='<c:out value="${listaintere.id_paciente}"/>'>
                   <input type="hidden" name="id_historia"     value='<c:out value="${listaintere.id_historia}"/>' >
                   <input type="hidden" name='id_persona'      value='<c:out value="${listaintere.id_persona}"/>'>
                   <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'> 
                   <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'> 
                   <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                   <input type="hidden" name="accion"          value='Editar' >
                   <input type="hidden" name="sw"              value='1' >
               </form>
             
           </td></tr> 
           </table> 
           </td>   
           <td style="font-size:14pt"><c:out value="${listaintere.diagnostico}"  escapeXml="False"/></td>
           </tr>  
          </c:forEach>
    </table>
     </td>
 </tr>
</table>  
</c:if>   
 