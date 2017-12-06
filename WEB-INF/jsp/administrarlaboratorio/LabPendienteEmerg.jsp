<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>
<jsp:useBean id="now" class="java.util.Date" />
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

<table>
 <tr valign="top" >   
 <td align="left">
 <form name="PedidoLab" method=post action='<c:url value="/LabPendiente.do"/>'>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="50%"> 
  <tr>
    <th colspan="3">DATOS PERSONALES PACIENTE LABORATORIO</th>
  </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Nombres</td>    
        <td><c:out value = "${datos.nombres}"/><font color="blue" size="2">&nbsp;&nbsp;&nbsp;hlc:<c:out value = "${datos.hcl}"/></font></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Fecha de nac.</td>    
        <td style="color:blue"s><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/>-....-<b>Edad::<c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias</b></td>                                  
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Establecimiento Solicitante </td>    
        <td><input type="text" name="estab1" value="<c:out value = "${estab}"/>" size="50" maxlength="50" onblur='validar(nombres,"A")'/></td>
      </tr> 
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Medico Solicitante  </td>    
        <td><input type="text" name="medico1" value="<c:out value = "${medico}"/>" size="50" maxlength="50" onblur='validar(nombres,"A")'/></td>
      </tr>
      <tr>    
        <td align="right" bgcolor="#F2F2F2">Numero Solicitud </td>    
        <td><input type="text" name="numero" value="<c:out value = "${numero}"/>" size="10" maxlength="10" onblur='validar(nombres,"A")'/></td>
      </tr>
      <tr>
         <td colspan="3" align="center"><input class="btn btn-success" type="submit" class="siguiente" value='Grabar' onclick="document.PedidoLab.accion.value='Grabar'"></td>
         <input type="hidden" name='id_reservacion'   value='<c:out value="${id_historial}"/>'> 
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>' >   
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='accion'          value='Grabar'>
      </tr>
  </table>
  </form>
 
 <table class="tabla" width="100">
  <tr><td><form name=formaLab method=post action='<c:url value="/Laboratorio.do"/>'>
         <div><a class="btn btn-success" href="javascript:document.formaLab.submit();">Adicionar</a></div>
          <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'> 
          <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
          <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
          <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
          <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
          <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
          <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>          
          <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>
          <input type="hidden" name='accion'          value='Agregar'>
          <input type="hidden" name="sw"              value='lab' >
</form><td></tr>
</table>
 <table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="50%">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> Nooo </th>
    <th bgcolor="#F2F2F2"> FechaPedido<br> FechRealizacion</th>        
    <th bgcolor="#F2F2F2"> Laboratorio </th>    
    <th bgcolor="#F2F2F2"> Indicaciones </th>
    <th  bgcolor="#F2F2F2" width="150" > Resultado </th>   
    <th bgcolor="#F2F2F2"> Informe </th>
    </tr>  
   <c:forEach var="listado" items="${listalab}" varStatus="contador">
     <tr style="font-size:9pt">
       <form name=formaMaMe<c:out value="${contador.count}"/> method=post action='<c:url value="/LabPacPendiente.do"/>'>
       <td>     
         <div><a href="javascript:document.formaMaMe<c:out value="${contador.count}"/>.submit();"><c:out value="${contador.count}"/><br><font color="red"><c:out value="${listado.id_costo}"/></font></a></center></div>
  	 <input type="hidden" name="id_historial"   value=<c:out value="${listado.id_historial}"/> >
         <input type="hidden" name='id_cuaderno'    value='<c:out value="${listado.id_cuaderno}"/>' >
	 <input type="hidden" name="accion"         value='EliminaLab' >
       </td>
     </form> 
       <td  width="20"><fmt:formatDate value="${listado.fechap}" pattern='dd/MM/yy HH:mm'/><font color="blue"><br><fmt:formatDate value="${listado.fechae}" pattern='dd/MM/yy HH:mm'/></font></td>       
       <c:if test="${listado.id_estado=='A'}"> 
           <td><c:out value="${listado.laboratorio}"/><br><c:out value="${listado.laboratorio}"/></td>      
       </c:if> 
       <c:if test="${listado.id_estado=='B'}"> 
           <td style="color:blue"><c:out value="${listado.laboratorio}"/></td>      
       </c:if> 
       <td><c:out value="${listado.tipoconsulta}"/></td>      
       <td  width="150"><c:out value="${listado.resultado}" escapeXml="False"/></td>
     <form name=formaEn<c:out value="${contador.count}"/> method=post action='<c:url value="/LabPendiente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaEn<c:out value="${contador.count}"/>.submit();">Informe</a></div>
   	 <input type="hidden" name='id_costo'       value='<c:out value="${listado.id_costo}"/>'>
         <input type="hidden" name='id_cuaderno'    value='<c:out value="${listado.id_cuaderno}"/>' >
         <input type="hidden" name='id_detalle'     value='<c:out value="${listado.otras}"/>' >
         <input type="hidden" name='id_estado'      value='<c:out value="${listado.id_estado}"/>' >
         <input type="hidden" name='id_persona'     value='<c:out value="${listado.id_persona}"/>' >
         <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
         <input type="hidden" name='estab1'         value='<c:out value="${estab}"/>'>
         <input type="hidden" name='medico1'        value='<c:out value="${medico}"/>'>
         <input type="hidden" name='id_historial'   value='<c:out value="${listado.id_historial}"/>' >         
         <input type="hidden" name='id_paciente'    value='<c:out value="${id_paciente}"/>' >    
         <input type="hidden" name='expedido'       value='<c:out value="${expedido}"/>' >         
  	 <input type="hidden" name='accion'         value='adicion' >
	 <input type="hidden" name='sw'             value='1' >
       </td>
     </form>
     </tr>
   </c:forEach>

