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

 <div style="font-size:15pt"> Consultar Pacienteq</div>
<br>
<form name="adicionarcolegio" method="POST" action='<c:url value="/LabPendiente.do"/>' >

  <table class="formulario" >  
  <tr>
    <th colspan="3">DATOS LABORATORIO</th>
  </tr>
      <tr>    
        <td class="etiqueta">Fecha de Pedido</td>    
        <td class="etiqueta">::</td>
        <td><fmt:formatDate value="${datosLab.fechap}" pattern='dd/MM/yyyy'/></td>       
      </tr>
      <tr>    
        <td class="etiqueta">Laboratorio</td>    
        <td class="etiqueta">::</td>
        <td><c:out value = "${datosLab.laboratorio}"/></td>
      </tr>
      <tr>
        <td class="etiqueta">Indicacion</td>
        <td class="etiqueta">::</td>	      
        <td> <c:out value="${datosLab.tipoconsulta}"/></td>
      </tr> 

    <tr>
       <th colspan="3">RESULTADO DEL ANALISIS</th>
    </tr>
     <tr>
        <td colspan=3>
           <textarea name="resultado" rows="6" cols="80" style="width: 100%">
               <c:out value = "${datosLab.resultado}" escapeXml="False"/>
           </textarea>
        </td>
     </tr>   
     </table>


<input type="submit" name='accion' class="aceptar" value='Aceptar'>
<input type="submit" name='accion' class="aceptar" value='Cancelar'>

<input type="hidden" name='id_cuaderno'     value='<c:out value="${id_cuaderno}"/>'>
<input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>
<input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>

  </td>
   </tr>   
</table>
</form>