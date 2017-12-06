<%@ include file="../Superior.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<form name="forma" method="POST" action='<c:url value="/RecepcionMed.do"/>' >
<table> 
 <tr>
   <td width="20%"><td>
 <td width="70%">  
 <center>
  <table class="table table-striped table-bordered table-hover table-condensed table-responsive"> 
    <tr>
        <th colspan="3"><font size=4><center>Recepcion / Compra de Medicamentos </center></font></th>
      </tr>    
    ¨<tr bgcolor="#F2F2F2">  
         <td align="right">Fecha adquisicion </td>
         <td>
           <input type="text" name="valor_1" size="10" value='<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>' >
           <small><a href="javascript:showCal('valor_1')"><img src="./imagenes/formularios/calendario.jpeg" border="0" ></a></small>
         </td>
      </tr>
      <tr bgcolor="#F2F2F2">    
        <td align="right" >Nombres  </td>    
        <td><input class="form-control" type="text" name="nombres" value="<c:out value = "${nombres}"/>" size="50" placeholder="NOMBRE DISTRIBUIDORA/ TIPO AJUSTES, ETC..."/></td>
      </tr>    
      <tr bgcolor="#F2F2F2">    
             <td align="right">Tipo Transaccion</td>    
             <td>
                <c:if test="${tipodato=='0'}">
                    <SELECT NAME="tipo" onchange="javascript:document.forma.submit();">
                        <option value="0" selected> Recepcion </option>
                        <option value="-1" > Ajuste (-) </option>
                        <option value="1" > Ajuste (+) </option>
                        <c:if test="${rol=='30'}">
                            <option value="4" > Traspaso Farmacias </option>
                            <option value="6" > Caja Chica </option>
                        </c:if>    
                     </SELECT>    
                </c:if>
                <c:if test="${tipodato=='1'}">
                    <SELECT NAME="tipo" onchange="javascript:document.forma.submit();">
                        <option value="1" selected> Ajuste (+) </option>
                        <option value="-1" > Ajuste (-) </option>
                        <option value="0" > Recepcion </option>
                    </SELECT>
                </c:if>
                <c:if test="${tipodato=='-1'}">
                    <SELECT NAME="tipo" onchange="javascript:document.forma.submit();">
                        <option value="-1" selected> Ajuste (-) </option>
                        <option value="1" > Ajuste (+) </option>
                        <option value="0" > Recepcion </option>
                    </SELECT>
                </c:if>
                <c:if test="${tipodato=='4'}">
                    <SELECT NAME="tipo" onchange="javascript:document.forma.submit();">
                        <option value="4" selected> Traspaso Farmacias </option>
                        <option value="6" > Caja Chica </option>
                        <option value="-1" > Ajuste (-) </option>
                        <option value="1" > Ajuste (+) </option>
                        <option value="0" > Recepcion </option>
                    </SELECT>
                </c:if>   
                <c:if test="${tipodato=='6'}">
                    <SELECT NAME="tipo" onchange="javascript:document.forma.submit();">
                        <option value="6" selected> Caja Chica </option>
                        <option value="4" > Traspaso Farmacias </option>
                        <option value="-1" > Ajuste (-) </option>
                        <option value="1" > Ajuste (+) </option>
                        <option value="0" > Recepcion </option>
                    </SELECT>
                </c:if>
            </td>
         </tr>  
        <tr bgcolor="#F2F2F2">    
             <td align="right">Expedido</td>    
	     <td>
             
                <SELECT NAME="expedido" onchange="javascript:document.forma.submit();">
                  <c:if test="${expedido=='V'}">  
                      <option value="V" selected> Venta </option>
                      <c:if test="${seguro_estab != '1' }">
                           <option value="S" > Ley475(exSUMI) </option>
                      </c:if>
                      <option value="P" > Programa </option>
                  </c:if>
                  <c:if test="${expedido=='S'}">  
                      <option value="S" selected> Ley475(exSUMI) </option>
                      <option value="P" > Programa </option>
                      <option value="V" > Venta </option>
                  </c:if>
                  <c:if test="${expedido=='P'}">  
                      <option value="P" selected> Programa </option>
                      <c:if test="${cod_esta!='200010'}">  
                          <option value="V" > Venta </option>
                          <option value="S" > Ley475(exSUMI) </option>
                      </c:if>
                  </c:if>
                  <c:if test="${expedido!='V' and expedido!='S' and expedido!='P'}">  
                      <option value="V" selected> Venta </option>
                      <c:if test="${seguro_estab != '1' }">
                           <option value="S" > Ley475(exSUMI) </option>
                      </c:if>
                      <option value="P" > Programa </option>
                  </c:if>
                  <input type="hidden" name='accion' value='<c:out value="entregarya2"/>'>
                </SELECT>  
              <c:if test="${programa == 'progra' and expedido=='P'}">
          
                <SELECT NAME="id_programa">
	        <c:forEach var="prog" items="${listarProg}">
                   <c:if test="${prog.id_programa>5}">  
                      <option value="<c:out value="${prog.id_programa}"/>"<c:if test="${prog.id_programa == id_programa}">selected</c:if>> 
                          <c:out value="${prog.id_programa}"/>.<c:out value="${prog.concentra}"/>
                      </option>
                   </c:if>
                </c:forEach>
              </SELECT>           
         </c:if> 
            </td>
          </tr>
          <c:if test="${(rol=='30' or rol=='32' or rol=='7') and tipodato=='4'}">
            <tr bgcolor="#F2F2F2">   
             <td align="right">Traspaso a Farmacia</td>    
	     <td>
               <SELECT NAME="id_farmacia">
                  <c:forEach var="farma" items="${listafarAsig}">
                      <c:if test="${(id_farmaciauser!=farma.id_farmacia ) }">
                          <option value="<c:out value="${farma.id_farmacia}"/>"<c:if test="${farma.id_farmacia == id_farmacia}">selected</c:if>> 
                              <c:out value="${farma.farmacia}"/>
                          </option>
                      </c:if> 
                  </c:forEach>
              </SELECT>           
             </td>
          </tr> 
         </c:if> 
    <tr bgcolor="#F2F2F2">    
        <td align="right">Numero Documento(NIT)  </td>    	      
        <td><input class="form-control" type="text" name="orden" value="<c:out value = "${orden}"/>" size="50"/></td>
     </tr>   
     <tr bgcolor="#F2F2F2">    
        <td align="right">Nº Orden de Compra  </td>          
        <td><input class="form-control" type="text" name="num_cladoc" value="<c:out value = "${num_cladoc}"/>" size="50" onblur='validar(num_cladoc,"9");'/></td>
     </tr>    
  </tr>
  </table>
  </center>
  </td>
  <td width="10%"></td>
  </tr>
  </table>
  <center>
        <input class="btn btn-primary btn-lg" type="submit" name='accion2' value='Siguiente'> 
  </center>
    <input type="hidden" name='accion' value='<c:out value="entregarya2"/>'>
    <input type="hidden" name='id_historial' value='<c:out value="${id_historial}"/>'>
 </form>

<%@ include file="../Inferior.jsp" %>


