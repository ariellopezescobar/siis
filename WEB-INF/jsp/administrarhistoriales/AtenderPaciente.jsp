<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

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
<script language='JavaScript' SRC="./validar.js"></script>

<form name="adicionarcolegio" method="POST" action='<c:url value="/AtenderPaciente.do"/>' >
<table class="table table-striped table-condensed table-responsive">
  <tr>
    <td valign="top">
    <table class="table table-bordered table-hover table-condensed table-responsive">
      <tr style="font-size:10pt">    
        <td bgcolor="#F2F2F2">Nombres :: <c:out value = "${datos.nombres}"/></td>    
        <td bgcolor="#EAEAE6">HCL :: <c:out value = "${datos.hcl}"/></td>
        <td bgcolor="#F2F2F2">Matricula :: <c:out value = "${datos.nro_registro}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Fecha de nac. :: <c:out value = "${fec_nacimiento}"/> </td>    
        <td bgcolor="#EAEAE6">Edad :: <c:out value = "${datos.edad}"/>años;<c:out value = "${datos.mes}"/>meses;<c:out value = "${datos.dia}"/>dias&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="font-size:12pt; color:blue"><c:if test="${datos.id_tipo_sexo==1}"> Femenino</c:if><c:if test="${datos.id_tipo_sexo!=1}"> Masculino</c:if></font></td>
        <td bgcolor="#F2F2F2">Patronal :: <c:out value = "${datos.registro}"/></td>    
      </tr>
      <tr style="font-size:10pt">
        <td bgcolor="#F2F2F2">Direccion :: <c:out value = "${datos.direccion}"/></td>    
        <td bgcolor="#EAEAE6">Ocupacion :: <c:out value = "${datos.ocupacion}"/></td>
        <td bgcolor="#F2F2F2">Empresa :: <c:out value="${fn:substring(datos.cadena1,0,20)}"/></td>
      </tr>  

      <tr>
        <c:if test="${fn:length(datos.factor_riesgo)>2}"> 
           <th colspan="2" align="left"><font style="font-size:9pt; color:red"><b>Fact. Riesgo::<input type="text" style="color:red; font-size:16pt;" class="form-control" name="friesgo" value="<c:out value="${datos.factor_riesgo}"/>" maxlength=60 size=60></b></font></th>
        </c:if>   
        <c:if test="${!(fn:length(datos.factor_riesgo)>2)}"> 
           <th  colspan="2" align="left"><font style="font-size:9pt; color:blue"><b>Fact. Riesgo::</b><input type="text" name="friesgo" value="" maxlength=60 size=60 class="form-control" placeholder="Identifique los factores de riesgo del Paciente (Alergias, TB, VIH, etc)..."></font></th>
        </c:if>   
        <th><font style="font-size:9pt; color:blue"><b>Grupo.Sangre::</b><br></font>
        <c:if test="${datos.tipo_sanguineo == 'X   -DESCONOCE'}"> 
            <font size="4"><SELECT class="form-control" NAME="grupo">
                 <option value="X   -DESCONOCE" selected>"X"   DESCONOCE</option>
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
            </SELECT></font>
            </c:if>
        <c:if test="${datos.tipo_sanguineo == 'O -RH POSITIVO'}"> 
            <font size="4"><SELECT NAME="grupo">
                 <option value="O -RH POSITIVO" selected>"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'O -RH NEGATIVO'}"> 
            <font size="4"><SELECT NAME="grupo">   
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO" selected>"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'A -RH POSITIVO'}"> 
            <font size="4"><SELECT NAME="grupo">
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO" selected>"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'A -RH NEGATIVO'}"> 
            <font size="4"><SELECT NAME="grupo">
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO" selected>"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'B -RH POSITIVO' }"> 
            <font size="4"><SELECT NAME="grupo">
                 
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO" selected>"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'B -RH NEGATIVO' }"> 
            <font size="4"><SELECT NAME="grupo">
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO" selected>"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'AB-RH NEGATIVO' }"> 
            <font size="4"><SELECT NAME="grupo">
                 
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO" selected>"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo == 'AB-RH POSITIVO' }"> 
            <font size="4"><SELECT NAME="grupo">
                 
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO" selected>"AB"RH POSITIVO</option>
                 <option value="X   -DESCONOCE">"X"   DESCONOCE</option>
            </SELECT></font>
            </c:if>
            <c:if test="${datos.tipo_sanguineo != 'X   -DESCONOCE' and datos.tipo_sanguineo != 'O -RH POSITIVO' and datos.tipo_sanguineo != 'O -RH NEGATIVO' and datos.tipo_sanguineo != 'A -RH POSITIVO' and datos.tipo_sanguineo != 'A -RH NEGATIVO' and datos.tipo_sanguineo != 'B -RH POSITIVO' and datos.tipo_sanguineo != 'B -RH NEGATIVO' and datos.tipo_sanguineo != 'AB-RH POSITIVO' and datos.tipo_sanguineo != 'AB-RH NEGATIVO'}"> 
            <font size="4"><SELECT NAME="grupo">
                 <option value="X   -DESCONOCE" selected>"X"   DESCONOCE</option>
                 <option value="O -RH POSITIVO">"O" RH POSITIVO</option>
                 <option value="O -RH NEGATIVO">"O" RH NEGATIVO</option>
                 <option value="A -RH POSITIVO">"A" RH POSITIVO</option>
                 <option value="A -RH NEGATIVO">"A" RH NEGATIVO</option>
                 <option value="B -RH POSITIVO">"B" RH POSITIVO</option>
                 <option value="B -RH NEGATIVO">"B" RH NEGATIVO</option>
                 <option value="AB-RH NEGATIVO">"AB"RH NEGATIVO</option>
                 <option value="AB-RH POSITIVO">"AB"RH POSITIVO</option>
            </SELECT></font>
            </c:if>
            <!--fin de grupos sanguineos malos 13/08/2014--> 
        <input type="submit" name='accionx' class="btn btn-warning" value='Grabar.'></th> 
      
      </tr> 
      
      
      <c:if test="${datos.embarazo==1}">
      <tr>    
        <td ><input type="submit" name='accionperi' class="btn btn-success" value='Perinatal'>
        F.U.M.
           <SELECT NAME="dia">
             <c:forEach var="dias" items="${dias}">
    	       <OPTION value="<c:out value="${dias}"/>" <c:if test="${dias == dia_fum}">selected</c:if>> 
	         <c:out value="${dias}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="mes">
             <c:forEach var="meses" items="${meses}">
    	       <OPTION value="<c:out value="${meses}"/>" <c:if test="${meses == mes_fum}">selected</c:if>> 
	         <c:out value="${meses}"/>
	     </c:forEach>
	   </SELECT>
	   <SELECT NAME="anio">
             <c:forEach var="anios" items="${anios}">
    	       <OPTION value="<c:out value="${anios}"/>" <c:if test="${anios == anio_fum}">selected</c:if>> 
	         <c:out value="${anios}"/>
	     </c:forEach>
	    </SELECT>
        </td>
	<td>No. Embarazo::
        <SELECT NAME="nembarazo">
             <c:forEach var="numemba" items="${numemba}">
    	       <OPTION value="<c:out value="${numemba}"/>" <c:if test="${numemba == nemba}">selected</c:if>> 
	         <c:out value="${numemba}"/>
	     </c:forEach>
	   </SELECT></td>
        <td>Semanas::<font color="blue"><c:out value = "${semanas}"/></font>.  (<c:out value = "${ndias}"/>dias) 
        <input type="submit" name='accionx' class="btn btn-warning" value='Grabar'></td>
      </tr>    
      </c:if> 
      
      <c:if test="${cod_esta == '200010'}">
       <tr >
          <c:if test="${fn:length(datoshisto.registro)<4}"> 
              <th colspan="3" align="left"><input style="color:blue" type="text" name="riesgovig" class="form-control" value="" maxlength=250 size=150 placeholder="Llene este espacio en caso de Clasificar al paciente como Riesgo"></th>
          </c:if>
          <c:if test="${fn:length(datoshisto.registro)>3}"> 
              <th colspan="3" align="left"><input type="text" name="riesgovig" class="form-control" value="<c:out value="${datoshisto.registro}"/>" maxlength=250 size=150 ></th>
          </c:if>             
       </tr>
     </c:if>  
    
 </table>
 
 
 