</table>

 </td>
<c:if test="${realizalab == 'si'}"> 
 <td> 
    
 <form name="f1" method="POST" action='<c:url value="/LabPendiente.do"/>' >
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="50%"> 
  <tr valign="top">
    <th colspan="6" bgcolor="#F2F2F2"><center>DATOS EXAMEN COMPLEMENTARIO</center></th>
  </tr>
      <tr>    
        <td colspan="1" align="right" bgcolor="#F2F2F2">Laboratorio</td>    
        <td colspan="4"><c:out value = "${datosLab.laboratorio}"/></td>
      </tr>
      <tr>
        <td colspan="1" align="right" bgcolor="#F2F2F2">Indicacion</td>    
        <td colspan="4"> <c:out value="${datosLab.tipoconsulta}"/></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Numero Solicitud </td>    
        <td><input type="text" name="numero" value="<c:out value = "${numero}"/>" size="10" maxlength="10" onblur='validar(nombres,"A9")'/>
      </tr>
      <tr>
        <td align="right" bgcolor="#F2F2F2">Responsable  </td>
        <td>
          <SELECT NAME="id_persona2">
	    <c:forEach var="perso" items="${listaPersonas}">
	      <option value="<c:out value="${perso.id_persona}"/>"<c:if test="${perso.id_persona == id_persona}">selected</c:if>> 
	        <c:out value="${perso.nombres}"/>__<c:out value="${perso.id_persona}"/>
	      </option>
	    </c:forEach>
          </SELECT>	      
        </td>
      </tr> 
      </table>   
      
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <tr>
        <th colspan="6" bgcolor="#F2F2F2"><center>RESULTADO DEL ANALISIS</center></th>
    </tr>
    <c:if test="${(id_costo != 121 and id_costo != 137 and quimicas != 'quimicas' and id_costo != 129 and id_costo != 144 and id_costo != 128 and id_costo != 136 and id_costo != 138) and fn:length(datosLab.resultado)<3}"> 
     <tr>
        <td colspan=6>
           <textarea  name="resultado" rows="6" cols="80" style="width: 100%" >
               <c:out value = "${datosLab.aspecto}" escapeXml="False"/>
            </textarea>
        </td>
     </tr>   
     </c:if>  

    <c:if test="${fn:length(datosLab.resultado)>=4 and (id_costo != 121  and id_costo != 137 and id_costo != 129 and id_costo != 144 and id_costo != 128 and id_costo != 136 and id_costo != 138) and (quimicas != 'quimicas' and id_estado=='B' or tipo!='3') }"> 
     <tr>
        <td colspan=6>
           <textarea  name="resultado" rows="6" cols="80" style="width: 100%" >
               <c:out value = "${datosLab.resultado}" escapeXml="False"/>
           </textarea>
        </td>
     </tr>   
    </c:if>      
     <c:if test="${(id_laboratorio == 12 or id_laboratorio == 13) and fn:length(datosLab.resultado)<5}">
         <input type="submit" name='accion1' value='Configurar'> 
            <input type="submit" name='accion1' value='Otro'> 
             <c:forEach var="detalleeco" items="${detalleecos}">
                <input type="submit" name='accion1'      value="<c:out value="${detalleeco.aspecto}"/>">
             </c:forEach> 
          <c:if test="${(accionlab == 'Otro')}">   
             <td colspan=6><textarea  name="resultado" rows="5" cols="80" style="width: 100%" >
                       <c:out value = "" escapeXml="False"/>
                 </textarea></td>
          </c:if>
          <c:if test="${(accionlab != '' and accionlab != 'Otro')}">
              <tr>
                <th colspan="6"><c:out value="${accionlab}"/></th>
              </tr>
              <td colspan=6><textarea  name="resultado" rows="10" cols="80" style="width: 100%" >
                       <c:out value="${defecto}" escapeXml="False"/>
                  </textarea></td>  
          </c:if>        
      </c:if> <!--lista de ecografias y radiografias-->
      <c:if test="${(id_laboratorio == 12 or id_laboratorio == 13) and fn:length(datosLab.resultado)>20 and accionlab == null}">
             
             <input type="submit" name='accion1' value='Otro'> 
             <c:forEach var="detalleeco" items="${detalleecos}">
                <input type="submit" name='accion1'      value="<c:out value="${detalleeco.aspecto}"/>">
             </c:forEach>
        <tr>
          <td colspan=6>
             <textarea  name="resultado" rows="6" cols="80" style="width: 100%" >
               <c:out value = "${datosLab.resultado}" escapeXml="False"/>
           </textarea>
          </td>
       </tr> 
      </c:if> <!--cuando ya existe llenado la ecografia o radiografias -->
      <c:if test="${(id_laboratorio == 12 or id_laboratorio == 13) and fn:length(datosLab.resultado)>20 and accionlab != null}">
             <input type="submit" name='accion1' value='Configurar'> 
             <input type="submit" name='accion1' value='Otro'> 
             <c:forEach var="detalleeco" items="${detalleecos}">
                <input type="submit" name='accion1'      value="<c:out value="${detalleeco.aspecto}"/>">
             </c:forEach>
        <tr>
          <td colspan=6>
             <textarea  name="resultado" rows="6" cols="80" style="width: 100%" >
               <c:out value="${defecto}" escapeXml="False"/>
           </textarea>
          </td>
       </tr> 
      </c:if> <!--cuando ya exiete llenado la ecografia o radiografias -->
      <c:if test="${(id_costo == 144 or id_costo == 128) and fn:length(datosLab.resultado)<6}">  <!--test de embarazo-->  
        <tr>
          <td colspan="3" align="center" ><font size="4"><SELECT NAME="examen">
               <option value="POSITIVO">POSITIVO</option> 
               <option value="NEGATIVO">NEGATIVO</option>
               <option value="SinReactivo">SinReactivo</option>
           </SELECT></font></td>
          <td>FUM
               <SELECT NAME="dia">
                 <c:forEach var="dias" items="${dias}">
                   <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                     <c:out value="${dias}"/>
                   </option>  
                 </c:forEach>
               </SELECT>
               <SELECT NAME="mes">
                 <c:forEach var="meses" items="${meses}">
                   <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                     <c:out value="${meses}"/>
                   </option>  
                 </c:forEach>
               </SELECT>
               <SELECT NAME="anio">
                 <c:forEach var="anios" items="${anios}">
                   <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                     <c:out value="${anios}"/>
                   </option>  
                 </c:forEach>
                </SELECT>
            </td>  
        </tr>  
      </c:if>
      <c:if test="${(id_costo == 144 or id_costo == 128) and fn:length(datosLab.resultado)>=6}">  <!--test de embarazo-->  
        <tr>
          <td colspan="3"><c:if test="${embarazo == 'NEGATIVO'}">
            <SELECT NAME="examen">
                  <option value="NEGATIVO">NEGATIVO</option>
                  <option value="POSITIVO">POSITIVO</option> 
            </SELECT></c:if>
            <c:if test="${embarazo == 'POSITIVO'}">
            <SELECT NAME="examen">
                  <option value="POSITIVO">POSITIVO</option> 
                  <option value="NEGATIVO">NEGATIVO</option>
            </SELECT></c:if>
        </td>
          <td>FUM
               <SELECT NAME="dia">
                 <c:forEach var="dias" items="${dias}">
                   <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia}">selected</c:if>> 
                     <c:out value="${dias}"/>
                   </option>  
                 </c:forEach>
               </SELECT>
               <SELECT NAME="mes">
                 <c:forEach var="meses" items="${meses}">
                   <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes}">selected</c:if>> 
                     <c:out value="${meses}"/>
                   </option>  
                 </c:forEach>
               </SELECT>
               <SELECT NAME="anio">
                 <c:forEach var="anios" items="${anios}">
                   <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio}">selected</c:if>> 
                     <c:out value="${anios}"/>
                   </option>  
                 </c:forEach>
                </SELECT>
            </td> 
        </tr>  
      </c:if>
      <c:if test="${id_costo == 129 and fn:length(datosLab.resultado)<2}">  <!--grupo sanguineo-->  
       <tr>
           <td colspan=3 >Grupo<font size="4"><SELECT NAME="grupo">
                  <option value="O">"O"</option> 
                  <option value="A">"A"</option>
                  <option value="B">"B"</option>
                  <option value="AB">"AB"</option>
           </SELECT></font></td>
           <td colspan=3 >Factor<font size="4"><SELECT NAME="factor">
                 <option value="POSITIVO">RH POSITIVO</option>
                 <option value="NEGATIVO">RH NEGATIVO</option>
            </SELECT></font></td>
       </tr> 
      </c:if> <!--grupo sanguineo -->
      <c:if test="${id_costo == 129 and fn:length(datosLab.resultado)>=2}">  <!--grupo sanguineo-->  
       <tr>
       <c:if test="${sgrupo == 'A'}"> 
            <td colspan=3 ><font size="4"><SELECT NAME="grupo">
                 <option value="A">"A"</option>
                 <option value="B">"B"</option>
                 <option value="O">"O"</option>
                 <option value="AB">"AB"</option>
            </SELECT></font></td>
            </c:if>
            <c:if test="${sgrupo == 'B'}"> 
            <td colspan=3 ><font size="4"><SELECT NAME="grupo">
                 <option value="B">"B"</option>
                 <option value="A">"A"</option>
                 <option value="O">"O"</option>
                 <option value="AB">"AB"</option>
            </SELECT></font></td>
            </c:if>
            <c:if test="${sgrupo == 'AB'}"> 
            <td colspan=3 ><font size="4"><SELECT NAME="grupo">
                <option value="AB">"AB"</option>
                 <option value="B">"B"</option>
                 <option value="A">"A"</option>
                 <option value="O">"O"</option>
                 
            </SELECT></font></td>
            </c:if>
            <c:if test="${sgrupo == 'O'}"> 
            <td colspan=3 ><font size="4"><SELECT NAME="grupo">
                 <option value="O">"O"</option>
                 <option value="A">"A"</option>
                 <option value="B">"B"</option>
                 <option value="AB">"AB"</option>
            </SELECT></font></td>
            </c:if>
            <c:if test="${sfactor == 'POSITIVO'}"> 
              <td colspan=3 ><font size="4"><SELECT NAME="factor">
                 <option value="POSITIVO">RH POSITIVO</option>
                 <option value="NEGATIVO">RH NEGATIVO</option>
             </SELECT></font></td>
            </c:if>
            <c:if test="${sfactor == 'NEGATIVO'}"> 
            <td colspan=3 ><font size="4"><SELECT NAME="factor">
                 <option value="NEGATIVO">RH NEGATIVO</option>
                 <option value="POSITIVO">RH POSITIVO</option>
            </SELECT></font></td>
            </c:if>
       </tr> 
      </c:if> <!--grupo sanguineo -->
     <c:if test="${id_costo == 137 and nhemogra=='0'}">     
          <tr>
            <td colspan=6 align="center">LABORATORIO HEMATOLOGIA</td>
          </tr> 
          <tr>
            <td class="etiqueta" align="right">Globulos Rojos:</td>
            <td><input type="text" name="grojo" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">x uL</td>
            <td class="etiqueta" align="right">Globulos Blancos:</td>
            <td><input type="text" name="gblanco" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">x uL</td>
          </tr>
          <tr>
            <td class="etiqueta" align="right">Hemato<br>critos:</td>
            <td><input type="text" name="hematocrito" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta">%</td>
            <td class="etiqueta" align="right">Hemoglo<br>bina:</td>
            <td><input type="text" name="hemoglobina" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">g/IL</td>
          </tr>
          <tr>
            <td colspan=6 align="center">RECUENTO DIFERENCIAL DE LEUCOCITOS</td>
         </tr>
         <tr>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
           
         </tr>
         <tr>
            <td class="etiqueta" align="right">Bas.:</td>
            <td><input type="text" name="bas" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta">[0-1]</td>
            <td class="etiqueta" align="right">Eos.:</td>
            <td><input type="text" name="eos" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">[0-4]</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Mielo:</td>
            <td><input type="text" name="mielo" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta">[0]</td>
            <td class="etiqueta" align="right">Juy.:</td>
            <td><input type="text" name="juy" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">[0-4]</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Caya:</td>
            <td><input type="text" name="cay" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta">[0-3]</td>
            <td class="etiqueta" align="right">Seg.:</td>
            <td><input type="text" name="seg" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">55-65</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Linf.:</td>
            <td><input type="text" name="linf" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta">[25-35]</td>
            <td class="etiqueta" align="right">Mono:</td>
            <td><input type="text" name="mono" value="0" size="10" maxlength="10"></td>
            <td class="etiqueta" style="font-size:6pt">[2-6]</td>
         </tr>
         <tr>
            <td colspan=6 align="center">MORFOLOGIA SANGUNEA</td>
         </tr>	 	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="right">Plaquetas:</td>
            <td><input type="text" name="splaquetas" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta">[uL]</td>
            <td class="etiqueta" align="right">T.Protombina:</td>
            <td><input type="text" name="protombina" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[Sec]</td>
         </tr>	 	 	 	 	  	 	  	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="right">% de Actividad</td>
            <td><input type="text" name="actividad" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta">[%]</td>
            <td class="etiqueta" align="right">INR:</td>
            <td><input type="text" name="ireti" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[Sec]</td>
         </tr>	  	 	  	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="right">TTPA</td>
            <td><input type="text" name="activid" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta">[%]</td>
            <td class="etiqueta" align="right"></td>
            <td></td>
            <td class="etiqueta" style="font-size:6pt"></td>
         </tr>	  	 	  	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="left">Otros:</td>
            <td colspan=5><input type="text" name="otro" value="0" size="60" maxlength="100"></td>
        </tr>	  	 	  	 	 	 	
  </c:if> 
  
   <c:if test="${id_costo == 137 and nhemogra=='1'}">     
       <c:forEach var="listaHemo" items="${hemogram}">  <!--si existe el examen modifica en detallesangre  -->
          <tr>
            <td colspan=6 align="center">HEMOGRAMA</td>
          </tr> 
           <tr>
            <td class="etiqueta" align="right">Globulos Rojos:</td>
            <td><input type="text" name="grojo" value="<c:out value = "${listaHemo.sglorojos}"/>" size="20" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">x uL</td>
            <td class="etiqueta" align="right">Globulos Blancos:</td>
            <td><input type="text" name="gblanco" value="<c:out value = "${listaHemo.sblancos}"/>" size="20" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">x uL</td>
          </tr>
          <tr>
            <td class="etiqueta" align="right">Hemato<br>critos:</td>
            <td><input type="text" name="hematocrito" value="<c:out value = "${listaHemo.shemato}"/>" size="20" maxlength="20"></td>
            <td class="etiqueta">%</td>
            <td class="etiqueta" align="right">Hemoglo<br>bina:</td>
            <td><input type="text" name="hemoglobina" value="<c:out value = "${listaHemo.shemoglo}"/>" size="20" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">g/IL</td>
          </tr>
          <tr>
            <td colspan=6 align="center">RECUENTO DIFERENCIAL DE LEUCOCITOS</td>
         </tr>
         <tr>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
            <td class="etiqueta" colspan="2" align="center">PORCENTUAL</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Bas.:</td>
            <td><input type="text" name="bas" value="<c:out value = "${listaHemo.sbas}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[0-1]</td>
            <td class="etiqueta" align="right">Eos.:</td>
            <td><input type="text" name="eos" value="<c:out value = "${listaHemo.seos}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[0-4]</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Mielo:</td>
            <td><input type="text" name="mielo" value="<c:out value = "${listaHemo.smielo}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[0]</td>
            <td class="etiqueta" align="right">Juy.:</td>
            <td><input type="text" name="juy" value="<c:out value = "${listaHemo.sjuy}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[0-4]</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Caya:</td>
            <td><input type="text" name="cay" value="<c:out value = "${listaHemo.scay}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[0-3]</td>
            <td class="etiqueta" align="right">Seg.:</td>
            <td><input type="text" name="seg" value="<c:out value = "${listaHemo.sseg}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">55-65</td>
         </tr>
         <tr>
            <td class="etiqueta" align="right">Linf.:</td>
            <td><input type="text" name="linf" value="<c:out value = "${listaHemo.slinf}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[25-35]</td>
            <td class="etiqueta" align="right">Mono:</td>
            <td><input type="text" name="mono" value="<c:out value = "${listaHemo.smono}"/>" size="20" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[2-6]</td>
         </tr>
         <tr>
            <td colspan=3 align="center">MORFOLOGIA SANGUNEA</td>
            <td colspan=3 align="center">PARAMETROS</td>
         </tr>	
         <tr>
            <td class="etiqueta" align="right">Plaquetas:</td>
            <td><input type="text" name="splaquetas" value="<c:out value = "${listaHemo.smplaquetas}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[uL]</td>
            <td class="etiqueta" align="right">T.Protombina:</td>
            <td><input type="text" name="protombina" value="<c:out value = "${listaHemo.cetonas}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[Sec]</td>
         </tr>	 	 	 	 	  	 	  	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="right">% de Actividad</td>
            <td><input type="text" name="actividad" value="<c:out value = "${listaHemo.reaccion}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta">[%]</td>
            <td class="etiqueta" align="right">INR:</td>
            <td><input type="text" name="ireti" value="<c:out value = "${listaHemo.smindreti}"/>" size="10" maxlength="20"></td>
            <td class="etiqueta" style="font-size:6pt">[Sec]</td>
         </tr>	  	 	  	 	 	 	 	 
         <tr>
            <td class="etiqueta" align="right">TTPA</td>
            <td><input type="text" name="activid" value="0" size="10" maxlength="20"></td>
            <td class="etiqueta">[%]</td>
            <td class="etiqueta" align="right"></td>
            <td></td>
            <td class="etiqueta" style="font-size:6pt"></td>
         </tr>	  	  	 	 	 	 
         <tr>
            <td class="etiqueta" align="left">Otros:</td>
            <td colspan=5><input type="text" name="otro" value="<c:out value = "${listaHemo.smotros}"/>" size="60" maxlength="100"></td>
        </tr>
    </c:forEach>	  	 	  	 	 	 	
  </c:if> 
  <c:if test="${id_costo == 121 and norina=='0'}">  <!--si no existe el examen crea nuevo en detalleorina  -->
     <tr>
        <td colspan=4 align="center"><u><b>SEDIMENTO URINARIO</u></b></td>
      </tr> 
     
      <tr>
        <td colspan=4 align="center"><u><b>EXAMEN MICROSCOPICO DE SEDIMENTO</u></b></td>
      </tr> 
      <tr>
        <td class="etiqueta" align="right">Cel Epiteliares:</td>
        <td><input type="text" name="epiteli" value=0 size="15" maxlength="20"></td>
      	<td class="etiqueta" align="right">Cilindros:</td>
        <td><input type="text" name="cilindros" value="0" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Leucocitos:</td>
        <td><input type="text" name="leuco" value=0 size="15" maxlength="20"></td>
	<td class="etiqueta" align="right">Granulosos:</td>
        <td><input type="text" name="granulosos" value="0" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Hematies:</td>
        <td><input type="text" name="hematies" value=0 size="15" maxlength="20"></td>
        <td class="etiqueta" align="right">Hialinos:</td>
        <td><input type="text" name="hialianos" value="0" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Piocitos:</td>
        <td><input type="text" name="piocitos" value=0 size="15" maxlength="20"></td>
	<td class="etiqueta" align="right">Leucocitarios:</td>
        <td><input type="text" name="leucocitarios" value="0" size="15" maxlength="20"></td>
      </tr>
      <tr>
        <td class="etiqueta" align="right">Bacterias:</td>
        <td><input type="text" name="bacteria" value=0 size="15" maxlength="20"></td>
        <td class="etiqueta" align="right">Cristales:</td>
        <td><input type="text" name="cristales" value="0" size="15" maxlength="20"></td>
      </tr>	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Otros:</td>
        <td colspan=3><input type="text" name="otros" value="" size="50" maxlength="50" placeholder="Uratos Amorfo, Escasa Cantidad..."></td>
      </tr>  
      <tr>
       	<td class="etiqueta" align="right">Observaciones:</td>
        <td colspan=3><input type="text" name="observa" value="" size="50" maxlength="50" placeholder="Filamentos Mocoide..."></td>
      </tr>	 	  	 	  
  </c:if> 
  
  <c:if test="${id_costo == 121 and norina=='1'}">  <!--si ya existe el examen solo modifica  -->
    <c:forEach var="listao" items="${orinas}" varStatus="Num"> 
     <tr>
        <td colspan=4 align="center"><u><b>SEDIMENTO URINARIO</u></b></td>
      </tr> 
      <tr>
        <td colspan=4 align="center"><u><b>EXAMEN MICROSCOPICO DE SEDIMENTO</u></b></td>
      </tr> 
      <tr>
        <td class="etiqueta" align="right">Cel Epiteliares:</td>
        <td><input type="text" name="epiteli" value="<c:out value = "${listao.epiteliales}"/>" size="15" maxlength="20"></td>
      	<td class="etiqueta" align="right">Cilindros:</td>
        <td><input type="text" name="cilindros" value="<c:out value = "${listao.cilindros}"/>" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Leucocitos:</td>
        <td><input type="text" name="leuco" value="<c:out value = "${listao.leucocitos}"/>" size="15" maxlength="20"></td>
	<td class="etiqueta" align="right">Granulosos:</td>
        <td><input type="text" name="granulosos" value="<c:out value = "${listao.granulosos}"/>" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Hematies:</td>
        <td><input type="text" name="hematies" value="<c:out value = "${listao.ematies}"/>" size="15" maxlength="20"></td>
        <td class="etiqueta" align="right">Hialinos:</td>
        <td><input type="text" name="hialianos" value="<c:out value = "${listao.hialianos}"/>" size="15" maxlength="20"></td>
      </tr> 	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Piocitos:</td>
        <td><input type="text" name="piocitos" value="<c:out value = "${listao.piocitos}"/>" size="15" maxlength="20"></td>
	<td class="etiqueta" align="right">Leucocitarios:</td>
        <td><input type="text" name="leucocitarios" value="<c:out value = "${listao.leucocitarios}"/>" size="15" maxlength="20"></td>
      </tr>
      <tr>
        <td class="etiqueta" align="right">Bacterias:</td>
        <td><input type="text" name="bacteria" value="<c:out value = "${listao.bacterias}"/>" size="15" maxlength="20"></td>
        <td class="etiqueta" align="right">Cristales:</td>
        <td><input type="text" name="cristales" value="<c:out value = "${listao.cristales}"/>" size="15" maxlength="20"></td>
      </tr>	 	  	 	  
      <tr>
        <td class="etiqueta" align="right">Otros:</td>
        <td colspan=3><input type="text" name="otros" value="<c:out value = "${listao.smotros}"/>" size="50" maxlength="50"></td>
      </tr>  
      <tr>
       	<td class="etiqueta" align="right">Observaciones:</td>
        <td colspan=3><input type="text" name="observa" value="<c:out value = "${listao.observaciones}"/>" size="50" maxlength="100"></td>
      </tr>	 	  	 	  
   </c:forEach>	 	  	 	  
  </c:if>  
    
    <c:if test="${quimicas == 'quimicas' }"> 
      <tr>
        <td colspan=4 align="center"><u><b>QUIMICA SANGUINEEA</u></b></td>
      </tr>
      
       <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='141' }">    <!--"acido urico" -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q141" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
       </c:forEach>
       <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='249' }">    <!--ALcoholemia -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q249" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
       <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='147' }">     <!--albumina-->
           <tr><td  colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q147" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='163' }">     <!--amilasa -->
           <tr><td  colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q163" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='153' }">    <!--ASTO -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2">
           <c:if test="${listaquim.resultado == 'Positivo'}">
            <SELECT NAME="q153">
                  <option value="Positivo">Positivo</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado != 'Positivo'}">
            <SELECT NAME="q153">
                  <option value="Negativo">Negativo</option>
                  <option value="Positivo">Positivo</option>
            </SELECT></c:if>
           </td></tr>
         </c:if>   
       </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='200' }">   <!--bilirrubina directa -->
           <tr><td  colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q200" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='201' }">    <!--bilirrubina indirecta -->
           <tr><td  colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q201" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='109' }">   <!--bilirrubina totales -->
           <tr><td  colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q109" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='248' }">    <!--BUM -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q248" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
       </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='214' }">   <!--CPK-MB -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q214" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='164' }">   <!--Calcio -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q164" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='212' }">    <!--Cloro -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q212" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='148' }">   <!--Colesterol -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q148" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='202' }">    <!--creatinina -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q202" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='117' }">    <!--creatinina -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q117" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='220' }">    <!--DCE -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q220" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='125' }">    <!--Fosfatasa Acida -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q125" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>
       </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='203' }">    <!--Fosfatasa Alcalina -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q203" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='204' }">    <!--Fosfatasa fraccion Prostatica -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q204" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='205' }">    <!--Fosforo -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q205" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     
       <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='114' }"> <!--Proteinuria en 24 horas -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q114" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>
       </c:forEach>
       
       <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='215' }">    <!--GGT -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q215" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
      </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='131' }">    <!--Glicemia/Glucosa -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q131" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>
       </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='167' }">    <!--HDLc -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q167" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='218' }">    <!--Hb Glicosilada A 1c -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q218" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='155' }">    <!--LATEX -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2">
           <c:if test="${listaquim.resultado == 'Positivo'}">
            <SELECT NAME="q155">
                  <option value="Positivo">Positivo</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado != 'Positivo'}">
            <SELECT NAME="q155">
                  <option value="Negativo">Negativo</option>
                  <option value="Positivo">Positivo</option>
            </SELECT></c:if>
           </td></tr>
         </c:if>   
       </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='152' }">   <!--LDH -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q152" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='168' }">    <!--LDLc -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q168" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='216' }">    <!--LIPASA-->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q216" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='213' }">    <!--Magnesio-->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q213" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='217' }">    <!--NUS-->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q217" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='607' }">    <!--PCR -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2">
           <c:if test="${listaquim.resultado == 'Positivo'}">
            <SELECT NAME="q607">
                  <option value="Positivo">Positivo</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado != 'Positivo'}">
            <SELECT NAME="q607">
                  <option value="Negativo">Negativo</option>
                  <option value="Positivo">Positivo</option>
            </SELECT></c:if>
           </td></tr>
         </c:if>   
       </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='211' }">     <!--Potasio-->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q211" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='208' }">     <!--Proteinas Totales-->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q208" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='210' }">    <!--Sodio -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q210" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
      <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='149' }">    <!--TRIGLICERIDOS -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q149" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='206' }">    <!--Transaminasas T.G.O. -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q206" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='207' }">    <!--Transaminasas T.G.P. -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q207" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='171' }">    <!--Troponina -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2">
           <c:if test="${listaquim.resultado == 'Positivo'}">
            <SELECT NAME="q171">
                  <option value="Positivo">Positivo</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado != 'Positivo'}">
        <SELECT NAME="q171">
                  <option value="Negativo">Negativo</option>
                  <option value="Positivo">Positivo</option>
            </SELECT></c:if>
           </td></tr>
         </c:if>   
       </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='150' }">   <!--UREA -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2"><input type="text" name="q150" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
         </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='209' }">    <!--VLDLc -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
             <td colspan="2"><input type="text" name="q209" value="<c:out value="${listaquim.resultado}"/>" size=30 maxlength=30 onblur='validar(entrada,"9")'/></td>      
           </tr>
         </c:if>   
     </c:forEach>
     <c:forEach var="listaquim" items="${listaquim}" varStatus="contador">  
         <c:if test="${listaquim.id_costo=='132' }">    <!--Reaccion Widal -->
           <tr><td colspan="2"><c:out value="${listaquim.laboratorio}"/></td>        
           <td colspan="2">
           <c:if test="${listaquim.resultado == 'Positivo 1/160'}">
            <SELECT NAME="q132">
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado == 'Positivo 1/20'}">
            <SELECT NAME="q132">
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado == 'Positivo 1/320'}">
            <SELECT NAME="q132">    
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado == 'Positivo 1/40'}">
            <SELECT NAME="q132">      
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado == 'Positivo 1/640'}">
            <SELECT NAME="q132">      
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado == 'Positivo 1/80'}">
            <SELECT NAME="q132">       
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
                  <option value="Negativo">Negativo</option>
            </SELECT></c:if>
            <c:if test="${listaquim.resultado != 'Positivo 1/640' and listaquim.resultado != 'Positivo 1/40' and listaquim.resultado != 'Positivo 1/320' and listaquim.resultado != 'Positivo 1/20' and listaquim.resultado != 'Positivo 1/160' and listaquim.resultado != 'Positivo 1/80' }">
            <SELECT NAME="q132">       
                  <option value="Negativo">Negativo</option>
                  <option value="Positivo 1/80">Positivo 1/80</option>
                  <option value="Positivo 1/160">Positivo 1/160</option>
                  <option value="Positivo 1/20">Positivo 1/20</option>
                  <option value="Positivo 1/320">Positivo 1/320</option>
                  <option value="Positivo 1/40">Positivo 1/40</option>
                  <option value="Positivo 1/640">Positivo 1/640</option>
            </SELECT></c:if>
           </td></tr>
         </c:if>   
       </c:forEach>
     
  </c:if>    
  
  <c:if test="${serologia == 'serologia' and id_estado=='A' }"> 
      <tr>
        <td colspan=4 align="center"><u><b>SEROLOGIA</u></b></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Proteina C Reactiva:</td>
          <td ><input type="text" name="q212" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">PSA:</td>
          <td ><input type="text" name="q224" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Factor Reumatoideo:</td>
          <td ><input type="text" name="q123" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">HELICOBACTER PYLON:</td>
          <td ><input type="text" name="q157" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Anti Streptolisina "O" (ASTO):</td>
          <td ><input type="text" name="q153" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">Dosificacion HGC:</td>
          <td ><input type="text" name="q225" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Reaccion_Widal:</td>
          <td ><input type="text" name="q132" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">Troponina:</td>
          <td ><input type="text" name="q226" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Antigeno "O" </td>
          <td align="right"><font style="font-size:8pt"><b>somatico:</b></font><input type="text" name="q154" value="0" size="10" maxlength="20"></td>
          <td class="etiqueta" align="right">ELISA Chagas:</td>
          <td ><input type="text" name="q227" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Antigeno "H" </td>
          <td align="right"><font style="font-size:8pt"><b>flagelar:</b></font><input type="text" name="q154" value="0" size="10" maxlength="20"></td>
          <td class="etiqueta" align="right">ELISA Toxoplasmosis:</td>
          <td ><input type="text" name="q228" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Antigeno </td>
          <td align="right"><font style="font-size:8pt"><b>"a" :</b></font><input type="text" name="q154" value="0" size="10" maxlength="20"></td>
          <td class="etiqueta" align="right">T3:</td>
          <td ><input type="text" name="q234" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Antigeno </td>
          <td align="right"><font style="font-size:8pt"><b>"b" :</b></font><input type="text" name="q154" value="0" size="10" maxlength="20"></td>
          <td class="etiqueta" align="right">T4:</td>
          <td ><input type="text" name="q235" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">V.D.R.L.:</td>
          <td ><input type="text" name="q134" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">TSH:</td>
          <td ><input type="text" name="q237" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">R.P.R.:</td>
          <td ><input type="text" name="q134" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">T4 libre:</td>
          <td ><input type="text" name="q236" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">Prueba Rapida para VIH:</td>
          <td ><input type="text" name="q154" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">ELISA Cisticercosis:</td>
          <td ><input type="text" name="q229" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">HEPATITIS A:</td>
          <td ><input type="text" name="q221" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">PSA:</td>
          <td ><input type="text" name="q224" value="0" size="20" maxlength="20"></td>
      </tr>
      <tr>    
          <td class="etiqueta" align="right">HEPATITIS B:</td>
          <td ><input type="text" name="q222" value="0" size="20" maxlength="20"></td>
          <td class="etiqueta" align="right">HEPATITIS C:</td>
          <td ><input type="text" name="q223" value="0" size="20" maxlength="20"></td>
      </tr>
  </c:if>    
  
  
 </table>
 <center>
 <input type="submit" name='accion' class="btn btn-primary" value='Aceptar'>
 <input type="submit" name='accion' class="btn btn-danger" value='Cancelar'>
 <input type="hidden" name='id_costo'       value='<c:out value="${id_costo}"/>'>
 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
 <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
 <input type="hidden" name='id_pedido'       value='<c:out value="${id_pedido}"/>'>
 <input type="hidden" name='estab1'          value='<c:out value="${estab}"/>'>
 <input type="hidden" name='medico1'         value='<c:out value="${medico}"/>'>
 <input type="hidden" name='id_cuaderno'     value='<c:out value="${id_cuaderno}"/>'>
 <input type="hidden" name='id_historial'    value='<c:out value="${id_historial}"/>'>  
 <input type="hidden" name='id_detalle'      value='<c:out value="${id_detalle}"/>'>    
 <input type="hidden" name="expedido"        value=<c:out value="${expedido}"/> >         
 <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 <input type="hidden" name='accionlab'       value='<c:out value="${accionlab}"/>'>
 </center>
 </form>
  </td>  
  </c:if> 
  </tr>
  </table>
 <c:if  test="${expedido == 'S'}"> 
 <form name="terminar" method="POST" action='<c:url value="/LabSumiPaciente.do"/>' >
    <input type="submit" name='accion' class="btn btn-primary" value='Terminar'>
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='estab1'          value='<c:out value="${estab}"/>'>
    <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
    <input type="hidden" name='medico1'         value='<c:out value="${medico}"/>'>
    <input type="hidden" name='id_cuaderno'     value='<c:out value="${id_cuaderno}"/>'>
    <input type="hidden" name='id_reservacion'    value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name="expedido"        value=<c:out value="${expedido}"/> >         
    <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 </form>
 </c:if> 
 <c:if  test="${expedido != 'S'}"> 
 <form name="terminar" method="POST" action='<c:url value="/LabPacPendiente.do"/>' >
    <input type="submit" name='accion' class="btn btn-primary" value='Terminar'>
    <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
    <input type="hidden" name='estab1'          value='<c:out value="${estab}"/>'>
    <input type="hidden" name='id_pedido'      value='<c:out value="${id_pedido}"/>'>
    <input type="hidden" name='medico1'         value='<c:out value="${medico}"/>'>
    <input type="hidden" name='id_cuaderno'     value='<c:out value="${id_cuaderno}"/>'>
    <input type="hidden" name='id_reservacion'  value='<c:out value="${id_historial}"/>'>
    <input type="hidden" name="expedido"        value=<c:out value="${expedido}"/> >         
    <input type="hidden" name='accion'          value='<c:out value="${accion}"/>'>
 </form>
 </c:if> 

