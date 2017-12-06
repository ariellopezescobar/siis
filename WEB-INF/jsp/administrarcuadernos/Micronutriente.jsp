<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language = 'JavaScript' SRC="./validar.js">  </script>

<form name="forma" method="POST" action='<c:url value="/ControlCalidad.do"/>' >
<center>
  <table class="table table-bordered table-hover table-condensed table-responsive">
    <tr >
      <th colspan="2" bgcolor="#F2F2F2"><center> CONTROL DE CALIDAD SEGUN MEDICAMENTO DISPENSADO</center> </th>
    </tr>
    <tr>
      <td colspan="2">
        <fieldset> 
            <table class="table table-bordered table-hover table-condensed table-responsive">  
              <tr style="font-size:12pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
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
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
              
	      <tr style="font-size:12pt"><td align="right" bgcolor="#F2F2F2"><b> Fecha Inicio</b></td>	
               <td ><SELECT NAME="diaf">
                     <c:forEach var="dias" items="${dias}">
                       <option value="<c:out value="${dias}"/>" <c:if test="${dias == dia2}">selected</c:if>> 
                         <c:out value="${dias}"/></option></c:forEach></SELECT>
                <SELECT NAME="mesf">
                     <c:forEach var="meses" items="${meses}">
                       <option value="<c:out value="${meses}"/>" <c:if test="${meses == mes2}">selected</c:if>> 
                         <c:out value="${meses}"/></option></c:forEach></SELECT>
                 <SELECT NAME="aniof">
                     <c:forEach var="anios" items="${anios}">
                       <option value="<c:out value="${anios}"/>" <c:if test="${anios == anio2}">selected</c:if>> 
                         <c:out value="${anios}"/></option></c:forEach></SELECT>
                 <SELECT NAME="horaf">
                     <c:forEach var="horas" items="${horas}">
                       <option value="<c:out value="${horas}"/>" <c:if test="${horas == hora2}">selected</c:if>> 
                         <c:out value="${horas}"/></option></c:forEach></SELECT>
                 <SELECT NAME="minutof">
                     <c:forEach var="minutos" items="${minutos}">
                       <option value="<c:out value="${minutos}"/>" <c:if test="${minutos == minuto2}">selected</c:if>> 
                         <c:out value="${minutos}"/></option></c:forEach></SELECT>
                 <br><font size="2" color="blue">&nbsp;&nbsp;&nbsp;Dia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Mes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Año&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Hora&nbsp;&nbsp;&nbsp;&nbsp;Minuto</font>        
               </td>
              </tr>
	    </table>
        </fieldset>
      </td>
    </tr>

      <tr >
        <td  align="right" bgcolor="#F2F2F2">Medicamento </td>	      
        <td >
          <SELECT NAME="id_medicamento">
            <option value="0">-- seleccione --
       	    <c:forEach var="med" items="${listarMedicamentos}">
    	      <option value="<c:out value="${med.id_medicamento}"/>" <c:if test="${med.id_medicamento == id_medicamento}">selected</c:if>> 
                  <font color="blue"><c:out value="${fn:substring(med.medicamento,0,30)}"/></font><font size="2pt">[<c:out value="${fn:substring(med.forma_far,0,15)}"/>]</font><font color="blue"><c:out value="${fn:substring(med.concentra,0,15)}"/></font>
	      </option>
	    </c:forEach>
          </SELECT>  
        </td>
      </tr>
   </table>
   
   <c:if test="${codesta != '200010'}"> 
       </c:if>    
       <div style="font-size:15pt"> Reporte Individual del Establecimiento</div>
        <input type="submit" name="accion" class="btn btn-info"    value="Impresion">
        <input type="submit" name="accion" class="btn btn-primary"      value="Resumen Micronutriente">

   
      <div style="font-size:15pt"> Reporte Gerencial General</div>
      <c:if test="${idrol2!='30'}">
         <input type="submit" name="accion" class="btn btn-info"  value="ResumenMedicamento"> 
         <input type="submit" name="accion" class="btn btn-info"  value="ResumenGralMedicamentos">
      </c:if> 

         

      
  </center>
 </form> 