<table class="table table-striped table-bordered table-condensed table-responsive">

   <tr>
    <td width="20%" valign="top">
    <table class="table table-striped table-condensed table-responsive">
      <c:if test="${swreser!='si'}"> 
         <tr style="font-size:8pt">
           <td align="center" ><input type="submit" name='accion' class="btn btn-info btn-xs" value='Repetir Ult.Talla'> </td>
           <td align="center" ><input type="submit" name='accion' class="btn btn-info btn-xs" value='Repetir Ult.Historial'> </td>
         </tr>   
      </c:if>    
      
      <tr style="font-size:9pt">
        <td > Talla{cm} </td>
        <td><input type="text" name="talla1" size=6 maxlength=6 value="<c:out value="${datoshisto.talla}"/>" onblur='validar(talla1,"9")'/>                      
         <c:if test="${pesoedad=='N'}">
           <font>P/E : P Normal</font>
        </c:if>
        <c:if test="${pesoedad=='L'}">
           <font color="red">P/E : Bajo P</font>
        </c:if>
         <c:if test="${pesoedad=='G'}">
           <font color="red">P/E : Desnut. Gr</font>
        </c:if>
        </td>
     </tr>  
     <tr style="font-size:9pt">    
        <td >Peso{Kg} </td>   	
        <td><input type="text" name="peso1" size=6 maxlength=6 value="<c:out value="${datoshisto.peso}"/>"  onblur='validar(peso1,"9")'/>                      
        <c:if test="${nutricion=='N'}">
           <font>P/T : Normal</font>
        </c:if>
        <c:if test="${nutricion=='S'}">
           <font>P/T : Sobrepeso</font>
        </c:if>
        <c:if test="${nutricion=='O'}">
           <font>P/T : Obesidad</font>
        </c:if>
        <c:if test="${nutricion=='L'}">
           <font>P/T : Normal</font>
        </c:if>
        <c:if test="${nutricion=='M'}">
           <font color="red">P/T : Desnut. Mod.</font>
        </c:if>
        <c:if test="${nutricion=='G'}">
           <font color="red">P/T : Desnut. Gr.</font>
        </c:if>
       </td> 
     </tr>
     <tr style="font-size:9pt">
        <td > Temper. {ºC} </td>
        <td><input type="text" name="temperatura" size="6" maxlength="6" value="<c:out value = "${datoshisto.temperatura}"/>">
        <c:if test="${tallaedad=='N'}">
           <font>T/E : T Normal</font>
        </c:if>
        <c:if test="${tallaedad=='L'}">
           <font color="red">T/E : T Baja</font>
        </c:if>
        </td>
     </tr>  
     <tr style="font-size:9pt">
        <td > FC {lpm} </td>
        <td><input type="text" name="fc" size="6" maxlength="6" value="<c:out value = "${datoshisto.fc}"/>" onblur='validar(fc,"9")'>
         <c:if test="${datos.edad>5 and estimc!=estimcn}">
            <c:if test="${valor1 <=19}">
               <font color="red">IMCssg :<c:out value = "${estimc}"/></font>
            </c:if>
            <c:if test="${valor1 >19 and estimc!=estimcn}">
               <font>IMCssg :<c:out value = "${estimc}"/></font>
            </c:if>
        </c:if>
        </td>
     </tr>  
     <tr style="font-size:9pt">
        <td > PA {mmHg} </td>
        <td><input type="text" name="pa" size="6" maxlength="7" value="<c:out value = "${datoshisto.pa}"/>">
        <c:if test="${datos.edad>4}">
            <c:if test="${valorn1 <=20}">
               <font color="red">IMC :<c:out value = "${estimcn}"/></font>
            </c:if>
            <c:if test="${valorn1 >20}">
               <font>IMC :<c:out value = "${estimcn}"/></font> 
            </c:if>
        </c:if>
        </td>
     </tr>  
     <tr style="font-size:9pt">
        <td > FR {cpm} </td>
        <td><input type="text" name="fr" size="6" maxlength="6" value="<c:out value = "${datoshisto.fr}"/>" onblur='validar(fc,"9")'></td>
     </tr>  
     
     <tr style="font-size:9pt">
        <td > SO2 </td>
        <td><input type="text" name="so2" size="6" maxlength="6" value="<c:out value = "${datoshisto.so2}"/>" onblur='validar(fc,"9")'></td>
     </tr> 
    <tr style="font-size:9pt">
        <td > Glicemia </td>
        <td><input type="text" name="glicemia" size="6" maxlength="6" value="<c:out value = "${datoshisto.glicemia}"/>" onblur='validar(fc,"9")'>
            <input type="submit" name='accionx'  class="btn btn-success btn-xs" value='Calcular'> 
            <input type="hidden" name='edad'            value='<c:out value="${datos.edad}"/>'>
            <input type="hidden" name='mes'            value='<c:out value="${datos.mes}"/>'>
        </td>
     </tr>  
     <tr>
        <td colspan="2"><center><input type="submit" name='accionx' class="btn btn-danger" value='Graficar'></center> 
        </td>
     </tr> 
     </table>
     
    </td>   
  
    <td width="80%" valign="top">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
     <tr>
        <td align="left" style="font-size:9pt"><u> ANAMNESIS(Subjetivo) </u> </td>
        <td style="font-size:9pt"><u> Examen Clinico(Objetivo)</u> </td>
     </tr>
     <tr>
        <td>
           <textarea class="form-control" name="subjetivo" rows="2" cols="60" style="width: 100%"><c:out value = "${subjetivo}" escapeXml="False"/></textarea>
        </td>
        <td>           
            <textarea class="form-control" name="objetivo" rows="2" cols="60" style="width: 100%"><c:out value = "${objetivo}"  escapeXml="False" /></textarea>
        </td>
     </tr>
     <tr>
        <td style="font-size:9pt"> <u>DIAGNOSTICO (Análisis)</u> </td>
        <td style="font-size:9pt"> <u>PLAN DE ACCION (Tratamiento)</u> </td>
     </tr>
     <tr>  
       <td>           
            <textarea class="form-control" name="diagnostico" rows="2" cols="60" style="width: 100%"><c:out value = "${diagnostico}"  escapeXml="False" /></textarea>
        </td>  
        <td>           
            <textarea class="form-control" name="miaccion" rows="2" cols="60" style="width: 100%"><c:out value = "${miaccion}"  escapeXml="False" /></textarea>
        </td>
     </tr> 
     <!--para terceer nivel HGSJDD
     
      <tr>
        <td " align="left"><u> DIAGNOSTICO (Análisis)</font> </u> </td>
     </tr>
     <tr>
        <td>
           <textarea name="diagnostico" rows="2" cols="80" style="width: 100%">
               <c:out value = "${diagnostico}"  escapeXml="False" />
           </textarea>
        </td>
        
     </tr>
     <tr>
        <td "> <u>PLAN DE ACCION (Tratamiento)</font></u> </td>
     </tr>
     <tr>  
       <td>           
            <textarea name="miaccion" rows="2" cols="80" style="width: 100%">
               <c:out value = "${miaccion}"  escapeXml="False" />
           </textarea>
        </td>  
     </tr>    
    -->
    
     </tr> 
     </table>
     </td>
   </tr> 
 <tr>   
 <td colspan=3>
  
