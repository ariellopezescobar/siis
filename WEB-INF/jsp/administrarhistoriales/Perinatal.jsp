<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"><center> Historia Clinica Perinatal CLAP</center></div>

<br>
<form name="adicionar" method="POST" action='<c:url value="/ListarHistorial.do"/>' >
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
       <td class="etiqueta" valign="top">
        <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
          <tr>
            <th colspan="4" style="font-size:10pt"><center>HISTORIA CLINICA PERINATAL-CLAP/SMR - OPS/OMA</center></th>
          </tr>
          <tr style="font-size:10pt">
            <td align="right" bgcolor="#F2F2F2">Nombre:</td
            <td colspan="3"><c:out value = "${datos.nombres}"/></td>
          </tr>
          <tr style="font-size:10pt">
            <td align="right" bgcolor="#F2F2F2">Domicilio:</td>	      
            <td colspan="3"><c:out value = "${datos.direccion}"/></td>
          </tr>
          <tr style="font-size:10pt">
            <td  align="right" bgcolor="#F2F2F2">Localidad:</td>	      
            <td><c:out value = "${datos.id_localidad}"/></td>
            <td  align="right" bgcolor="#F2F2F2">Telefono:</td>	      
            <td><c:out value = "${datos.telefono}"/></td>
          </tr>
        </table></td>
    <td class="etiqueta" >
    <table class="formulario" width="100" border="0">
      <tr>
        <th class="etiqueta" colspan="4">FECHA DE<br> MACIMIENTO</th>
      </tr>
      <tr style="font-size:10pt">	
            <td class="etiqueta">DD/MM/AAAA</td>	      
      </tr>
      <tr style="font-size:10pt">	
            <td colspan="2"><fmt:formatDate value="${datos.fec_nacimiento}" pattern='dd/MM/yyyy'/></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">EDAD (años)</td>	      
      </tr>
      <tr style="font-size:10pt">
        <td colspan="2" align="center"><c:out value = "${datos.edad}"/></td>
      </tr>
    </table>
   </td>
     <td class="etiqueta"> <table class="formulario" width="80" border="0">
      <tr style="font-size:10pt">
        <th align="center">ETNIA</th>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="left"><input name="etnia" type="radio" value="1" />Blanca</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="left"><input name="etnia" type="radio" value="2" />Indigena</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="left"><input name="etnia" type="radio" value="3" checked="1"/>Mestiza</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="left"><input name="etnia" type="radio" value="4" />Negra</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="left"><input name="etnia" type="radio" value="5" />Otra</td>
      </tr>
    </table></td>
       <td class="etiqueta"><table class="formulario" width="30" border="0">
      <tr style="font-size:10pt">
        <th class="etiqueta">ALFA<br>BETA</th>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">NO<input name="alfabeta" type="radio" value="1" ></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">SI<input name="alfabeta" type="radio" value="2" checked></td>
      </tr>
    </table></td>
       <td class="etiqueta"><table class="formulario" width="50" border="0">
      <tr>
        <th  colspan="2" align="center">ESTUDIOS</th>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="center">Nin-<br>guno<input name="estudios" type="radio" value="1" ></td>
        <td class="etiqueta" align="center">Prima-<br>ria<input name="estudios" type="radio" value="2" checked></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta" align="center">Secun-<br>daria<input name="estudios" type="radio" value="3" ></td>
        <td class="etiqueta" align="center">Univer-<br>sita<input name="estudios" type="radio" value="1" ></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Años:</td>
        <td class="etiqueta">2</td>
      </tr>
     </table></td>
       <td class="etiqueta"><table class="formulario" width="90" border="0">
      <tr style="font-size:10pt">
        <th class="etiqueta" colspan="2" align="center">Estado Civil </th>
      </tr>     
      <tr style="font-size:10pt">
        <td class="etiqueta">Casada</td>
        <td class="etiqueta"><input name="ecivil" type="radio" value="1" checked></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Union Estable</td>
        <td class="etiqueta"><input name="ecivil" type="radio" value="2" ></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Soltera</td>
        <td class="etiqueta"><input name="ecivil" type="radio" value="3" ></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Otra</td>
        <td class="etiqueta"><input name="ecivil" type="radio" value="4" ></td>
      </tr>
       <tr style="font-size:10pt">
        <th class="etiqueta" colspan="2" align="center">Vive Sola</th>
      </tr>     
      <tr style="font-size:10pt">
        <td class="etiqueta">NO <input name="vivesola" type="radio" value="1" checked></td>
        <td class="etiqueta">SI <input name="vivesola" type="radio" value="2" ></td>
      </tr>
    </table></td>
       <td class="etiqueta" colspan="2"><table class="formulario" width="180" border="0">
       <tr>
        <th colspan="3" align="center">DATOS PARTO</th>
      </tr> 
      <tr style="font-size:10pt">
        <td class="etiqueta">No.H.C.L.:</td>
        <td><c:out value = "${datos.hcl}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">No. Asegurado:</td>
        <td><c:out value = "${datos.nro_registro}"/></td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Lugar de Control:</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">Lugar Parto:</td>
      </tr>
      <tr style="font-size:10pt">
        <td class="etiqueta">NO. carnet:</td>
        <td><c:out value = "${datos.carnet}"/></td>
      </tr>
    </table></td>
      </tr>
   </table>   
   
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
      <!--otra tabla en otra columna-->
        <td ><table class="formulario" width="320" border="0">
       <tr>
         <th align="center" colspan="3">ANTECEDENTES</th>
      </tr> 
      <tr>
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Familiares</td>
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Personales</td>
        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No     SI</td>
      </tr> 
      <tr>
        <td align="center" style="font-size:9" colspan="2">No<input type=radio name="ant1fam" value="N" checked>Si<input type=radio name="ant1fam" value="S" >____TBC____No<input type=radio name="ant2fam" value="N" checked>Si<input type=radio name="ant2fam" value="S" ></td>
        <td align="center" style="font-size:9" >Cirigia Geni.Uri<input type=radio name="ant3fam" value="N" checked><input type=radio name="ant3fam" value="S" ></td>
      </tr>  
      <tr>  
        <td align="left" style="font-size:9" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No<input type=radio name="ant4fam" value="N" checked>Si<input type=radio name="ant4fam" value="N" >Diabetes_No<input type=radio name="ant5fam" value="S" checked>Si<input type=radio name="ant5fam" value="N" ><input type=radio name="ant5fam" value="S"><input type=radio name="ant5fam" value="S"></td>
        
      </tr>  
      <tr>  
        <td align="center" style="font-size:9" colspan="2">No<input type=radio name="ant6fam" value="N" checked>Si<input type=radio name="ant6fam" value="S" >_Hipertension_No<input type=radio name="ant7fam" value="N" checked>Si<input type=radio name="ant7fam" value="S" ></td>
        <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Infertilid. <input type=radio name="ant14fam" value="N" checked><input type=radio name="ant14fam" value="N" ></td>
      </tr>  
      <tr>  
        <td align="center" style="font-size:9" colspan="2">No<input type=radio name="ant8fam" value="N" checked>Si<input type=radio name="ant8fam" value="S" >_Preclamsia_No<input type=radio name="ant9fam" value="N" checked>Si<input type=radio name="ant9fam" value="S" ></td>
        <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cardiop. <input type=radio name="ant15fam" value="N" checked><input type=radio name="ant15fam" value="N" ></td>
      </tr>  
      <tr>  
        <td align="center" style="font-size:9" colspan="2">No<input type=radio name="ant10fam" value="N" checked>Si<input type=radio name="ant10fam" value="S" >__Eclamsia__No<input type=radio name="ant11fam" value="N" checked>Si<input type=radio name="ant11fam" value="S" ></td>
        <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nefropat. <input type=radio name="ant16fam" value="N" checked><input type=radio name="ant16fam" value="N" ></td>
      </tr>  
      <tr>  
        <td align="center" style="font-size:9" colspan="2">No<input type=radio name="ant12fam" value="N" checked>Si<input type=radio name="ant12fam" value="S" >____Otra____No<input type=radio name="ant13fam" value="N" checked>Si<input type=radio name="ant13fam" value="S" ></td>
        <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Violencia<input type=radio name="ant17fam" value="N" checked><input type=radio name="ant17fam" value="N" ></td>
      </tr>
    </table></td>
    <!--otra tabla en otra columna-->
        <td ><table class="formulario" width="700" border="0">
       <tr>
         <th align="center" colspan="12">ANTECEDENTES OBSTETRICOS</th>
      </tr> 
       <tr>
        <td rowspan="2" style="font-size:12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Obstetricos
                 <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ultimo previo</td>
        <td style="font-size:12">Gestas previas</td>
        <td style="font-size:12">Abortos</td>
        <td style="font-size:12">Vaginales</td>
        <td style="font-size:12">Nacidos<br> vivos</td>
        <td style="font-size:12">Viven</td>
        <td style="font-size:12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fin Emb.Anterior</td>
      </tr> 
      <tr>
        <td ><input type="text" name="tex1" value="<c:out value="${nemba-1}"/>" size="2"></td>
        <td ><input type="text" name="tex1" value="0" size="2"></td>
        <td ><input type="text" name="tex1" value="0" size="2"></td>
        <td ><input type="text" name="tex1" value="0" size="2"></td>
        <td ><input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10"><input type="text" name="dia_r" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>-
            <input type="text" name="mes_r" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>-
            <input type="text" name="anio_r" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />
            <input type=radio name="lista1" value="S">&nbsp;<1 año </td>       
      </tr> 
      <tr>
        <td style="font-size:10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n/c<input type=radio name="uembarazo" value="S"><2500g<input type=radio name="uembarazo" value="S"><br>
              normal<input type=radio name="uembarazo" value="S" checked>>4000g<input type=radio name="uembarazo" value="S"></td>
        <td style="font-size:10"><input type="text" name="tex1" value="0" size="2"><br>Embar. ectopico</td>
        <td style="font-size:10">3 continuos<input type=radio name="lista" value="S"></td>
        <td style="font-size:10" colspan="3" align="right">Muertos 1er Sem.<input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10">EMBAR.PLANEADO  no<input type=radio name="planeado" value="S" checked>si<input type=radio name="planeado" value="S">
            <br><br>FRACASO METODO ANTICONCEP.</td>
      </tr> 
      <tr>
        <td style="font-size:10">Antecedentes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   No &nbsp;&nbsp;Si<br>
              de gemelares&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="list1" value="S" checked><input type=radio name="lista1" value="S"><br></td>
        <td style="font-size:10" colspan="2" align="right">Partos<br><input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10" align="right">Cesareas<br><input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10" align="right">Nac.Muertos<br><input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10" align="right">Despues 1sem.<input type="text" name="tex1" value="0" size="2"></td>
        <td style="font-size:10">&nbsp;&nbsp;<input type=radio name="anticon" value="S" checked>&nbsp;&nbsp;<input type=radio name="anticon" value="S">
            &nbsp;&nbsp;<input type=radio name="anticon" value="S">&nbsp;&nbsp;<input type=radio name="anticon" value="S" style="color:red">&nbsp;&nbsp;<input type=radio name="anticon" value="S">
            &nbsp;&nbsp;<input type=radio name="anticon" value="S">&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;no &nbsp; Barrera &nbsp; DIU&nbsp;Hormo-&nbsp;&nbsp;Emer-&nbsp;&nbsp;natural
            <br>&nbsp;&nbsp;&nbsp;usaba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nal&nbsp;&nbsp;&nbsp;gencia</td>
      </tr> 
    </table></td>
    </tr>
   </table> 
   <!--otra tabla en otra columna---------------------->
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td ><table class="formulario" width="90" border="0">
          <tr>
             <th align="center" colspan="2">GESTACION ACTUAL</th>
          </tr> 
          <tr>
            <td align="center" style="font-size:9" >Peso Anterior<br><input type="text" name="tex1" value="<c:out value="${peso}"/>" size="2">gr.</td>
            <td align="center" style="font-size:9" >Talla cm.<br><input type="text" name="tex1" value="<c:out value="${talla}"/>" size="3"></td>
          </tr>  
        </table></td>
        <td><table class="formulario" width="130" border="0">
            <tr>
              <td align="center" style="font-size:9" colspan="2">F.U.M.<br><input type="text" name="dia_r" value="<c:out value="${dia_r}"/>" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>-
                <input type="text" name="mes_r" value="<c:out value="${mes_r}"/>" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>-
                <input type="text" name="anio_r" value="<c:out value="${anio_r}"/>" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />
                <br>dd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yyyy</td>
            </tr>
            <tr>
              <td align="center" style="font-size:9" colspan="2">F.P.P.<br><input type="text" name="dia_r" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>-
                <input type="text" name="mes_r" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>-
                <input type="text" name="anio_r" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />
                <br>dd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yyyy</td>
            </tr>  
        </table></td>
        <td><table class="formulario" width="70" border="0">
          <tr>
            <td align="center" style="font-size:9" colspan="2">EG.CONFIABLE por</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">FUM &nbsp;&nbsp;&nbsp;&nbsp;eco <20s</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >NO<input type=radio name="pfum" value="N" checked></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="N" ></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >SI<input type=radio name="pfum" value="S"></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="S" checked></td>
          </tr>
        </table></td>
        <td><table class="formulario" width="300" border="0">
          <tr>
            <td align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FUMA ACT&nbsp;&nbsp;&nbsp;&nbsp;FUMA PAS&nbsp;&nbsp;&nbsp;&nbsp;DROGAS&nbsp;&nbsp;&nbsp;&nbsp;ALGOHOL&nbsp;&nbsp;&nbsp;&nbsp;VIOLENCIA</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;&nbsp;SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;&nbsp;SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;&nbsp;SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;&nbsp;SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;&nbsp;SI</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >1er Sem.<input type=radio name="vicio1" value="N" checked><input type=radio name="vicio1" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio2" value="N" checked><input type=radio name="vicio2" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio3" value="N" checked><input type=radio name="vicio3" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio4" value="N" checked><input type=radio name="vicio4" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio5" value="N" checked><input type=radio name="vicio5" value="S" >
            </td>
          </tr>   
           <tr>
            <td align="center" style="font-size:9" >2o Sem.<input type=radio name="vicio6" value="N" checked><input type=radio name="vicio6" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio7" value="N" checked><input type=radio name="vicio7" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio8" value="N" checked><input type=radio name="vicio8" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio9" value="N" checked><input type=radio name="vicio9" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio10" value="N" checked><input type=radio name="vicio10" value="S" >
            </td>
          </tr> 
           <tr>
            <td align="center" style="font-size:9" >3er Sem.<input type=radio name="vicio11" value="N" checked><input type=radio name="vicio11" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio12" value="N" checked><input type=radio name="vicio12" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio13" value="N" checked><input type=radio name="vicio13" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio14" value="N" checked><input type=radio name="vicio14" value="S" >
                &nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="vicio15" value="N" checked><input type=radio name="vicio15" value="S" >
            </td>
          </tr> 
        </table></td>
        <td><table class="formulario" width="60" border="0">
           <tr>
            <td align="center" style="font-size:9" colspan="2">ANTIRUBEOLA</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">Previa &nbsp;&nbsp;&nbsp;&nbsp;No sabe</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" ><input type=radio name="pfum" value="N" checked></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="N" ></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">Embarazo&nbsp;&nbsp;&nbsp;&nbsp;No</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" ><input type=radio name="pfum" value="S"></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="S" checked></td>
          </tr>
        </table></td>
        <td><table class="formulario" width="60" border="0">
           <tr>
            <td align="center" style="font-size:9" colspan="2">ANTITETANICA</td>
          </tr> 
          <tr>
            <td align="center" style="font-size:9" >No<input type=radio name="antiteta" value="N" ></td>
            <td align="center" style="font-size:9" >Si<input type=radio name="antiteta" value="S" checked></td>
          </tr>
          <tr>
             <td align="center" style="font-size:9" >1ra<input type="text" name="antiteta2" value="X" size="1"></td>
             <td align="center" style="font-size:9" >2da<input type="text" name="antiteta2" value="<c:out value="${peso2}"/>" size="1"></td>
          </tr>
        </table></td>
        <td><table class="formulario" width="90" border="0">
         <tr>
            <td align="center" style="font-size:9" colspan="2">EX NORMAL</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No &nbsp;&nbsp;&nbsp;&nbsp;Si</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Odonto<input type=radio name="pfum" value="N" checked></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="N" ></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Mamas<input type=radio name="pfum" value="S"></td>
            <td align="center" style="font-size:9" ><input type=radio name="peco" value="S" checked></td>
          </tr>
        </table></td>
      </tr>
   </table>
    <!--otra tabla en otra columna----------------------> 
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td><table class="formulario" width="420" border="0">
          <tr>
             <td><table class="formulario" border="0">
                <tr>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" colspan="4" style="font-size:9">CERVIX</th>
                       </tr> 
                       <tr>
                           <td align="right" style="font-size:9" colspan="2">Normal</td>
                           <td align="center" style="font-size:9" >Anormal</td>
                           <td align="center" style="font-size:9" >No hizo</td>
                       </tr> 
                       <tr>
                           <td align="center" style="font-size:9" >PAP</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                           <td align="center" style="font-size:9" >COLP</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                           <td align="center" style="font-size:9" >Inspec.<br>visual</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                    </table></td>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" colspan="2" style="font-size:9">GRUPO Rh</th>
                          <td align="center" style="font-size:9" >Inmuni<br>zacion</td>
                       </tr> 
                       <tr>
                          <td align="center" style="font-size:9" ><input type="text" name="antiteta2" value="" size="2"></td>
                          <td align="center" style="font-size:9" >&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;<br><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ></td>
                          <td align="center" style="font-size:9" >no<input type=radio name="antiteta" value="N" ><br>si<input type=radio name="antiteta" value="N" ></td>
                       </tr>  
                       <tr>
                          <td align="center" style="font-size:9" colspan="3">Globulina anti D<br>no<input type=radio name="antiteta" value="N" >si<input type=radio name="antiteta" value="N" >n/c<input type=radio name="antiteta" value="N" ></td>
                       </tr>    
                    </table></td>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" style="font-size:9">TOXOPLASM</th>
                          <td align="left" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;no<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;se</td>
                       </tr> 
                       <tr>
                          <td align="center" style="font-size:9" >< 20sem lgG</td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                          <td align="center" style="font-size:9" >> 20sem lgG</td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                          <td align="center" style="font-size:9" >1ra consulta lgG</td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                    </table></td>
                </tr> 
             </table></td>
          </tr>
          <tr>
             <td><table class="formulario" border="0">
                <tr>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" colspan="2" style="font-size:9">CHAGAS</th>
                       </tr> 
                       <tr>
                           <td align="center" style="font-size:9" >-</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr> 
                       <tr>
                           <td align="center" style="font-size:9" >+</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                           <td align="center" style="font-size:9" >No<br>hizo</td>
                           <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                    </table></td>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" style="font-size:9">PALUDISMO/<br>MALARIA</th>
                       </tr> 
                       <tr>
                          <td align="center" style="font-size:9"><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><br>no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;si</td>
                       </tr>  
                       <tr>
                          <td align="center" style="font-size:9">No hizo<input type=radio name="antiteta" value="N" ></td>
                       </tr>    
                    </table></td>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" style="font-size:9" colspan="4">BACTERIURIA</th>
                      </tr> 
                       <tr>
                          <td align="center" style="font-size:9" >Semam</td>
                          <td align="center" style="font-size:9" >Normal</td>
                          <td align="center" style="font-size:9" >Anormal</td>
                          <td align="center" style="font-size:9" >No hizo</td>
                       </tr>
                       <tr>
                          <td align="center" style="font-size:9" ><20sem</td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                       <tr>
                          <td align="center" style="font-size:9" >>=20sem</td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                    </table></td>
                    <td><table class="formulario" border="0">
                       <tr>
                          <th align="center" style="font-size:9" colspan="3">GLICEMIA AYUNAS</th>
                       </tr> 
                       <tr>
                          <td align="center" style="font-size:9" ><20<br>sem</td>
                          <td align="center" style="font-size:9" ><input type="text" name="antiteta2" value="" size="4"></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ><br>>105 mg/dl</td>
                       </tr>
                       <tr>
                          <td align="center" style="font-size:9" >>20<br>sem</td>
                          <td align="center" style="font-size:9" ><input type="text" name="antiteta2" value="" size="4"></td>
                          <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="N" ></td>
                       </tr>
                    </table></td>
                </tr> 
             </table></td>
          </tr>
        </table></td>
        <td>
        <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
           <tr>
            <th align="center" colspan="2">V.I.H.</th>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;< 20sem<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;si</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Solici<br>tado</td>
            <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="S" checked><input type=radio name="antiteta" value="S" checked></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Reali<br>zado</td>
            <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="S" checked><input type=radio name="antiteta" value="S" checked></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;> 20sem<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;si</td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Solici<br>tado</td>
            <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="S" checked><input type=radio name="antiteta" value="S" checked></td>
          </tr>
          <tr>
            <td align="center" style="font-size:9" >Reali<br>zado</td>
            <td align="center" style="font-size:9" ><input type=radio name="antiteta" value="S" checked><input type=radio name="antiteta" value="S" checked></td>
          </tr>
        </table></td>
        <td><table class="formulario" width="200" border="0">
          <tr>
            <td align="center" style="font-size:9" width="90">Hb < 20sem<br><input type="text" name="antiteta2" value="" size="4">g<br>< 11.0 g/dl<br><input type=radio name="antiteta" value="N" ></td>
            <td align="center" style="font-size:9" >Fe/FOLATOS Indicados<br>fe&nbsp;&nbsp;&nbsp;&nbsp;Folatos<br><input type=radio name="antiteta" value="S" checked>&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="antiteta" value="S" checked></td>
            <td align="center" style="font-size:9" >Hb < 20sem<br><input type="text" name="antiteta2" value="" size="4">g<br>< 11.0 g/dl<input type=radio name="antiteta" value="N" ></td>
          </tr>
          <tr>
             <td align="center" style="font-size:9" width="90">ESTREPTO- COCO B <br>35-37semana<br><input type=radio name="antiteta" value="N"><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><br>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp;&nbsp;&nbsp;&nbsp; no se hizo</td>
             <td align="center" style="font-size:9" >PREPARA- CION PARA EL PARTO<br><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><br>&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; si&nbsp;</td>
             <td align="center" style="font-size:9" >CONSEJERIA LACTANCIA MATERNA<br><input type=radio name="antiteta" value="N" ><input type=radio name="antiteta" value="N" ><br>&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; si&nbsp;</td>
          </tr>
        </table></td>
        <td><table class="formulario" width="330" border="1">
           <tr>
              <th align="center" colspan="4">SIFILIS Diagnostico y Tratamiento</th>
           </tr> 
           <tr>
              <td colspan="2" align="center" style="font-size:9">Prueba</td>
              <td align="center" style="font-size:9" rowspan="2">Tratamiento</td>
              <td align="center" style="font-size:9" rowspan="2">Tipo de la<br>Pareja</td>
           </tr>
           <tr>
              <td align="center" style="font-size:9">no Treponemica</td>
              <td align="center" style="font-size:9">Treponemica</td>
           </tr> 
           <tr>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/c&nbsp;&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/c&nbsp;&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
              <td  align="center" style="font-size:9" rowspan="2"><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><br>&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;si&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><br>&nbsp;s/d&nbsp;&nbsp;&nbsp;&nbsp;n/c&nbsp;</td>
           </tr>  
           <tr>
              <td align="center" style="font-size:9"><20sem<input type="text" name="antiteta2" value="" size="2"></td>
              <td align="center" style="font-size:9"><input type="text" name="antiteta2" value="" size="2"></td>
              <td align="center" style="font-size:9"><input type="text" name="antiteta2" value="" size="2"></td>
           </tr> 
           <tr>
              <td align="center" style="font-size:9">>20sem<input type="text" name="antiteta2" value="" size="2"></td>
              <td align="center" style="font-size:9"><input type="text" name="antiteta2" value="" size="2"></td>
              <td align="center" style="font-size:9"><input type="text" name="antiteta2" value="" size="2"></td>
              <td  align="center" style="font-size:9" rowspan="2"><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><br>&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;si&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><br>&nbsp;n/c&nbsp;&nbsp;&nbsp;&nbsp;s/c&nbsp;</td>
           </tr> 
           <tr>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/c&nbsp;&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
              <td  align="center" style="font-size:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s/c&nbsp;&nbsp;<br><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ><input type=radio name="peco" value="N" ></td>
           </tr> 
         </tr>  
        </table></td>
      </tr>
    </table>
   <!--otra tabla en otra columna---------------------->   
   <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
         <th align="center" style="font-size:15" colspan="13"><center>CONSULTAS PRENATALES</center></th>
      </tr>
      <tr style="font-size:9">
         <th bgcolor="#F2F2F2"> FECHA </th>
         <th bgcolor="#F2F2F2"> Mes Ges</th>
         <th bgcolor="#F2F2F2"> PESO </th>
         <th bgcolor="#F2F2F2"> TIPO </th>    
         <th bgcolor="#F2F2F2"> PA </th>    
         <th bgcolor="#F2F2F2"> Altura<br>Uterina </th>    
         <th bgcolor="#F2F2F2"> Presentacion </th>    
         <th bgcolor="#F2F2F2"> FCF<br>(lpm)</th>    
         <th bgcolor="#F2F2F2"> Movim.<br>fetales</th>    
         <th bgcolor="#F2F2F2">Protei-<br>nuria </th>
         <th  bgcolor="#F2F2F2" width="600"> Signos de alarma, examenes, tratamientos</th>
         <th bgcolor="#F2F2F2"> Iniciales </th>
         <th bgcolor="#F2F2F2"> Proxima<br> Visita</th>
      </tr>
         <c:forEach var="listac2" items="${listac2}" varStatus="contador">
         <tr style="font-size:9pt">
           <td><fmt:formatDate value="${listac2.fechap}" pattern='dd/MM/yyyy'/></td>  
           <td><c:out value="${listac2.semanas}"/></td> 
           <td><c:out value="${listac2.peso}"/></td>    
           <td><c:out value="${listac2.semanas}"/></td>    
           <td><c:out value="${listac2.pa}"/></td> 
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
           <td width="600"><c:out value="${listac2.diagnostico}" escapeXml="false"/></td>
           <td><c:out value="${listac2.id_persona}"/></td>
           <td>&nbsp;</td>
         </tr>  
         </c:forEach>
    </table>
  <!----otra tabla en otra columna----------------------> 
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" colspan="2" style="font-size:9">PARTO<input type=radio name="parto" value="S" >ABORTO<input type=radio name="parto" value="N" ></th>
              <td align="center" style="font-size:11" rowspan="3">No.<br>Consul<br>Prena<br>tales<br><input type="text" name="antiteta2" value="4" size="2"></td>
           </tr> 
           <tr>
                <td align="center" style="font-size:9" colspan="2">Fecha Ingreso<br><input type="text" name="dia_r" value="1" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>
                    <input type="text" name="mes_r" value="1" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>
                    <input type="text" name="anio_r" value="2011" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />
                    <br>dd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yyyy
                </td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >CARNE&nbsp;&nbsp;&nbsp;&nbsp;No<input type=radio name="carne" value="N" >Si<input type=radio name="carne" value="S" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario"  border="0">
           <tr>
              <th align="center" style="font-size:10" >HOSPITALI<br>ZACION en<br>embarazo</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >no<input type=radio name="hospita" value="N">si<input type=radio name="hospita" value="S" checked></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >dias<br><input type="text" name="antiteta2" value="" size="2"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" colspan="2" style="font-size:9">CORTICOIDES<br>ANTENATALES</th>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >completo<input type=radio name="cortico" value="1" ></td>
               <td align="center" style="font-size:9" rowspan="3"><input type="text" name="corticosem" value="0" size="2"><br>semana<br>inicio</td>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >incompleto<input type=radio name="cortico" value="2" ></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >ninguna<input type=radio name="cortico" value="3" checked></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >n/c<input type=radio name="cortico" value="4" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" Style="font-size:9">INICIO</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >expontaneo<br><input type=radio name="inicio" value="1" checked></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >inducido<br><input type=radio name="inicio" value="2" ></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >Cesar.Ind.<br><input type=radio name="inicio" value="3" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" colspan="3" style="font-size:9">RUPTURA DE MENBRANAS ANTEPARTO</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >no<br><input type=radio name="antiteta" value="N" ></td>
               <td align="center" style="font-size:9" ><input type="text" name="dia_r" value="1" maxlength=2 size=2 onblur=validarNota(dia_r,1, 31)>
                    <input type="text" name="mes_r" value="1" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 12)>
                    <input type="text" name="anio_r" value="2011" maxlength=4 size=4 onblur=validarNota(anio_r, 1900, <c:out value="${anioy}"/>)' />
                    <br>dd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yyyy
                </td>
               <td align="center" style="font-size:9" ><37sem<input type=radio name="antiteta" value="N" ><br>>18hs<input type=radio name="antiteta" value="N" ></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >si<br><input type=radio name="antiteta" value="N" ></td>
               <td align="center" style="font-size:9" ><input type="text" name="dia_r" value="1" maxlength=2 size=2 onblur=validarNota(dia_r,1, 12)>
                    <input type="text" name="mes_r" value="1" maxlength=2 size=2 onblur=validarNota(mes_r, 1, 60)>
                    <br>hh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
               <td align="center" style="font-size:9" >tem>38ºC<input type=radio name="antiteta" value="N" ><br><input type="text" name="antiteta2" value="37.0" size="4"></td>
           </tr> 
           
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9">EDAD GEST.</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >al parto</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >seman&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dias<br><input type="text" name="antiteta2" value="39" size="2"><input type="text" name="antiteta2" value="1" size="1"></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >FUM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eco<br><input type=radio name="edadges" value="S" checked>&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="edadges" value="N" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9" colspan="2">PRESENTACI<br>SITUACION</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >cefalica</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="1" checked></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >pelvica</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="2" ></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >transver.</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="3" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9">Tamaño<br>fetal<br>acorde</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >No<br><input type=radio name="tamfetal" value="S" checked></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >Si<br><input type=radio name="tamfetal" value="N" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9" colspan="3">ACOMPAÑANTE</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TD</td>
               <td align="center" style="font-size:9" >P</td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >pareja</td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="1" checked></td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="2" ></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >familiar</td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="3" ></td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="4" ></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >otro</td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="5" ></td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="6" ></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >ninguno</td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="8" ></td>
               <td align="center" style="font-size:9" ><input type=radio name="acompana" value="9" ></td>
           </tr> 
        </table></td>
      </tr>
    </table>
 <!----otra tabla en otra columna----------------------> 
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" >TRABAJO<br> DE<br>PARTO</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" ><br>partograma</td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" ><br>Si<br><input type=radio name="partograma" value="S"></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >No<br><input type=radio name="partograma" value="N" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
             <th align="center" style="font-size:9" colspan="11">TRABAJO DE PARTO</th>
           </tr>
           <tr>
             <th style="font-size:9"> Hora </th>
             <th style="font-size:9"> Mim.</th>
             <th style="font-size:9"> Posicion<br>Madre </th>
             <th style="font-size:9"> PA </th>    
             <th style="font-size:9"> Pulso</th>    
             <th style="font-size:9"> Contrac/10 </th>    
             <th style="font-size:9"> Dilatacion</th>    
             <th style="font-size:9"> Altura<br>present.</th>    
             <th style="font-size:9"> Variedad<br>posicion</th>
             <th style="font-size:9"> Meconio</th>
             <th style="font-size:9"> FCF/dips </th>
          </tr>
             <c:forEach begin="1" end="5" step="1" var="partogra" varStatus="status">
               <!-- ********** Esto es para el efecto ************ -->
             <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
               <!-- ********** Fin  efecto ************ -->  
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
             </tr>  
             </c:forEach>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="4">ENFERMEDADES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ninguna<input type=radio name="enfermedad" value="N" checked>&nbsp;&nbsp;&nbsp;1 o mas<input type=radio name="enfermedad" value="S"></th>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >No&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="right" style="font-size:9" >No&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="right" style="font-size:9" >No&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="right" style="font-size:10" >HEMORRAGIA</td>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >HTA previa<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >Infec.Ocular<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >1er.Trim<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="center" style="font-size:9" >Codigo</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >HTA Inducida<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >Infec.Urina<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >2do.Trim<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Preclamsia<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >AmenazaPartoPremat.<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >3er.Trim<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Eclamsia<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >R.C.I.U.<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >postparto<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Cardiopatia<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >Rupt.Prem.Menbra<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >postparto<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >&nbsp;</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Nefropatia<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >Anemia<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >postparto<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="center" style="font-size:9" >Notas</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Diabetes<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >Otra Cond.Grave<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" >postparto<input type=radio name="partograma" value="S"><input type=radio name="partograma" value="S"></td>
               <td align="right" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="15"></td>
           </tr>
        </table></td>
      </tr>
    </table>
    <!----otra tabla en otra columna----------------------> 
     <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="2">Nacimiento</th>
               <td align="center" style="font-size:9" >VIVO<input type=radio name="nacvivo" value="1" checked></td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >MUERTO<br>Anteparto<input type=radio name="nacvivo" value="2"></td>
               <td align="center" style="font-size:9" ><br>parto<input type=radio name="nacvivo" value="3"></td>
               <td align="left" style="font-size:9" >ignora<br>momento<input type=radio name="nacvivo" value="4"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9">&nbsp;&nbsp;Hora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Minuto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" ><input type="text" name="horanacim" value="1" size="2">
                  <input type="text" name="horanacim" value="1" size="2">--<input type="text" name="horanacim" value="1" size="2">
                  <input type="text" name="horanacim" value="1" size="2"><input type="text" name="horanacim" value="2011" size="4"></td>
           </tr> 
        </table></td>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="2">Multiple</th>
               <td align="center" style="font-size:9" >Orden</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >No<br><input type=radio name="orden" value="1" checked></td>
               <td align="center" style="font-size:9" >Si<br><input type=radio name="orden" value="2"></td>
               <td align="left" style="font-size:9" ><input type="text" name="ordenval" value="1" size="2"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="3">Terminacion</th>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >Expontanea<input type=radio name="termina" value="1" checked></td>
               <td align="left" style="font-size:9" >Cesarea<input type=radio name="termina" value="2"></td>
               <td align="center" style="font-size:9" >otra</td>
           </tr>
            <tr>
               <td align="left" style="font-size:9" >Forceps<input type=radio name="termina" value="3"></td>
               <td align="left" style="font-size:9" >Vacuum<input type=radio name="termina" value="4"></td>
               <td align="center" style="font-size:9" ><input type=radio name="termina" value="5"></td>
           </tr>
        </table></td>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">INDICACION PRINCIPAL<br>INDUCCION O PARTO OPERATORIO</th>
               <td align="center" style="font-size:9" colspan="2">INDUCC.&nbsp;&nbsp;&nbsp;OPERAT</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type="text" name="ordenval" value="" size="30"></td>
               <td align="left" style="font-size:9" >Cod:<input type="text" name="ordenval" value="" size="2"></td>
               <td align="left" style="font-size:9" ><input type="text" name="ordenval" value="" size="2"></td>
           </tr>
        </table></td>
      </tr>
    </table>
   <!----otra tabla en otra columna----------------------> 
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">Posicion Parto</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >Sentada<input type=radio name="posicionparto" value="1">&nbsp;&nbsp;Acostada</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >Cuclillas<input type=radio name="posicionparto" value="2" >&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="posicionparto" value="3" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9">Episio<br>tomia</th>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >No<input type=radio name="episio" value="1" checked><br>Si<input type=radio name="episio" value="2"></td>
           </tr> 
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">Desgarros</th>
           </tr>
           <tr>
               <td align="left" style="font-size:9" colspan="2">(Grado 1 a 4)</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >No<br><input type=radio name="desgarro" value="1"></td>
               <td align="left" style="font-size:9" ><input type="text" name="ordenval" value="0" size="1"></td>
           </tr> 
        </table></td>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" colspan="2">Ocitocicos</th>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >Prealumb</td>
               <td align="center" style="font-size:9" >Postalumb</td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;Si<br><input type=radio name="orden" value="1" checked><input type=radio name="orden" value="1" checked></td>
               <td align="left" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;Si<br><input type=radio name="orden" value="1" checked><input type=radio name="orden" value="1" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">PLACENTA</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >Completa<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >Retenida<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">LIGADURA<br>CORDON</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >precoz</td>
           </tr>
            <tr>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked>Si<input type=radio name="ligadura" value="2"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="7">MEDICAMENTOS RECIBIDOS</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >Ocitocicos<br>en TDP</td>
               <td align="center" style="font-size:9" >Antibiot.</td>
               <td align="center" style="font-size:9" >Analgesia</td>
               <td align="center" style="font-size:9" >Anest.<br>local</td>
               <td align="center" style="font-size:9" >Anest.<br>regal</td>
               <td align="center" style="font-size:9" >Anest.<br>gral.</td>
               <td align="center" style="font-size:9" >Trasnfuc.</td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >No<input type=radio name="ligadura" value="1" checked></td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
               <td align="left" style="font-size:9" >Si<input type=radio name="ligadura" value="1" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" >Otros Medicamentos</th>
           </tr>  
           <tr>
               <td align="left" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Codigo</td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="ligadura" value="1" checked><input type=radio name="ligadura" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;med1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;med2</td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" >Especificar<input type="text" name="ordenval" value="0" size="4"><input type="text" name="ordenval" value="0" size="4"></td>
           </tr>
        </table></td>
      </tr>
    </table>
      <!----otra tabla en otra columna----------------------> 
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
      <tr>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="2">RECIEN NACIDO</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >Sexo</td>
               <td align="center" style="font-size:9" >Peso Nacer</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F<br><input type=radio name="sexobebe" value="2" checked><input type=radio name="sexobebe" value="1"></td>
               <td align="center" style="font-size:9" ><input type="text" name="pesobebe" value="3000" size="4">g<br><2500g<input type=radio name="pesobeb" value="2">>4000g<input type=radio name="pesobeb" value="1"></td>
               
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="left" style="font-size:9" >P.Cefalico cm<br><input type="text" name="pesobebe" value="000" size="3"></td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" >Longitud cm<br><input type="text" name="pesobebe" value="000" size="3"></td>
           </tr> 
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">Edad Gestacional</th>
           </tr>
           <tr>
               <td align="left" style="font-size:9">Seman. &nbsp;&nbsp;&nbsp;Dias</td>
               <td align="left" style="font-size:9" rowspan="2">FUM<br><input type=radio name="orden" value="1" checked><br>ECO<br><input type=radio name="orden" value="1" checked></td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type="text" name="pesobebe" value="40" size="2"><input type="text" name="pesobebe" value="0" size="1"></td>
           </tr>
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="orden" value="1">Estimada</td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9" colspan="2">PESO<br>E.G.</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >adeg</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="1" checked></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >peq</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="2" ></td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >gde.</td>
               <td align="center" style="font-size:9" ><input type=radio name="prese_si" value="3" ></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
              <th align="center" style="font-size:9" colspan="2">APGAR<br>min.</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >1</td>
               <td align="center" style="font-size:9" ><input type="text" name="pesobebe" value="00" size="2"></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >5</td>
               <td align="center" style="font-size:9" ><input type="text" name="pesobebe" value="00" size="2"></td>
           </tr>
        </table></td>
         
       <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">REANIMACION</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Estimulac<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Aspiracion<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Mascara<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >Otro<input type=radio name="posicionparto" value="1"><input type=radio name="posicionparto" value="1"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9">FALLECE</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >Lugar Parto</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" >No<input type=radio name="pesobeb" value="2">Si<input type=radio name="pesobeb" value="1"></td>
           </tr>
           <tr>
               <th align="center" style="font-size:9">REFERIDO</th>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" >aloj.&nbsp;&nbsp;&nbsp;neona&nbsp;&nbsp;&nbsp;otro<br>conj&nbsp;&nbsp;&nbsp;lolog.&nbsp;&nbsp;&nbsp;hosp.</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" ><input type=radio name="pesobeb" value="2"><input type=radio name="pesobeb" value="1"><input type=radio name="pesobeb" value="1"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="center" style="font-size:9">ATENDIO</td>
               <td align="center" style="font-size:9">Medico</td>
               <td align="center" style="font-size:9">Obst.</td>
               <td align="center" style="font-size:9">Enfer.</td>
               <td align="center" style="font-size:9">Auxil.</td>
               <td align="center" style="font-size:9">Estud.</td>
               <td align="center" style="font-size:9">Otro</td>
               <td align="center" style="font-size:9">Nombre</td>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >PARTO</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="10"></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" >NEONATO</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ></td>
               <td align="left" style="font-size:9" ><input type="text" name="detpaetogra" value="" size="10"></td>
           </tr>
        </table></td>
        
      </tr>
    </table>
  <!----otra tabla en otra columna---------------------->  
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="2">DEFECTOS<br>CONGENITOS</th>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >No<input type=radio name="posicionparto" value="2" ></td>
               <td align="right" style="font-size:9" >Mayor<input type=radio name="posicionparto" value="3" checked></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" colspan="2">Menor<input type=radio name="posicionparto" value="3" checked></td>
           </tr>
            <tr>
               <td align="center" style="font-size:9">Codigo</td>
               <td align="center" style="font-size:9"><input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">ENFERMEDADES</th>
           </tr> 
           <tr>
               <td align="left" style="font-size:9">Ninguna<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" >1 o mas<input type=radio name="episio" value="1" checked></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" colspan="2">Codigo1<input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
            <tr>
               <td align="center" style="font-size:9" colspan="2">Codigo2<input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">Tamizaje Neonatal</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9">VDRL</td>
               <td align="center" style="font-size:9" >Tratam.</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" colspan="2"><input type=radio name="episio" value="1" checked>No</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">-<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>Si</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">+<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>n/c</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">Nohizo<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>n  /d</td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="right" style="font-size:9" colspan="2">TSL</td>
               <td align="center" style="font-size:9" >Hbpatia</td>
               <td align="center" style="font-size:9">Bilirru</td>
               <td align="center" style="font-size:9">Toxo<br>lgM</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">-</td>
               <td align="right" style="font-size:9"><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">+</td>
               <td align="right" style="font-size:9"><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">No<br>hizo</td>
               <td align="right" style="font-size:9"><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="center" style="font-size:9" colspan="3">Antirrubeloa<br>Postparto</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;No</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;n/c</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" colspan="3">globulina<br>anti D</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;No</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;n/c</td>
           </tr>
         </table></td>
         <td><table class="formulario" border="0">
           <tr>
             <th align="center" style="font-size:9" colspan="7">PUERPERIO</th>
           </tr>
           <tr>
             <th style="font-size:9"> Hora </th>
             <th style="font-size:9"> Mim.</th>
             <th style="font-size:9"> TºC</th>
             <th style="font-size:9"> PA </th>    
             <th style="font-size:9"> Pulso</th>    
             <th style="font-size:9"> Invil.Uter</th>    
             <th style="font-size:9"> Lipidos</th>    
          </tr>
             <c:forEach begin="1" end="3" step="1" var="puerperio" varStatus="status">
               <!-- ********** Esto es para el efecto ************ -->
             <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
               <!-- ********** Fin  efecto ************ -->  
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
               <td><input type="text" name="detpaetogra" value="0" size="2"></td>
             </tr>  
             </c:forEach>
        </table></td>
      </tr>
     </table>
    <!----otra tabla en otra columna---------------------->  
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
      <tr>
         <td><table class="formulario" border="0">
           <tr>
               <th align="center" style="font-size:9" colspan="2">EGRESO RN</th>
           </tr> 
           <tr>
               <td align="right" style="font-size:9" >No<input type=radio name="posicionparto" value="2" ></td>
               <td align="right" style="font-size:9" >Mayor<input type=radio name="posicionparto" value="3" checked></td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" colspan="2">Menor<input type=radio name="posicionparto" value="3" checked></td>
           </tr>
            <tr>
               <td align="center" style="font-size:9">Codigo</td>
               <td align="center" style="font-size:9"><input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">ENFERMEDADES</th>
           </tr> 
           <tr>
               <td align="left" style="font-size:9">Ninguna<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" >1 o mas<input type=radio name="episio" value="1" checked></td>
           </tr> 
           <tr>
               <td align="center" style="font-size:9" colspan="2">Codigo1<input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
            <tr>
               <td align="center" style="font-size:9" colspan="2">Codigo2<input type="text" name="detpaetogra" value="" size="4"></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <th align="left" style="font-size:9" colspan="2">Tamizaje Neonatal</th>
           </tr>
           <tr>
               <td align="center" style="font-size:9">VDRL</td>
               <td align="center" style="font-size:9" >Tratam.</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9" colspan="2"><input type=radio name="episio" value="1" checked>No</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">-<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>Si</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">+<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>n/c</td>
           </tr>
           <tr>
               <td align="right" style="font-size:9">Nohizo<input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked>n  /d</td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="right" style="font-size:9" colspan="2">TSL</td>
               <td align="center" style="font-size:9" >Hbpatia</td>
               <td align="center" style="font-size:9">Bilirru</td>
               <td align="center" style="font-size:9">Toxo<br>lgM</td>
           </tr>
          
           <tr>
               <td align="right" style="font-size:9">No<br>hizo</td>
               <td align="right" style="font-size:9"><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" checked></td>
           </tr>
        </table></td>
        <td><table class="formulario" border="0">
           <tr>
               <td align="center" style="font-size:9" colspan="3">Antirrubeloa<br>Postparto</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;No</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;n/c</td>
           </tr>
           <tr>
               <td align="center" style="font-size:9" colspan="3">globulina<br>anti D</td>
           </tr> 
           <tr>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;No</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;Si</td>
               <td align="left" style="font-size:9" ><input type=radio name="episio" value="1" ><br>&nbsp;&nbsp;&nbsp;&nbsp;n/c</td>
           </tr>
         </table></td>
         
       
        
      </tr>
     </table>
    
    
  </table>
<center>
  <input type="submit" name='accion' class="btn btn-info" value='Imprimir'>
  <input type="submit" name='accion' class="btn btn-primary" value='Grabar'>
</center>
  <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>
  <input type="hidden" name=accion value='Cambiar'>
  <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
</form>