<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>
<script language='JavaScript' SRC="../sumalab.js"></script>

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

<div style="font-size:15pt"> Configurar Ecografias y Rayos X prediseñadas</div>

<table>
 <tr>   
 <td>
  

 <table class="tabla" width="400">
  <tr>
    <th> Nro. </th>
    <c:if test="${id_laboratorio == 136}"> 
       <th> Tipo Ecografia </th>  
    </c:if>
    <c:if test="${id_laboratorio == 138}"> 
       <th> Tipo Rayos X </th>  
    </c:if>   
    <th> Resultado Predisañado </th>    
    <th> Modificar </th>
    </tr>  
   <c:forEach var="listado" items="${detalleecos}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><c:out value="${listado.aspecto}"/></td> 
       <td><c:out value="${listado.diagnostico}" escapeXml="False"/></td>      
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfigurarEcos.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
   	 <input type="hidden" name='id_laboratorio' value='<c:out value="${listado.id_laboratorio}"/>'>
         <input type="hidden" name='id_cuaderno'     value='<c:out value="${listado.id_cuaderno}"/>'>
         <input type="hidden" name='aspecto'        value='<c:out value="${listado.aspecto}"/>'>
         <input type="hidden" name='detalle'        value='<c:out value="${listado.diagnostico}"/>'>
         <input type="hidden" name='accion'         value='Modificar'>
	 <input type="hidden" name='sw'             value='1' >
       </td>
     </form>
   </c:forEach>

</table>

 </td>
<c:if test="${realizaeco == 'si'}"> 
 <td> 
    
 <form name="f1" method="POST" action='<c:url value="/ConfigurarEcos.do"/>' >
  <table class="formulario" width="300">  
  <tr>
    <th colspan="6">DATOS RESULTADO</th>
  </tr>
      <tr>
      <th colspan="6" ><font color="Blue" size="5"><c:out value="${aspecto}"/></font></th>
      </tr>
      <td colspan=6><textarea  name="resultado" rows="10" cols="80" style="width: 100%" >
               <c:out value="${detalle}" escapeXml="True"/>
          </textarea>
      </td>  
          
    
 </table>
 <center>
 <input type="submit" name='accion' class="aceptar" value='Grabar'>
 <input type="submit" name='accion' class="aceptar" value='Cancelar'>
 <input type="hidden" name='id_laboratorio'  value='<c:out value="${id_laboratorio}"/>'>
 <input type="hidden" name='id_cuaderno'     value='<c:out value="${id_cuaderno}"/>'>
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='accionlab'       value='<c:out value="${accionlab}"/>'>
 </center>
 </form>
  </td>  
  </c:if> 
  </tr>
  </table>