<input type="submit" name='accion' class="btn btn-info" value='Historial'>
<input type="submit" name='accion' class="btn btn-info" value='Laboratorio'>

<input type="submit" name='accion' class="btn btn-primary btn-lg" value='Siguiente'>  
<input type="hidden" name="codigo"          value='<c:out value="${codigo}"/>' >
<input type="hidden" name="literal"         value='<c:out value="${literal}"/>' >         
<input type="hidden" name='id_reservacion'  value='<c:out value="${id_reservacion}"/>'>  
<input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
<input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
<input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
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
<input type="hidden" name='edad'            value='<c:out value="${datos.edad}"/>'>
<input type="hidden" name='mes'            value='<c:out value="${datos.mes}"/>'>
<input type="hidden" name='sw'              value='objetivo'>
  </td>
   </tr>   
</table>

</form>
  </td>
</tr>
</table>
<c:if test="${tipo_medico=='2'}">

<div style="font-size:15pt"> HISTORIA CLINICA ODONTOLOGICA</div>

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> PIEZA </th>
    <th bgcolor="#F2F2F2"> CIE10 </th> 
    <th bgcolor="#F2F2F2"> EDAD </th> 
    <th bgcolor="#F2F2F2"> TIPO<br>PIEZA</th>
    <th bgcolor="#F2F2F2"> EXODONCIA </th> 
    <th bgcolor="#F2F2F2"> RESTAURACION </th>
    <th bgcolor="#F2F2F2"> CIRUGIA </th>
    <th bgcolor="#F2F2F2"> PERIODONCIA </th>    
    <th bgcolor="#F2F2F2"> ENDODONCIA </th> 
    <th bgcolor="#F2F2F2"> TRATAMIENTO </th>
    </tr>  
   <c:forEach var="lista" items="${listaAten}" varStatus="contador">
     <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fechap}" pattern='dd/MM/yyyy'/></td>
        <td><c:out value="${lista.numpieza}"/></td>   
       <td><c:out value="${lista.dglobal}"/></td>   
       <td><c:out value="${lista.edad}"/></td>  
       <td><c:out value="${lista.tipodent}"/></td> 
       <td><c:out value="${lista.exodoncia}"/></td> 
       <td><c:out value="${lista.restauracion}"/></td> 
       <td><c:out value="${lista.cirugia}"/></td> 
       <td><c:out value="${lista.periodoncia}"/></td> 
       <td><c:out value="${lista.endodoncia}"/></td> 
       <td><c:out value="${lista.resultado}"/></td> 
   </c:forEach>
  </table>
 </c:if>
 <c:if test="${(tipo_medico=='5' or tipo_medico=='6' or tipo_medico=='18' or tipo_medico=='20' or tipo_medico=='22' or tipo_medico=='14') and datos.edad<'10'}">
   <div style="font-size:15pt"> HISTORIA CLINICA PEDIATRICA</div> 

 <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> Tipo </th> 
    <th bgcolor="#F2F2F2"> PESO </th> 
    <th bgcolor="#F2F2F2"> TALLA </th> 
    <th bgcolor="#F2F2F2"> EDAD </th> 
    <th bgcolor="#F2F2F2"> SEXO </th> 
    <th bgcolor="#F2F2F2"> PESO/<br>EDAD </th> 
    <th bgcolor="#F2F2F2"> PESO/<br>TALLA </th> 
    <th bgcolor="#F2F2F2"> TALLA/<br>EDAD </th> 
    <th bgcolor="#F2F2F2"> Clasifi<br>cacion </th> 
    <th bgcolor="#F2F2F2"> Diagnostico </th> 
    <th bgcolor="#F2F2F2"> Accion </th>
    <th bgcolor="#F2F2F2"> Imprimir </th>
    </tr>  
   <c:forEach var="lista4" items="${listaAten4}" varStatus="contador">
      <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista4.fecha}" pattern='dd/MM/yyyy'/></td>
       <td align="center"><c:out value="${lista4.tipoconsulta}"/></td>
       <td><c:out value="${lista4.peso}"/></td>
       <td><c:out value="${lista4.talla}"/></td>
       <td><font color="blue"  size="2pt"><c:out value="${lista4.edad}"/></font>.a<font color="blue" size="2pt"><c:out value="${lista4.mes}"/></font>.m<font color="blue" size="2pt"><c:out value="${lista4.dia}"/></font>.d</td>   
        <c:if test="${lista4.id_tipo_sexo == '1'}">
        <td align="center">F</td>
     </c:if>  
     <c:if test="${lista4.id_tipo_sexo == '2'}">
        <td align="center">M</td>
     </c:if>
       <td align="center"><c:out value="${lista4.observa}"/></td> 
       <td align="center"><c:out value="${lista4.dglobal}"/></td>   
       <td align="center"><c:out value="${lista4.dcronica}"/></td>   
       <td align="center"><c:out value="${lista4.resultado}"/></td>  
       <td><c:out value="${lista4.diagnostico}" escapeXml="False"/></td>   
       <td><c:out value="${lista4.accion}" escapeXml="False"/></td>
        <form name=formaIm<c:out value="${contador.count}"/> method=post action='<c:url value="/Aiepi.do"/>'>
       <td>
         <div><a class="btn btn-info btn-xs" href="javascript:document.formaIm<c:out value="${contador.count}"/>.submit();">Aiepii</a></div>
         <input type="hidden" name='id_reservacion'  value='<c:out value="${lista4.id_laboratorio}"/>'>  
         <input type="hidden" name='id_persona'      value='<c:out value="${id_persona}"/>'>
         <input type="hidden" name='id_consultorio'  value='<c:out value="${id_consultorio}"/>'>
         <input type="hidden" name='id_paciente'     value='<c:out value="${id_paciente}"/>'>
         <input type="hidden" name='hcl'             value='<c:out value="${datos.hcl}"/>'>
         <input type="hidden" name='expedido'        value='<c:out value="${expedido}"/>'>
         <input type="hidden" name='tipo_medico'     value='<c:out value="${tipo_medico}"/>'>      
  	 <input type="hidden" name='accion'          value='imprimir' >
	 <input type="hidden" name='sw'              value='1' >
       </td>
     </form>
    </tr> 
   </c:forEach>
 </table>
 
 </c:if>    
 
 <c:if test="${datos.embarazo>0}">
     <div class="titulo" align="center"> RESUMEN HISTORIA CLINICA PERINATAL</div> 
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
         <th align="center" style="font-size:15pt" colspan="14">CONSULTAS    PRENATALES</th>
      </tr>
      <tr>
        <tr style="font-size:9pt" bgcolor="#F2F2F2">
         <th bgcolor="#F2F2F2"> FECHA </th>
         <th bgcolor="#F2F2F2"> PESO </th>
         <th bgcolor="#F2F2F2"> TALLA </th>
         <th bgcolor="#F2F2F2"> F.U.M. </th>
         <th bgcolor="#F2F2F2"> Semanas<br>Gestacion</th> 
         <th bgcolor="#F2F2F2"> No.<br>Embarazo</th> 
         <th bgcolor="#F2F2F2"> PA </th>    
         <th bgcolor="#F2F2F2" width="600"> Signos de alarma, examenes, tratamientos</th>
         <th bgcolor="#F2F2F2"> Controles <br>Pretatales</th>
         <th bgcolor="#F2F2F2"> Nro Control <br>Pretatal</th>
         <th bgcolor="#F2F2F2"> Sulf.Ferrozo <br>Embarazada</th>
         <th bgcolor="#F2F2F2"> Tipo <br>Parto</th>
         <th bgcolor="#F2F2F2"> Controles <br>Postparto</th>
         <th bgcolor="#F2F2F2"> Sulf.Ferrozo <br>Puerpera</th>
      </tr>
         <c:forEach var="listac2" items="${listac2}" varStatus="contador">
         <tr style="font-size:8pt">
           <td><fmt:formatDate value="${listac2.fechap}" pattern='dd/MM/yyyy'/></td>  
           <td><c:out value="${listac2.peso}"/></td>
           <td><c:out value="${listac2.talla}"/></td>
           <td><fmt:formatDate value="${listac2.fum}" pattern='dd/MM/yy'/></td> 
           <td align="center"><c:out value="${listac2.semanas}"/></td> 
           <td align="center"><c:out value="${listac2.nembarazo}"/></td> 
           <td><c:out value="${listac2.pa}"/></td> 
           <td><c:out value="${listac2.diagnostico}" escapeXml="false"/></td>
           <c:if test="${listac2.suma1==1}">
               <td>Antes 5to.Mes</td>
           </c:if>
           <c:if test="${listac2.suma2==1}">
               <td>Despues 5to.Mes</td>
           </c:if>
           <c:if test="${listac2.suma3==1 and listac2.suma4==0}">
               <td>Control Repetido</td>
           </c:if>
           <c:if test="${listac2.suma3==1 and listac2.suma4==1}">
               <td>Control Repetido<br>4to Control</td>
           </c:if>
           <c:if test="${listac2.suma1==0 and listac2.suma2==0 and listac2.suma3==0 and listac2.suma4==0}">
               <td>.</td>
           </c:if>
           <td><c:out value="${listac2.numpieza}"/></td>     
           <c:if test="${listac2.sfembarazada==1}">
               <td align="center"><c:out value="${listac2.tabletas}"/></td>
           </c:if>
           <c:if test="${listac2.sfembarazada==0}">
               <td align="center">.</td>
           </c:if>
           <c:if test="${listac2.parto==1}">
               <td>Parto<br> Vaginal</td>
           </c:if>
           <c:if test="${listac2.parto==2}">
               <td>Parto<br> Cesarea</td>
           </c:if>
           <c:if test="${listac2.parto==3}">
               <td>Parto Dom.<br>Pers.Salud</td>
           </c:if>
           <c:if test="${listac2.parto==4}">
               <td>Partera<br> Capacitada</td>
           </c:if>
           <c:if test="${listac2.parto==0}">
               <td>.</td>
           </c:if> 
           <c:if test="${listac2.controlpos==1}">
               <td>1er Control<br>Postparto</td>
           </c:if>
           <c:if test="${listac2.controlpos==2}">
               <td>2do. Control<br>Postparto o mas</td>
           </c:if>
           <c:if test="${listac2.controlpos==0}">
               <td>.</td>
           </c:if>
           <c:if test="${listac2.sfpuerpera==1}">
               <td align="center"><c:out value="${listac2.tabletas}"/></td>
           </c:if>
           <c:if test="${listac2.sfpuerpera==0}">
               <td align="center">.</td>
           </c:if>
         </tr>  
         </c:forEach>
    </table>  
  </c:if>  
  
  
  
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr>
  <th colspan="8" style="font-size: 15pt"> HISTORIAL DEL PACIENTE </th>
  </tr>
   <tr style="font-size:9pt" bgcolor="#F2F2F2">
    <th align="center" bgcolor="#F2F2F2"> No </th>
    <th align="center" bgcolor="#F2F2F2"> Fecha<br>Consultorio<br>Medico<br>Establecimiento </th>
    <th align="center" bgcolor="#F2F2F2"> Signos<br>Vitales </th>
    <th align="center" bgcolor="#F2F2F2"> SUBJETIVO </th>        
    <th align="center" bgcolor="#F2F2F2"> OBJETIVO </th>        
    <th align="center" bgcolor="#F2F2F2"> DIAGNOSTICO </th>   
    <th align="center" bgcolor="#F2F2F2"> PLAN DE ACCION </th>   
    <th align="center" bgcolor="#F2F2F2"> CIE10 </th>        
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <c:if test="${lista.subjetivo !='Desde Farmacia'}">
      <tr style="font-size:8pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
          <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="green"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></font><br>
          <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/>&nbsp;&nbsp;<font color="green"><fmt:formatDate value="${lista.fechalab}" pattern='HH:mm'/></font><br> <br>
          <font color="Blue"><c:out value="${lista.consultorio}"/></font><br><c:out value="${lista.nombres}"/><br><br><font color="red"><c:out value="${lista.cama}"/><br><font size="2"><c:out value="${lista.id_historial}"/> </font></td>    
               
               <c:if test="${lista.expedido=='S'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="red">Ley475</font><br>
                        <br><font color="blue">
                                    <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                    <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                    <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                    <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                    <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                    <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                    <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                    <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                    <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                    <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                    <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                    <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                        <br><font color="red">
                                   <c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if>
                            </font>
                        <br><font color="red">
                                   <c:if test="${lista.embarazo==2}"><b>Parto</b></c:if>
                            </font>
                        <br><font color="red">
                                   <c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if>
                            </font>
                  <c:out value="${lista.nombres}"/>
                  <br>
                  <c:if test="${lista.tipoconsult == '1' }">
                   <font color="Red"> _Reconsulta 1</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '2' }">
                       <font color="Red"> _Reconsulta 2</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '3' }">
                       <font color="Red"> _Reconsulta 3</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '6' }">
                       <font color="Red"> Recons_Medico</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '7' }">
                       <font color="Red"> Re_Enfermeria</font>
                   </c:if>
               </td>        
               </c:if>
               <c:if test="${lista.expedido=='E'}">
                  <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br>Externo<br>
                            <font color="blue">
                                  <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                  <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                  <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                  <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                  <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                  <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                  <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                  <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                  <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                  <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                  <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                  <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                  <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                  <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                            </font>
                        <br><font color="red">
                                  <c:if test="${lista.embarazo==2}"><b>Parto</b></c:if>
                            </font>
                        <br><font color="red">
                                  <c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if>
                            </font>
                  <c:out value="${lista.nombres}"/>
                  <br>
                  <c:if test="${lista.tipoconsult == '1' }">
                   <font color="Red"> _Reconsulta 1</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '2' }">
                       <font color="Red"> _Reconsulta 2</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '3' }">
                       <font color="Red"> _Reconsulta 3</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '6' }">
                       <font color="Red"> Recons_Medico</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '7' }">
                       <font color="Red"> Re_Enfermeria</font>
                   </c:if>
               </td>      
               </c:if>
               <c:if test="${lista.expedido=='P'}">
                     <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><c:out value="${lista.seguro}"/><br>
                             <font color="blue">
                                  <c:if test="${lista.internado==0}"><b>CONSULTA EXTERNA</b></c:if>
                                  <c:if test="${lista.internado==1}"><b>EMERGENCIA</b></c:if>
                                  <c:if test="${lista.internado==2}"><b>INTERNADO</b></c:if>
                                  <c:if test="${lista.internado==3}"><b>DADO DE ALTA</b></c:if>
                                  <c:if test="${lista.internado==4}"><b>EN QUIROFANO</b></c:if>
                                  <c:if test="${lista.internado==5}"><b>POST QUIROFANO</b></c:if>
                                  <c:if test="${lista.internado==6}"><b>OBSERVACION <br>EMERGNECIAS</b></c:if>
                                  <c:if test="${lista.internado==7}"><b>OBSERVACION <br>HEMODIALISIS</b></c:if>
                                  <c:if test="${lista.internado==8}"><b>INTERNADO <br>POR SISTEMA</b></c:if>
                                  <c:if test="${lista.internado==9}"><b>ALTA POR <br>SISTEMA</b></c:if>
                                  <c:if test="${lista.internado==10}"><b>ALTA POR <br>VIGENCIA</b></c:if>
                                  <c:if test="${lista.internado==11}"><b>ALTA POR <br>ENFERMERIA</b></c:if>
                                  <c:if test="${lista.internado==12}"><b>ALTA POR <br>FARMACIA</b></c:if>
                                  <c:if test="${lista.internado==13}"><b>INTERNADO <br>POR VIGENCIA</b></c:if>
                             </font>
                         <br><font color="red">
                                  <c:if test="${lista.embarazo==2}"><b>Parto</b></c:if>
                             </font><br><font color="red">
                                  <c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if>
                             </font>
                    <c:out value="${lista.nombres}"/>
                    <br>
                    <c:if test="${lista.tipoconsult == '1' }">
                   <font color="Red"> _Reconsulta 1</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '2' }">
                       <font color="Red"> _Reconsulta 2</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '3' }">
                       <font color="Red"> _Reconsulta 3</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '6' }">
                       <font color="Red"> Recons_Medico</font>
                   </c:if>
                   <c:if test="${lista.tipoconsult == '7' }">
                       <font color="Red"> Re_Enfermeria</font>
                   </c:if>
               </td>      
               </c:if>   
       
       <td><c:out value="${lista.subjetivo}" escapeXml="False"/></td>
       <td><c:out value="${lista.objetivo}"  escapeXml="False"/></td>     
       <td><c:out value="${lista.diagnostico}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.accion}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.codigo}"/></td>   
      </tr> 
     </c:if>  
   </c:forEach>
</table>