<br>  
<br>  
<br> 
<br>  
<br> 


<center><div style="font-size:15pt"> Laboratorio Realizados Pasados</div></center>          
          
<table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="50%">
  <tr style="font-size:9pt">
    <th> Nro </th>
    <th> Fecha Pedido </th>
    <th> Tipo </th>    
    <th> Medico  </th> 
    <th> Imprimir </th>
    <th> Imprimir </th>
    </tr>  
   <c:forEach var="listado" items="${listalab11}" varStatus="contador">
    <tr style="font-size:9pt">
       <td><c:out value="${contador.count}"/></td> 
       <td><fmt:formatDate value="${listado.fecha}" pattern='dd/MM/yyyy HH:mm'/></td> 
       <td><c:out value="${listado.expedido}"/></td>
       <td><c:out value="${listado.nombre}"/></td>     
      <form name=formaImp<c:out value="${contador.count}"/> method=post action='<c:url value="/PedirLaboratorio.do"/>'>
       <td>     
         <div class="imprimir"><a href="javascript:document.formaImp<c:out value="${contador.count}"/>.submit();">Pedido</a></div>
         <input type="hidden" name="id_paciente"    value=<c:out value="${listado.id_paciente}"/> >   
         <input type="hidden" name='id_pedido'      value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'     value='<c:out value="${listado.id_persona}"/>'>
         <input type="hidden" name="id_historial"   value=<c:out value="${listado.id_historial}"/> >         
         <input type="hidden" name="expedido"       value=<c:out value="${listado.expedido}"/> > 
  	 <input type="hidden" name="accion"         value='adicion' >
	 <input type="hidden" name="sw"             value='1' >
       </td>
     </form>   
     <form name=formaImg<c:out value="${contador.count}"/> method=post action='<c:url value="/VerLaboratorio.do"/>'>
       <td>
         <div class="imprimir"><a href="javascript:document.formaImg<c:out value="${contador.count}"/>.submit();">Resultado</a></div>
         <input type="hidden" name='id_paciente'  value='<c:out value="${id_paciente}"/>'> 
         <input type="hidden" name='id_pedido'    value='<c:out value="${listado.id_pedido}"/>'> 
         <input type="hidden" name='id_persona'   value='<c:out value="${id_persona}"/>'> 
         <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>    
         <input type="hidden" name='id_detalle'   value='<c:out value="${id_detalle}"/>'>    
         <input type="hidden" name='expedido'     value='<c:out value="${expedido}"/>' > 
         <input type="hidden" name='accionpred'   value='pred1'>
         <input type="hidden" name='accionl'      value='general'>
	 <input type="hidden" name='sw'           value='1' >
       </td>
     </form>
    </tr>
   </c:forEach>
</table>

<table class="table table-striped table-bordered table-hover table-condensed table-responsive" width="50%">
  <tr style="font-size:9pt">
    <th> NRO </th>
    <th> FECHA </th>
    <th> LABORATORIO </th>
    <th> INDICACIONES </th>    
    <th> RESULTADO </th>        
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td><c:out value="${lista.laboratorio}"/></td>    
       <td><c:out value="${lista.tipoconsulta}"/></td>         
       <td> <c:out value = "${lista.resultado}" escapeXml="False"/></td>  
      </tr>    
   </c:forEach>
</table>

