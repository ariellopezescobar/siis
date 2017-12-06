<%@ include file="../Superior.jsp" %>
<script language = 'JavaScript' SRC="./validar.js">  </script>

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

 <div style="font-size:15pt"> Consultar Paciente</div>
<br>
<form name="adicionarcolegio" method="POST" action='<c:url value="/AtenderPacienteEco.do"/>' >
<table class="formulario">
  <tr>
    <th colspan="3">DATOS PERSONALES</th>
  </tr>
  <tr>
    <td colspan="2" valign="top">
    <table class="formulario" width="100%">
  
      <tr>
        <td class="etiqueta">HCL</td>
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr>    
        <td class="etiqueta">Nombres</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datos.nombres}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Sexo</td>
        <td class="etiqueta">::</td>	      
        <td> <c:out value="${buscarSexo.sexo}"/></td>
      </tr> 
      <tr>
        <td class="etiqueta">Fecha de nac.</td>    
        <td class="etiqueta">::</td>
        <td><c:out value="${fec_nacimiento}"/></td>	                 
      </tr>
      <tr>    
        <td class="etiqueta">Direcci&oacute;n</td>    
        <td class="etiqueta">::</td>	      
        <td><c:out value = "${datos.direccion}"/></td>
      </tr>  

   </table>
    </td>
  
  </tr>
  <tr>
    <td  valign="top">

    <table class="formulario" width="100%">
     <tr>
        <td class="etiqueta" align="center"> SUBJETIVO</font> </td>
     </tr>   
     <tr>
        <td>
           <textarea name="subjetivo" rows="4" cols="80" style="width: 100%">
               <c:out value = "${subjetivo}" escapeXml="False"/>
           </textarea>
        </td>
     </tr> 
     
     </table>
     </td>
   </tr> 
 <tr>   
 <td colspan=3>
  
<input type="submit" name='accion' class="aceptar" value='Historial'>
<input type="submit" name='accion' class="aceptar" value='Laboratorio'>
<input type="submit" name='accion' class="siguiente" value='Siguiente'>  

<input type="hidden" name="codigo" value='<c:out value="${codigo}"/>' >
<input type="hidden" name="literal" value='<c:out value="${literal}"/>' >         
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
<input type="hidden" name='subjetivo'       value='<c:out value="${subjetivo}"/>'>
<input type="hidden" name='objetivo'        value='<c:out value="${objetivo}"/>'>
<input type="hidden" name='diagnostico'     value='<c:out value="${diagnostico}"/>'>
<input type="hidden" name='miaccion'          value='<c:out value="${miaccion}"/>'>
<input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
<input type="hidden" name="expedido"        value='<c:out value="${expedido}"/>' >         
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
<input type="hidden" name='sw'              value='subjetivo'>
</form>
  </td>
</tr>
 
  
</table>