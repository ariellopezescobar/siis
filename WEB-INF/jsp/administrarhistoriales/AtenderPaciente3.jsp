<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

<script language="javascript" type="text/javascript" src="./tiny_mce/tiny_mce.js"></script>
<script language="javascript" type="text/javascript">
  tinyMCE.init({
    mode : "textareas",
    theme: "advanced",

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


<table class="formulario">
  <tr>
    <td width="50%" valign="top"> 
<form name="adicionarcolegio" method="POST" action='<c:url value="/AtenderPaciente.do"/>' >
<table class="table table-striped table-condensed table-responsive">
  <tr>
    <th colspan="4">DATOSss PERSONALES</th>
  </tr>
  <tr>
    <td colspan="4" width="100%" valign="top">
    <table class="table table-bordered table-hover table-condensed table-responsive">
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
      <tr>    
        <td bgcolor="#F2F2F2" >Atendido por</td>          
        <td bgcolor="#F2F2F2" style="font-size:9pt" colspan="2"><c:out value="${datoshisto.nombre}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color:blue>Medico:</font><fmt:formatDate value="${datoshisto.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
      </tr>  
 </table>
    </td>
  
  </tr>
  <tr>
   <td width="30%" valign="top">
    <table class="table table-bordered table-hover table-condensed table-responsive">    
      <c:if test="${datos.edad>5}">
        <c:if test="${valor1 <=20}">
          <tr style="font-size:8pt">    
            <td " style="color:red">IMC</td>    
            <td style="color:red"><c:out value = "${estimc}"/></td>      
          </tr>      
        </c:if> 
        <c:if test="${valor1 >20}">
          <tr style="font-size:8pt">    
            <td ">I.M.C.</td>    
            <td><c:out value = "${estimc}"/></td>      
          </tr>      
        </c:if> 
      </c:if> 
      <tr style="font-size:8pt">
        <td "> Talla{cm} </td>
        <td><c:out value = "${datoshisto.talla}"/></td>
     </tr>  
     <tr style="font-size:8pt">
        <td "> Peso{Kg} </td>
        <td><c:out value = "${datoshisto.peso}"/></td>
     </tr>  
     <tr style="font-size:8pt">
        <td "> Temp.{ºC} </td>
        <td><c:out value = "${datoshisto.temperatura}"/></td>
     </tr>  
     <tr style="font-size:8pt">
        <td "> FC {lpm} </td>
        <td><c:out value = "${datoshisto.fc}"/></td>
     </tr>  
     <tr style="font-size:8pt">
        <td "> PA {mmHg} </td>
        <td><c:out value = "${datoshisto.pa}"/></td>
     </tr>  
     <tr style="font-size:8pt">
        <td "> FR {cpm} </td>
        <td><c:out value = "${datoshisto.fr}"/></td>
     </tr>  
     </table>
    </td>  
    <td width="70%" valign="top" style="font-size:10pt">
    <table class="table table-bordered table-hover table-condensed table-responsive">
     
         <tr style="font-size:8pt">
            <td colspan="4" bgcolor="#F2F2F2"><b> SUBJETIVO</b></td>
         </tr>
         <tr style="font-size:10pt">
            <td colspan="4"><i><c:out value="${fn:substring(subjetivo, 0, 100)}" escapeXml="False"/></i></td>
         </tr>   
         <tr style="font-size:8pt">
            <td colspan="4"  bgcolor="#F2F2F2"><b> OBJETIVO</b></td>
         </tr>
         <tr style="font-size:10pt">  
             <td colspan="4"><i><c:out value="${fn:substring(objetivo, 0, 100)}" escapeXml="False"/></i></td>
         </tr> 
     
      <tr style="font-size:8pt">
        <td colspan="4"  bgcolor="#F2F2F2"><b> DIAGNOSTICO</b> </td>
     </tr>
     <tr style="font-size:10pt">
        <td colspan="4"><i><c:out value="${diagnostico}" escapeXml="False"/></i></td>
     </tr> 
     <tr style="font-size:8pt">
        <td colspan="4"  bgcolor="#F2F2F2"><b> PLAN DE ACCION </b></td>
     </tr>
     <tr style="font-size:10pt">
        <td colspan="4"><i><c:out value="${miaccion}" escapeXml="False"/></i></td>
     </tr>
    </table>
     </td>
    </tr>   
</table>

 <c:if test="${terminar == 'si'}">
     <c:if test="${swcie == 'SI'}">
         <center><input type="submit" name='accion' class="btn btn-primary btn-lg" value='Terminar.'></center>
     </c:if> 
     <c:if test="${swcie != 'SI'}">
         <center><input type="submit" name='accion' class="btn btn-primary btn-lg" value='Terminar'></center>
     </c:if>  
     
 </c:if> 
 <input type="hidden" name='codigo'          value='<c:out value="${codigo}"/>' >
 <input type="hidden" name='literal'         value='<c:out value="${literal}"/>' >         
 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
 <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
 <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>
 <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>
 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >         
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
 <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>  
 </form>

 <table class="table table-bordered table-hover table-condensed table-responsive">
     <tr>
         <th colspan="6" style="font-size:10pt"  bgcolor="#F2F2F2"><center> CIE10 SEGUN NIVEL DE IMPORTANCIA </center> </th>
     </tr>
    <tr style="font-size:9pt">
           <th bgcolor="#F2F2F2" style="font-size:7pt"> No </th>
           <th bgcolor="#F2F2F2"> Id </th>
           <th bgcolor="#F2F2F2"> Fecha </th>
           <th bgcolor="#F2F2F2"> CIE10 </th>
           <th bgcolor="#F2F2F2"> CIE10 LITERAL</th>
           <th bgcolor="#F2F2F2"> Eliminar </th>
     </tr>
     <c:forEach var="morbi" items="${morbi}" varStatus="contador1">
            <tr style="font-size:8pt">
            <c:if test="${morbi.id_cargo=='1'}">
              <td style="font-size:7pt; color:blue" ><c:out value="${morbi.id_cargo}"/></td>
              <td style="font-size:8pt;"><c:out value="${morbi.id_persona}"/></td>
              <td style="font-size:8pt;"><fmt:formatDate value="${morbi.fecha}" pattern='dd/MM/yy HH:mm'/></td>
              
              <c:if test="${fn:length(morbi.nombres)>=4}">
                 <td style="font-size:12pt; color:blue"><c:out value="${fn:substring(morbi.nombres, 0, 3)}"/>.<c:out value="${fn:substring(morbi.nombres, 3, 4)}"/></td>    
              </c:if> 
              <c:if test="${fn:length(morbi.nombres)<4}">
                 <td style="font-size:12pt; color:blue"><c:out value="${morbi.nombres}"/></td>    
              </c:if>
              <td style="font-size:8pt; color:blue"><c:out value="${morbi.nombre}"/><font color="red">.[Principal]. </font></td>
            </c:if>
            <c:if test="${morbi.id_cargo>'1'}">
              <td style="font-size:7pt;" ><c:out value="${morbi.id_cargo}"/></td>  
              <td style="font-size:8pt;"><c:out value="${morbi.id_persona}"/></td>
              <td style="font-size:8pt;"><fmt:formatDate value="${morbi.fecha}" pattern='dd/MM/yy HH:mm'/></td>  
              
              <c:if test="${fn:length(morbi.nombres)>=4}">
                 <td style="font-size:12pt; color:blue"><c:out value="${fn:substring(morbi.nombres, 0, 3)}"/>.<c:out value="${fn:substring(morbi.nombres, 3, 4)}"/></td>    
              </c:if> 
              <c:if test="${fn:length(morbi.nombres)<4}">
                 <td style="font-size:12pt; color:blue"><c:out value="${morbi.nombres}"/></td>    
              </c:if>
              <td style="font-size:7pt;"><c:out value="${morbi.nombre}"/></td>
            </c:if>
            <c:if test="${morbi.id_cargo>=cont}">
          <form name=formaMorbi<c:out value="${contador1.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
              <td>
                 <div class="btn btn-danger btn-xs"><a class="btn btn-danger btn-xs" href="javascript:document.formaMorbi<c:out value="${contador1.count}"/>.submit();">Eliminar</a></div>
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>
                 <input type="hidden" name='morbilidad'      value='<c:out value="${morbi.id_historia}"/>'>
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
                 <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>' >
                 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
                 <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
                 <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
                 <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>
                 <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>
                 <input type="hidden" name='analisis'        value='<c:out value="${analisis}"/>' >
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>
                 <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
                 <input type="hidden" name='boton'           value='EliminarCie10' >
                 <input type="hidden" name='sw'              value='1' >
                </td>
             </form>
           </c:if>  
           </tr>
         </c:forEach>
 </table>


  </td>
    <td width="50%" valign="top">
    <form name=formabus action="<c:url value="/AtenderPaciente.do"/>" method="POST">        
         <table class="table table-bordered table-hover table-condensed table-responsive">
         <tr><td colspan="5" bgcolor="CAD3E4" style="font-size:11pt"><b>Seleccione el codigo CIE10 Principal y Secundarios para el <br>SNIS302 Epidemiologico Semanal y reportes de Morbilidad</b></td></tr> 
          <tr>    
            <td style="font-size:10pt" align=right>Nombre de la Enfermedad</td>    	
            <td class="colb"><input class="form-control" type="text" name="nombres"  value="<c:out value="${literal}"/>"  size="30" maxlength=30 onblur='validar=(nombres,"A")'/></td>            
            <td ><input class="btn btn-success" name=boton type="submit" value="Buscar Enfermedad"></td>
          </tr>  

        <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
        <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
        <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
        <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>        
        <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>      
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
        <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >  
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
     </form> 
    <form name=formabuscod action="<c:url value="/AtenderPaciente.do"/>" method="POST">        
          <tr>    
            <td style="font-size:10pt" align=right>Codigo CIE10</td>    
            <td class="colb"><input class="form-control" type="text" name="nombres"  value="<c:out value="${codigo}"/>" size="30" maxlength="5" onblur='validar=(codigo,"A9")'/></td>            
            <td ><input class="btn btn-success" name=boton type="submit" value="Buscar CIE10"></td>
          </tr>  
        <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
        <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
        <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
        <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>        
        <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>      
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
        <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
     </form>  
    <!-- 
     <form name=formabus action="<c:url value="/AtenderPaciente.do"/>" method="POST">        
         <table border="1">
          <tr>    
            <td class="colh" align=right>Otra Especificacion</td>    
   	    <td class="colh">::</td>	
            <td class="colb"><input type="text" name="nombres2"  value="<c:out value="${literal2}"/>"  size="10" maxlength=10 />&nbsp;<input type="text" name="nombres3" value="<c:out value="${literal3}"/>" size="10" maxlength=10/>&nbsp;<input type="text" name="nombres4" value="<c:out value="${literal4}"/>" size="10" maxlength=10/></td>            
            <td ><input name=boton type="submit" value="BuscarE"></td>
          </tr>  
         </table>
        <input type="hidden" name="sw"              value='<c:out value="${sw}"/>' >         
        <input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
        <input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
        <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
        <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
        <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
        <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
        <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
        <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
        <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
        <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>        
        <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>      
        <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
        <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
        <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >  
        <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
     </form>   
     -->
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt" bgcolor="#F2F2F2">
    <th> No </th>
    <th> Codigo </th>    
    <th> ENFERMEDAD </th>            
    <th> ELEGIR </th>
    </tr> 
    <c:if test="${cambiocie=='1'}">
         <td>1</td>
         <form name=formaCie11<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
             <td><c:out value="${fn:substring(codigo, 0, 3)}"/>.<c:out value="${fn:substring(codigo, 3, 4)}"/></td>        
             <td><input type="text" name="nombres5"  value=""  size="50" maxlength=249/></td>
             <td ><input name=boton type="submit" value="GrabarCie"></td> 
             <input type="hidden" name="cie10"    value='<c:out value="${codigo}"/>' >
             <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
                 <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
                 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
                 <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
                 <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
                 <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>         
                 <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>     
                 <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
                 <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>   
          </form>    
    </c:if> 
   <c:forEach var="lista" items="${listarEnfermedades}" varStatus="contador">
      <tr style="font-size:8pt">
       <form name=formaCie11<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaCie11<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
                 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' > 
                 <input type="hidden" name="general"         value='<c:out value="${lista.forma_far}"/>' > 
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
                 <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
                 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
                 <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
                 <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
                 <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>         
                 <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>     
                 <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >
                 <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>   
                 <input type="hidden" name="boton"        value='CambioCie' >
              </td>
           </form>
       <c:if test="${fn:length(lista.ubicacion)>=4}">
             <td><c:out value="${fn:substring(lista.ubicacion, 0, 3)}"/>.<c:out value="${fn:substring(lista.ubicacion, 3, 4)}"/></td>    
       </c:if> 
       <c:if test="${fn:length(lista.ubicacion)<4}">
             <td><c:out value="${lista.ubicacion}"/></td>    
       </c:if> 
       <td><c:out value="${fn:substring(lista.concentra, 0, 90)}"/></td>   
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
  	 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
  	 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' > 
         <input type="hidden" name="general"         value='<c:out value="${lista.forma_far}"/>' > 
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
         <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
         <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
         <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
         <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>         
         <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>     
         <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
	 <input type="hidden" name="accion"          value='Elegir' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:8pt" bgcolor="#F2F2F2">
    <th> No </th>
    <th> Codigo </th>    
    <th> ENFERMEDAD </th>            
    <th> ELEGIR </th>
    </tr>  
   <c:forEach var="lista" items="${listarEnfermedadesCot}" varStatus="contador">
     <tr style="font-size:8pt">
       <form name=formaCie<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
              <td align="center">     
                 <div><a href="javascript:document.formaCie<c:out value="${contador.count}"/>.submit();"> <c:out value="${contador.count}"/></a></div>
                 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
                 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' > 
                 <input type="hidden" name="general"         value='<c:out value="${lista.forma_far}"/>' > 
                 <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
                 <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
                 <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
                 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
                 <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
                 <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' > 
                 <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
                 <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
                 <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
                 <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>         
                 <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>     
                 <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
                 <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
                 <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>   
                 <input type="hidden" name="boton"        value='CambioCie' >
              </td>
           </form>
       
       <c:if test="${fn:length(lista.ubicacion)>=4}">
             <td><c:out value="${fn:substring(lista.ubicacion, 0, 3)}"/>.<c:out value="${fn:substring(lista.ubicacion, 3, 4)}"/></td>    
       </c:if> 
       <c:if test="${fn:length(lista.ubicacion)<4}">
             <td><c:out value="${lista.ubicacion}"/></td>    
       </c:if>    
       <td><c:out value="${fn:substring(lista.concentra, 0, 90)}"/></td>   
     <form name=formaMcot<c:out value="${contador.count}"/> method=post action='<c:url value="/AtenderPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" class="btn btn-warning btn-xs" href="javascript:document.formaMcot<c:out value="${contador.count}"/>.submit();">Elegir</a></div>
  	 <input type="hidden" name="ubicacion"       value='<c:out value="${lista.ubicacion}"/>' >
  	 <input type="hidden" name="concentra"       value='<c:out value="${lista.concentra}"/>' > 
         <input type="hidden" name="general"         value='<c:out value="${lista.forma_far}"/>' > 
         <input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='estimc'          value='<c:out value="${estimc}"/>'>
         <input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >         
         <input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
         <input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
         <input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>         
         <input type="hidden" name='miaccion'        value='<c:out value="${miaccion}"/>'>        
         <input type="hidden" name="analisis"        value='<c:out value="${analisis}"/>' >  
         <input type="hidden" name='swinter'         value='<c:out value="${swinter}"/>'>  
         <input type="hidden" name='swcie'           value='<c:out value="${swcie}"/>'>  
	 <input type="hidden" name="accion"          value='Elegir' >
	 <input type="hidden" name="sw"              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
</table>

 </td>
  </tr>
   
</table>