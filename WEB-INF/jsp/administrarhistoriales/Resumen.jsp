<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div style="font-size:15pt"> Resumen General de Atencion de Pacientes</div>
<br>
   
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> Fecha<br>Consultorio<br>Medico<br>Establecimiento </th>
    <th bgcolor="#F2F2F2"> SIGNOS </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>        
    <th bgcolor="#F2F2F2"> CIE10 </th>  
    <th bgcolor="#F2F2F2"> PRESTACIONES </th>
    <th bgcolor="#F2F2F2"> CUADERNO1 </th>
    <th bgcolor="#F2F2F2"> CUADERNO2 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO3 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO4 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO5 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO6 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO7 </th> 
    <th bgcolor="#F2F2F2"> C.VACUNAS </th>
    <th bgcolor="#F2F2F2"> MEDICAMENTOS </th>
    <th bgcolor="#F2F2F2"> LABORATORIO </th>
    <th bgcolor="#F2F2F2"> COBRANZA </th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">
       <td align="center"><c:out value="${contador.count}"/></td>
       <td>
          <fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy'/><br><font color="green"><fmt:formatDate value="${lista.fecha}" pattern='HH:mm'/></font><br><br>
          <font color="Blue"><c:out value="${lista.consultorio}"/></font><br><c:out value="${lista.nombre}"/><br><br><font color="red"><c:out value="${lista.cama}"/> </td>    
       <c:if test="${lista.expedido=='S'}">
          <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br><font color="red">SUMI</font><br><font color="blue"><c:if test="${lista.internado>1}"><b>INTERNADO</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==1}"><b>Embarazada</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font></td>  
       </c:if>
       <c:if test="${lista.expedido=='E'}">
          <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br>Externo<br><font color="blue"><c:if test="${lista.internado>1}"><b>INTERNADO</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font></td>
       </c:if>
       <c:if test="${lista.expedido=='P'}">
           <td>edad:<c:out value="${lista.edad}"/><font color="blue">a</font><c:out value="${lista.mes}"/><font color="blue">m</font><c:out value="${lista.dia}"/><font color="blue">d</font><br>Talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br>Temp.:<c:out value = "${lista.temperatura}"/><br>FC:<c:out value = "${lista.fc}"/><br>PA:<c:out value = "${lista.pa}"/><br>FR:<c:out value = "${lista.fr}"/><br style="color:green"><font color="green"><c:out value="${lista.seguro}"/></font><br><font color="blue"><c:if test="${lista.internado>1}"><b>INTERNADO</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==2}"><b>Parto</b></c:if></font><br><font color="red"><c:if test="${lista.embarazo==3}"><b>Puerperio</b></c:if></font></td>   
       </c:if>   
       <td><c:out value="${lista.nombres}"/></td>      
       
     
       <td><c:out value="${lista.diagnostico}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.codigo}"/></td> 
       <c:forEach var="listaAten" items="${milistaAten}">
       <c:if test="${listaAten.id_historial == lista.id_historial}"> 
       <td><table class="tabla">
       <c:if test="${listaAten.edad_fin>0 }">
            <c:forEach var="listapre" items="${milistapre}">
                <c:if test="${listaAten.id_historial == listapre.id_historial}">  <!-- **Prestaciones llenas** -->
                      <td><c:out value="${listapre.prestacion }"/><br/>;<c:out value="${listapre.descripcion}"/></td>
                  <!--   <tr><c:out value="${listapre.prestacion }"/>--<c:out value="${listapre.descripcion}"/><br style="color:blue"></tr>-->
                </c:if>        
           </c:forEach>
       </c:if>
       <c:if test="${listaAten.edad_fin==0 }">  <!-- **Prestaciones vacias** -->
              <td></td>  
       </c:if>
       </table></td> 
       
       <c:if test="${listaAten.id_tipo_documento==1 }">  <!-- **Cuaderno1 lleno** -->
            <c:forEach var="listaC1" items="${listaC1}">
                <c:if test="${listaAten.id_historial == listaC1.id_historial and listaC1.tipoconsulta=='N'}">
                    <th>NUEVO</td>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC1.id_historial and listaC1.tipoconsulta=='R'}">
                    <th>Repetido</td>
                </c:if> 
            </c:forEach> 
       </c:if>
       <c:if test="${listaAten.id_tipo_documento==0 }">  <!-- **Cuaderno1 Vacio** -->
             <th></td>
       </c:if>   
       
    <td><table class="tabla">   
       <c:if test="${listaAten.id_tipo_parentesco==1 }">  <!-- **Cuaderno2 lleno** -->
            <c:forEach var="listaC2" items="${listaC2}">
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.suma1=='1'}"> 
                    <tr><td>Prenatal <br>Nuevo antes 5 mes</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.suma2=='1'}"> 
                    <tr><td>Prenatal <br>Nuevo Despues 5 mes</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.suma3=='1'}"> 
                    <tr><td>Prenatal <br>Control Repetido</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.suma4=='1'}"> 
                    <tr><td>Prenatal <br>4to Control</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.parto=='1'}"> 
                    <tr><td>Parto Vaginal<br>90 tabletas SF<br>Vitamina A</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.parto=='2'}"> 
                    <tr><td>Parto por Cesarea<br> 90 tabletas SF<br>Vitamina A</td></tr>  
                </c:if>
                 <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.parto=='3'}"> 
                    <tr><td>Parto por<br>Personal Salud</td></tr>  
                </c:if>
                 <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.parto=='4'}"> 
                    <tr><td>Parto por<br>Partera capacitada</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.controlpos=='2'}"> 
                    <tr><td>2do Control <br>o mas posparto</td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.sfembarazada=='1'}"> 
                    <tr><td>Sulf.Ferr.:<c:out value="${listaC2.tabletas}"/></td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.sfpuerpera=='1'}"> 
                    <tr><td>Sulf.Ferr..:<c:out value="${listaC2.tabletas}"/></td></tr>  
                </c:if>
           </c:forEach>     
       </c:if>
       <c:if test="${listaAten.id_tipo_parentesco==0 }">  <!-- **Cuaderno2 Vacio** -->
                  <td>_</td>
       </c:if>   
    </table></td>
   
    <td><table class="tabla">
       <c:if test="${listaAten.id_pais==1 }">  <!-- **Cuaderno3 lleno** -->
            <c:forEach var="listaC3" items="${listaC3}">
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.tipoconsulta=='N'}"> 
                            <tr><td>Usuaria NUEVO</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.tipoconsulta=='C'}"> 
                            <tr><td>Usuaria Continua</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.diu==1}"> 
                            <tr><td>DIU<br>Insumos No. 1</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.inyectable==1}"> 
                            <tr><td>Inyectable<br>Trimestral</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.condon==1}"> 
                            <tr><td>CONDON<br>Insumos :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.pildora==1}"> 
                            <tr><td>PILDORA<br>Insumos :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.pildora==2}"> 
                            <tr><td>PILDORA Emergencia<br>Insumos :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.mnatural==1}"> 
                            <tr><td>MELA</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.mnatural==2}"> 
                            <tr><td>RITMO</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.mnatural==3}"> 
                            <tr><td>DIAS FIJOS</td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.otras==1}"> 
                            <tr><td>Otros Metodos<br>Insumos :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
            </c:forEach>    
       </c:if>
       <c:if test="${listaAten.id_pais==0 }">  <!-- **Cuaderno3 Vacio** -->
             <td></td>
       </c:if>   
    </table></td>     
    
    <td><table class="tabla">  
       <c:if test="${listaAten.id_departamento==1 }">  <!-- **Cuaderno4 lleno** -->
            <c:forEach var="listaC4" items="${listaC4}">
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==1 and listaC4.tipoconsulta=='N'}">
                    <tr><th>CONSULTA NUEVA</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==1 and listaC4.tipoconsulta=='R'}">
                    <tr><th>Consulta Repetida</td></tr>
                </c:if> 
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.tipoconsulta=='N'}">
                    <tr><th>NUEVO CyD</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.tipoconsulta=='R'}">
                    <tr><th>Repetidos CyD</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='G'}">
                    <tr><th>P/T= DESNUTRICON GRAVE</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='L'}">
                    <tr><th>P/T= DESNUTRICON LEVE</td></tr>
                </c:if>
                 <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='M'}">
                    <tr><th>P/T= DESNUTRICON MODERADA</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='N'}">
                    <tr><th>P/T= NORMAL</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='S'}">
                    <tr><th>P/T= SOBREPESO</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dglobal=='O'}">
                    <tr><th>P/T= OBESIDAD</td></tr>
                </c:if>
                 <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dcronica=='G'}">
                    <tr><th>T/E= TALLA GRAVE</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dcronica=='M'}">
                    <tr><th>T/E= TALLA MODERADA</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dcronica=='L'}">
                    <tr><th>T/E= TALLA LEVE</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dcronica=='N'}">
                    <tr><th>T/E= TALLA NORMAL</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dhierro!='X'}">
                    <tr><th>Dosis Hierro</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dvitaa!='X'}">
                    <tr><th>Dosis Vitamina A</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.lmexclu!='X'}">
                    <tr><th>Lactancia Exclusiva</td></tr>
                </c:if>
            </c:forEach>    
       </c:if>
       <c:if test="${listaAten.id_departamento==0 }">  <!-- **Cuaderno4 Vacio** -->
            <th>...</td>
       </c:if>   
     </table></td>
     
     <td><table class="tabla">
       <c:if test="${listaAten.num==1 }">  <!-- **Cuaderno5 lleno** -->
       <c:forEach var="listaC5" items="${listaC5}">
           <c:if test="${listaAten.id_historial == listaC5.id_historial}"> 
                            <tr><td><c:out value="${listaC5.diagnostico_ing}"/></td></tr>  
           </c:if>
           <c:if test="${listaAten.id_historial == listaC5.id_historial}"> 
                            <tr><td><c:out value="${listaC5.diagnostico}"/></td></tr>  
           </c:if>
       </c:forEach>     
       </c:if>
       <c:if test="${listaAten.num==0 }">  <!-- **Cuaderno5 Vacio** -->
            <td>..</td>
       </c:if>   
   </table></td>
     
   <td><table class="tabla">  
       <c:if test="${listaAten.id_provincia==1 }">  <!-- **Cuaderno6 lleno** -->
             <c:forEach var="listaC6" items="${listaC6}">
                 <c:if test="${listaAten.id_historial == listaC6.id_historial and listaC6.inyectable>0}"> 
                            <tr><td>INYECTABLE :<c:out value="${listaC6.inyectable}"/></td></tr>  
                 </c:if>
                 <c:if test="${listaAten.id_historial == listaC6.id_historial and listaC6.sueros>0}"> 
                            <tr><td>SUEROS :<c:out value="${listaC6.inyectable}"/></td></tr>  
                 </c:if>
                 <c:if test="${listaAten.id_historial == listaC6.id_historial and listaC6.curaciones>0}"> 
                            <tr><td>CURACIONES :<c:out value="${listaC6.inyectable}"/></td></tr>  
                 </c:if>
             </c:forEach> 
       </c:if>
       <c:if test="${listaAten.id_provincia==0 }">  <!-- **Cuaderno6 Vacio** -->
            <td></td>
       </c:if>   
    </table></td>
     
    <td><table class="tabla">   
       <c:if test="${listaAten.id_localidad>0 }">  <!-- **Cuaderno7 lleno** -->
            <c:forEach var="listaC7" items="${listaC7}">
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.tipoconsulta=='N'}"> 
                    <tr><td>NUEVO </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.tipoconsulta=='R'}"> 
                    <tr><td>Repetido </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.tipodent=='P'}"> 
                    <tr><td>PERMANENTE </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.tipodent=='T'}"> 
                    <tr><td>Temporaria </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.exodoncia>0}"> 
                    <tr><td>EXODONCIA </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.restauracion>0}"> 
                    <tr><td>RESTAURACION </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.periodoncia>0}"> 
                    <tr><td>PERIODONCIA </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.cirugia>0}"> 
                    <tr><td>CIRUGIA </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.endodoncia>0}"> 
                    <tr><td>ENDONCIA </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.rayosx>0}"> 
                    <tr><td>Rayos X </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.preventiva>0}"> 
                    <tr><td>Acciones Preventivas </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.otras>0}"> 
                    <tr><td>OTRAS ACCIONES </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaC7.id_historial and listaC7.numpieza>0}"> 
                    <tr><td>Pieza No.:<c:out value="${listaC7.numpieza}"/> </td></tr>  
               </c:if>
            </c:forEach> 
       </c:if>
       <c:if test="${listaAten.id_localidad==0 }">  <!-- **Cuaderno7 Vacio** -->
            <td></td>
       </c:if>  
    </table></td>
   
    <td><table class="tabla">
       <c:if test="${listaAten.id_reservacion==1 }">  <!-- **CuadernoV lleno** -->
            <c:forEach var="listaV" items="${listaV}">
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.polio=='P'}"> 
                    <tr><th>Polio Primera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.polio=='S'}"> 
                    <tr><th>Polio Primera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.polio=='T'}"> 
                    <tr><th>Polio Primera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.penta=='P'}"> 
                    <tr><th>Pentavalente Primera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.penta=='S'}"> 
                    <tr><th>Pentavalente Segunda </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.penta=='T'}"> 
                    <tr><th>Pentavalente Tercera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.anti=='P'}"> 
                    <tr><th>ANTI Priemra </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.anti=='S'}"> 
                    <tr><th>ANTI Segunda </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.anti=='T'}"> 
                    <tr><th>ANTI Terecera </td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.bcg==1}"> 
                    <tr><th>BCG</td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.srp==1}"> 
                    <tr><th>SRP</td></tr>  
               </c:if>
               <c:if test="${listaAten.id_historial == listaV.id_historial and listaV.fama==1}"> 
                    <tr><th>FAMA</td></tr>  
               </c:if>
            </c:forEach> 
       </c:if>
       <c:if test="${listaAten.id_reservacion==0 }">  <!-- **CuadernoV Vacio** -->
            <th>___</td>
       </c:if> 
   </table></td>
    
      <td><table class="tabla">
       <c:if test="${listaAten.edad_ini>0 }">  <!-- **Medicamentos lleno** -->
            <c:forEach var="listarMed" items="${listarMed}">
                <c:if test="${listaAten.id_historial == listarMed.id_historial}">  
                      <tr><td><fmt:formatNumber value="${listarMed.salida}" maxFractionDigits="0"/>..<c:out value="${listarMed.medicamento}"/>[<c:out value="${listarMed.forma_far}"/>;<c:out value="${listarMed.concentra}"/>]</td></tr>
                </c:if>   
            </c:forEach> 
       </c:if>
       <c:if test="${listaAten.edad_ini==0 }">  <!-- **Medicamentos Vacio** -->
            <td>-.-</td>
       </c:if>  
      </table></td>       
      
      <td><table class="tabla">
      <c:if test="${listaAten.id_cargo>0 }">  <!-- **Laboratorio lleno** -->
          <c:forEach var="listaLab" items="${listaLab}">
             <c:if test="${listaAten.id_historial == listaLab.id_historial}">  
                 <tr><td><c:out value="${listaLab.laboratorio}"/></td></td>
             </c:if>
          </c:forEach>     
      </c:if>
      <c:if test="${listaAten.id_cargo==0 }">  <!-- **Laboratorio Vacio** -->
            <td></td>
      </c:if>
      </table></td> 
      
      <td><table class="tabla">
      <c:if test="${listaAten.rango>0 }">  <!-- **Cobros lleno** -->
         <c:forEach var="listarCostos" items="${listarCostos}">
               <c:if test="${listaAten.id_historial == listarCostos.id_detalle}">
                   <tr><td><c:out value="${listarCostos.costo}"/></td></td>
               </c:if>
         </c:forEach>      
      </c:if>
      <c:if test="${listaAten.rango==0 }">  <!-- **Cobros Vacio** -->
            <td></td>
      </c:if>   
      </table></td> 
       
     </c:if>    
    </c:forEach>        
  </tr>      
 </c:forEach>
</table>
