<%@ include file="../Superior.jsp" %>
<script language='JavaScript' SRC="./validar.js"></script>

<div><a class="btn btn-success" href='ListarMedicamentos.do'>Volver</a></div>

<form name="adicionacat" method="POST">
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
    <th colspan="2"><center>INTRODUZCA DATOS MEDICAMENTO</center></th>
     
    <c:if test="${accion == 'Adicionar'}">
    <tr style="font-size:9pt">
      <td align="right"> Codigo Med. </td>
      <td><input type="text" name="codsumi" maxlength="20" size="20" value="0"></td>
    </tr>
    <tr style="font-size:9pt">
      <td align="right"> Medicamento </td>
      <td><input type="text" name="medicamento" maxlength="80" size="60" value="<c:out value="${buscarMedicamento.medicamento}"/>"></td>
    </tr>       
    <tr style="font-size:9pt">
      <td align="right"> Ubicacion </td>
      <td><input type="text" name="ubicacion" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.ubicacion}"/>"></td>
    </tr>  
     <tr style="font-size:9pt">
      <td align="right"> Forma Farmaceutica</td>
      <td><input type="text" name="forma_far" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.forma_far}"/>"></td>
    </tr> 
    <tr style="font-size:9pt">
      <td align="right"> Concentracion </td>
      <td><input type="text" name="concentra" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.concentra}"/>"></td>
    </tr>  
      <tr style="font-size:9pt">
        <td align="right"> Costo Unitario </td>
        <td><input type="text" name="costo_unit" size="20" maxlength="15" onblur='validar(costo_unit,"9")' value="0"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Precio de Venta </td>
        <td><input type="text" name="precio_venta" size="20" maxlength="15" onblur='validar(precio_venta,"9")' value="0"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock Venta </td>
        <td><input type="text" name="stockv" size="20" maxlength="15" onblur='validar(stockv,"9")' value="0"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock SIIS</td>
        <td><input type="text" name="stocks" size="20" maxlength="15" onblur='validar(stocks,"9")' value="0"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock Programa</td>
        <td><input type="text" name="stockp" size="20" maxlength="15" onblur='validar(stockp,"9")' value="0"></td>
      </tr>           
      <tr style="font-size:9pt">
        <td align="right"> Stock </td>
        <td><input type="text" name="stock" size="20" maxlength="15" onblur='validar(stock,"9")' value="0"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right">Fecha de Vencimiento </td>    
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, 2020)' />dd-mm-aaaa
        </td>	                 
      </tr> 
      
      <tr style="font-size:9pt">
        <td align="right"> Numero de Lote </td>
        <td><input type="text" name="nro_lote" maxlength="20" size="20" value="SL"></td>
      </tr>
      </c:if>
      
      <c:if test="${accion == 'Modificar'}">
       <tr style="font-size:9pt">
      <td align="right"> Codigo Med. </td>
      <td><input type="text" name="codsumi" maxlength="20" size="20" readonly value="<c:out value="${buscarMedicamento.codsumi}"/>"></td>
    </tr>
    <tr style="font-size:9pt">
      <td align="right"> Medicamento </td>
      <td><input type="text" name="medicamento" maxlength="80" size="60" value="<c:out value="${buscarMedicamento.medicamento}"/>"></td>
    </tr>       
    <!--<tr style="font-size:9pt">
      <td align="right"> Ubicacion </td>
      <td><input type="text" name="ubicacion" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.ubicacion}"/>"></td>
    </tr>-->  
     <tr style="font-size:9pt">
      <td align="right"> Forma Farmaceutica</td>
      <td><input type="text" name="forma_far" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.forma_far}"/>"></td>
    </tr> 
    <tr style="font-size:9pt">
      <td align="right"> Concentracion </td>
      <td><input type="text" name="concentra" size="20" maxlength="50" value="<c:out value="${buscarMedicamento.concentra}"/>"></td>
    </tr>   
       <tr style="font-size:9pt">
        <td align="right"> Costo Unitario </td>
        <td><input type="text" name="costo_unit" size="20" maxlength="15" onblur='validar(costo_unit,"9")' value="<c:out value="${buscarMedicamento.costo_unit}"/>"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Precio de Venta </td>
        <td><input type="text" name="precio_venta" size="20" maxlength="15" onblur='validar(precio_venta,"9")' value="<c:out value="${buscarMedicamento.precio_venta}"/>"></td>
      </tr>  
     <c:if test="${tipo=='3'}">
      <tr style="font-size:9pt">
        <td align="right"> Stock Venta </td>
        <td><input type="text" name="stockv" size="20" maxlength="15" readonly onblur='validar(stockv,"9")' value="<c:out value="${buscarMedicamento.stockv}"/>" ></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock SIIS</td>
        <td><input type="text" name="stocks" size="20" maxlength="15" readonly onblur='validar(stocks,"9")' value="<c:out value="${buscarMedicamento.stocks}"/>" ></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock Prrrograma</td>
        <td><input type="text" name="stockp" size="20" maxlength="15" readonly onblur='validar(stockp,"9")' value="<c:out value="${buscarMedicamento.stockp}"/>" ></td>
      </tr>           
      <tr style="font-size:9pt">
        <td align="right"> Stock </td>
        <td><input type="text" name="stock" size="20" maxlength="15" onblur='validar(stock,"9")' value="<c:out value="${buscarMedicamento.stock}"/>"></td>
      </tr>
     </c:if>
     <c:if test="${tipo!='3'}">
      <tr style="font-size:9pt">
        <td align="right"> Stock Venta </td>
        <td><input type="text" name="stockv" size="20" maxlength="15" onblur='validar(stockv,"9")' value="<c:out value="${buscarMedicamento.stockv}"/>"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock Sumi</td>
        <td><input type="text" name="stocks" size="20" maxlength="15" onblur='validar(stocks,"9")' value="<c:out value="${buscarMedicamento.stocks}"/>"></td>
      </tr>     
      <tr style="font-size:9pt">
        <td align="right"> Stock Programa</td>
        <td><input type="text" name="stockp" size="20" maxlength="15" onblur='validar(stockp,"9")' value="<c:out value="${buscarMedicamento.stockp}"/>"></td>
      </tr>           
      <tr style="font-size:9pt">
        <td align="right"> Stock </td>
        <td><input type="text" name="stock" size="20" maxlength="15" onblur='validar(stock,"9")' value="<c:out value="${buscarMedicamento.stock}"/>"></td>
      </tr>
     </c:if>
      <tr style="font-size:9pt">
        <td align="right">Fecha de Vencimiento </td>    
        <td><input type="text" name="dia" value="<c:out value="${dia}"/>" maxlength=2 size=2 onblur=validarNota(dia,1, 31)>-
            <input type="text" name="mes" value="<c:out value="${mes}"/>" maxlength=2 size=2 onblur=validarNota(mes, 1, 12)>-
            <input type="text" name="anio" value="<c:out value="${anio}"/>" maxlength=4 size=4 onblur=validarNota(anio, 1900, 2020)' />dd-mm-aaaa
        </td>	                 
      </tr> 
      
      <tr style="font-size:9pt">
        <td align="right"> Numero de Lote </td>
        <td><input type="text" name="nro_lote" maxlength="20" size="20" value="<c:out value="${buscarMedicamento.nro_lote}"/>"></td>
      </tr> 
        <tr style="font-size:9pt">    
             <td align="right">Tipo </td>    	
             <td>
                <c:if test="${buscarMedicamento.tipo=='M'}">
                    <SELECT NAME="tipo">
                    <option value="M" selected> Medicamento </option>
                    <option value="I" > Insumo </option>
                    <option value="R" > Reactivo </option>
                </c:if>
                <c:if test="${buscarMedicamento.tipo=='I'}">
                    <SELECT NAME="tipo">
                    <option value="I" selected> Insumo </option>
                    <option value="M" > Medicamento </option>
                    <option value="R" > Reactivo </option>
                </c:if>
                <c:if test="${buscarMedicamento.tipo=='R'}">
                    <SELECT NAME="tipo">
                    <option value="R" selected> Reactivo </option>
                    <option value="I" > Insumo </option>
                    <option value="M" > Medicamento </option>
                </c:if>
              </SELEC          
            </td>
         </tr>  
       <tr style="font-size:9pt">    
             <td align="right">Restringido </td>    	
             <td>
                <c:if test="${buscarMedicamento.restringido=='0'}">
                    <SELECT NAME="restringido">
                    <option value="0" selected> NO </option>
                    <option value="1" > SI</option>
                </c:if>
                <c:if test="${buscarMedicamento.restringido=='1'}">
                    <SELECT NAME="restringido">
                    <option value="1" selected> SI </option>
                    <option value="0" > NO </option>
                </c:if>
              </SELEC          
            </td>
         </tr>    
      <tr style="font-size:9pt">
        <td align="right"> Stock Maximo <br>a Dispensar </td>
        <td><font size="1"><b>Emerg:</b></font><input type="text" name="max_emerg" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.max_emerg}"/>">
            <font size="1"><b>C.Ext:</b></font><input type="text" name="max_exter" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.max_exter}"/>">
                           <b>C.Inter.:</b></font><input type="text" name="max_inter" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.max_inter}"/>">
        </td>
      </tr> 
      <tr style="font-size:9pt">
        <td align="right"> Stock Minimo <br>a Dispensar </td>
        <td><font size="1"><b>Emerg:</b></font><input type="text" name="min_emerg" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.min_emerg}"/>">
            <font size="1"><b>C.Ext:</b></font><input type="text" name="min_exter" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.min_exter}"/>">
            <font size="1"><b>C.Inter.:</b></font><input type="text" name="min_inter" maxlength="3" size="3" value="<c:out value="${buscarMedicamento.min_inter}"/>">
        </td>
      </tr>
        <tr style="font-size:9pt">
          <td align="right">Estado </td>
          <td><input type=checkbox name="codigo" value="<c:out value="${buscarMedicamento.codigo}"/>" <c:if test="${buscarMedicamento.codigo == -1}">checked</c:if>>
          </td>
        </tr>
       <!-- <tr>
          <td align="right">Elegir Seguro </td>
          <td align="right">::</td>	      
          <td>
            <SELECT NAME="tipo">
            <c:forEach var="estado" items="${listaPacAfi}">
              <c:if test="${estado.id_seguro>3}"> 
      	         <OPTION value="<c:out value="${estado.id_seguro}"/>" <c:if test="${estado.id_seguro== id_seguro}">selected</c:if>> 
	         <c:out value="${estado.seguro}"/>
                 </option>
              </c:if>    
             </c:forEach>
           </SELECT>	
           <input type="submit" class="adicion" value='Adicionar' onclick="document.adicionacat.accion1.value='AdicionSeg';
								      document.adicionacat.action='<c:url value="/ConfirmarMedicamento.do"/>'">
         </td> 
        </tr> --> 
      </c:if>
    
  </table>
  <center>
    <input type="submit" class="btn btn-primary" value='Siguiente' onclick="document.adicionacat.accion1.value='Guardar';
								      document.adicionacat.action='<c:url value="/ConfirmarMedicamento.do"/>'">
  </center>
    <input type="hidden" name='accion1' value=''>
    <input type="hidden" name='id_medicamento' value='<c:out value="${id_medicamento}"/>'>    
    <input type="hidden" name='sw' value='<c:out value="${sw}"/>'>    
    <input type="hidden" name='accion' value='<c:out value="${accion}"/>'>
    <input type="hidden" name='id_medicamento' value='<c:out value="${buscarMedicamento.id_medicamento}"/>'>
    <input type="hidden" name='recargado' value='Si'>
</form>