<table class="table table-bordered table-hover table-condensed table-responsive">
  <tr style="font-size:9pt">    
    <th bgcolor="#F2F2F2"> NRO </th>
    <th bgcolor="#F2F2F2"> FECHA </th>
    <th bgcolor="#F2F2F2"> MEDICO </th>
    <th bgcolor="#F2F2F2"> PACIENTE </th>
    <th bgcolor="#F2F2F2"> SIGNOS </th>
    <th bgcolor="#F2F2F2"> DIAGNOSTICO </th>        
    <th bgcolor="#F2F2F2"> CIE10 </th>  
    <th bgcolor="#F2F2F2"> PRESTACIONES </th>
    <th bgcolor="#F2F2F2"> CUADERNO1 </th>
    <th bgcolor="#F2F2F2"> CUADERNO2 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO3 </th> 
    <th bgcolor="#F2F2F2"> CUADERNO4 </th> 
    <th bgcolor="#F2F2F2"> C.VACUNAS </th>
    <th bgcolor="#F2F2F2"> RECETADO </th>
    <th bgcolor="#F2F2F2"> DISPENSADO</th>
    </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <tr style="font-size:9pt">    
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yy HH:mm'/></td>
       <td><c:out value="${lista.nombre}"/><br><font color="blue" style="font-size:9pt"><c:out value="${lista.consultorio}"/></font></td>      
       <td><font color="blue">Hcl:<c:out value="${lista.hcl}"/></font><br><c:out value="${lista.nombres}"/></td>
     <c:if test="${lista.expedido=='S'}">
       <td>edad:<font color="blue"><c:out value="${lista.edad}"/>años;<c:out value="${lista.mes}"/>meses;<c:out value="${lista.dia}"/>dias</font><br>talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><BR style="color:red"><c:if test="${lista.embarazo==1}">Embarazada</c:if><br><font color="red">SUMI</font></td>  
     </c:if>
     <c:if test="${lista.expedido=='E'}">
       <td>edad:<font color="blue"><c:out value="${lista.edad}"/>años;<c:out value="${lista.mes}"/>meses;<c:out value="${lista.dia}"/>dias</font><br>talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><BR>Externo</td>  
     </c:if>
     <c:if test="${lista.expedido=='P'}">
       <td>edad:<font color="blue"><c:out value="${lista.edad}"/>años;<c:out value="${lista.mes}"/>meses;<c:out value="${lista.dia}"/>dias</font><br>talla:<c:out value = "${lista.talla}"/><br>Peso:<c:out value = "${lista.peso}"/><br style="color:green"><font color="green"><c:out value="${lista.seguro}"/></font></td>   
     </c:if>
       <td><c:out value="${lista.diagnostico}"  escapeXml="False"/></td>  
       <td><c:out value="${lista.codigo}"/></td> 
       <c:forEach var="listaAten" items="${milistaAten}">
       <c:if test="${listaAten.id_historial == lista.id_historial}"> 
       <td><table class="tabla">
       <c:if test="${listaAten.edad_fin>0 }">
            <c:forEach var="listapre" items="${milistapre}">
                <c:if test="${listaAten.id_historial == listapre.id_historial}">  <!-- **Prestaciones llenas** -->
                    <tr style="font-size:8pt"><td><c:out value="${listapre.prestacion }"/><br/>;<c:out value="${listapre.descripcion}"/></td></tr>
                  <!--   <tr><c:out value="${listapre.prestacion }"/>--<c:out value="${listapre.descripcion}"/><br style="color:blue"></tr>-->
                </c:if>        
           </c:forEach>
       </c:if>
       <c:if test="${listaAten.edad_fin==0 }">  <!-- **Prestaciones vacias** -->
              <td>S/P</td>  
       </c:if>
       </table></td> 
       
     <c:if test="${listaAten.id_tipo_documento==1 }">  <!-- **Cuaderno1 lleno** -->
            <c:forEach var="listaC1" items="${listaC1}">
                <c:if test="${listaAten.id_historial == listaC1.id_historial and listaC1.tipoconsulta=='N'}">
                    <th>NUEVO</th>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC1.id_historial and listaC1.tipoconsulta=='R'}">
                    <th>Repetido</th>
                </c:if> 
            </c:forEach> 
       </c:if>
       <c:if test="${listaAten.id_tipo_documento==0 }">  <!-- **Cuaderno1 Vacio** -->
             <th>s/c1</th>
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
                    <tr><td>Sulf.Ferr.:<font size="3pt" color="red"><c:out value="${listaC2.tabletas}"/></font></td></tr>  
                </c:if>
                <c:if test="${listaAten.id_historial == listaC2.id_laboratorio and listaC2.sfpuerpera=='1'}"> 
                    <tr><td>Sulf.Ferr..:<font size="3pt" color="red"><c:out value="${listaC2.tabletas}"/></font></td></tr>  
                </c:if>
           </c:forEach>     
       </c:if>
       <c:if test="${listaAten.id_tipo_parentesco==0 }">  <!-- **Cuaderno2 Vacio** -->
                  <td>s/c2</td>
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
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.otras==5}"> 
                            <tr><td>Condon Femenino :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.otras==6}"> 
                            <tr><td>Implante Subcutaneo :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
                      <c:if test="${listaAten.id_historial == listaC3.id_historial and listaC3.otras==1}"> 
                            <tr><td>Otros Metodos<br>Insumos :<c:out value="${listaC3.insumos}"/></td></tr>  
                      </c:if>
            </c:forEach>    
       </c:if>
       <c:if test="${listaAten.id_pais==0 }">  <!-- **Cuaderno3 Vacio** -->
             <td>s/c3</td>
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
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dvitaa=='X'}">
                    <tr><th>.</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dvitaa=='U'}">
                    <tr><th>Vitamina A Dosis Unica</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dvitaa=='P'}">
                    <tr><th>Vitamina A 1ra.Dosis</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.dvitaa=='S'}">
                    <tr><th>Vitamina A 2da.Dosis</td></tr>
                </c:if>
                <c:if test="${listaAten.id_historial == listaC4.id_historial and listaC4.seleccion==0 and listaC4.suma5=='1'}">
                    <tr><th>Lactancia Exclusiva</td></tr>
                </c:if>
            </c:forEach>    
       </c:if>
       <c:if test="${listaAten.id_departamento==0 }">  <!-- **Cuaderno4 Vacio** -->
            <th>s/c4</td>
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
            <th>s/v</td>
       </c:if> 
   </table></td>
    
      <td><table class="tabla">
       <c:if test="${listaAten.edad_ini>0 }">  <!-- **Medicamentos lleno** -->
            <c:forEach var="listarMed" items="${listarMed}">
                <c:if test="${listaAten.id_historial == listarMed.id_historial}">  
                      <tr><td><font size="3pt" color="blue"><fmt:formatNumber value="${listarMed.salida}" maxFractionDigits="0"/></font>.<c:out value="${listarMed.medicamento}"/>[<c:out value="${listarMed.forma_far}"/>;<c:out value="${listarMed.concentra}"/>]</td></tr>
                </c:if>   
            </c:forEach> 
       </c:if>
       
       <c:if test="${listaAten.edad_ini==0 }">  <!-- **Medicamentos Vacio** -->
            <td>-.-</td>
       </c:if>  
      </table></td>       
      
      <td><table class="tabla">
      <c:if test="${listaAten.edad_ini>0 }">  <!-- **Medicamentos lleno** -->
          <c:forEach var="listarK" items="${listarKardex}">
              <c:if test="${listaAten.id_historial == listarK.id_factura}">  
                  <tr><td><font size="3pt" color="red"><fmt:formatNumber value="${listarK.salida}" maxFractionDigits="0"/></font>.<c:out value="${listarK.medicamento}"/>[<c:out value="${listarK.forma_far}"/>;<c:out value="${listarK.concentra}"/>]</td></tr>
              </c:if> 
           </c:forEach>  
      </c:if>
      <c:if test="${listaAten.edad_ini==0 }">  <!-- **Medicamentos Vacio** -->
            <td>.</td>
      </c:if>
      </table></td> 
      
     </c:if>    
    </c:forEach>        
   </tr>      
 </c:forEach>
</table>
