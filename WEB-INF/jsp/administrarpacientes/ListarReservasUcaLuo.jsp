<%@ include file="../Superior.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<script language='JavaScript' SRC="./validar.js"></script>

<table class="tabla" border="2">
  <c:forEach var="listaf" items="${listaFechas}" varStatus="contador">
    <tr>
       <th colspan="7">Lista de Pacientes UCA LUO  </th>
    </tr>
    <!--<tr> 
      <td style="font-size:10pt; color:blue" align="center">Domingo</td> 
      <td style="font-size:10pt; color:blue" align="center">Lunes</td> 
      <td style="font-size:10pt; color:blue" align="center">Martes</td> 
      <td style="font-size:10pt; color:blue" align="center">Miercoles</td> 
      <td style="font-size:10pt; color:blue" align="center">Jueves</td> 
      <td style="font-size:10pt; color:blue" align="center">Viernes</td> 
      <td style="font-size:10pt; color:blue" align="center">Sabado</td> 
    </tr>-->  
    <tr>  
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech1}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech1 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech2}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech2 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech3}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech3 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech4}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech4 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech5}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech5 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech6}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech6 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech7}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech7 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
    </tr>
    <tr>  
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech8}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech8 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech9}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech9 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech10}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech10 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech11}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech11 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech12}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech12 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech13}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech13 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech14}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech14 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
    </tr>
    <tr>  
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech15}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech15 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech16}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech16 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech17}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech17 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech18}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech18 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech19}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech19 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech20}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech20 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech21}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech21 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
    </tr>
    <tr>  
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech22}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech22 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech23}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech23 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech24}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech24 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech25}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech25 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech26}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech26 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech27}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech27 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech28}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech28 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
    </tr>
    <tr>  
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech29}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech29 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech30}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech30 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech31}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech31 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech32}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech32 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech33}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech33 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech34}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech35 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
        <td width="200" valign="top"> 
          <table class="tabla" border="2">
            <tr>
              <td width="100" valign="top" style="font-size:15pt"><fmt:formatDate value="${listaf.fech35}" pattern='dd/MM/yyyy'/></td>
              <c:forEach var="listafc" items="${listaFechasCount}">
                  <c:if test="${listaf.fech35 == listafc.fech1}">
                        <td style="font-size:18pt; color:red"><c:out value="${listafc.suma1}"/></td> 
                  </c:if>
              </c:forEach> 
            </tr>
          </table> 
        </td>
    </tr>
  </c:forEach> 
</table>


  
<table class="tabla">
   <tr>
      <th> NRO </th>
      <th> FECHA </th>
      <th> HCL </th>
      <th> Matricula </th>
      <th> COD </th>
      <th> Carnet </th>
      <th> PACIENTES UCA LUO </th>
      <th> Edad </th>
      <th> CONSULTORIO </th> 
      <th> TIPO </th> 
      <th> MEDICO </th> 
      <th> MODIFICAR </th>
      <th> ELIMINAR </th> 
      <!--
      <c:if test="${lista.expedido == 'E' and id_cargo=='34'}"> 
          <th> COBRAR </th> 
      </c:if> -->
   </tr>  
   <c:forEach var="lista" items="${milista}" varStatus="contador">
     <!-- ********** Esto es para el efecto ************ -->
       <tr <c:if test="${(contador.count mod 2) == 0}">bgColor="#FFFFD9" %-- Est&acute;tico :( --%</c:if> onMouseOver="this.className='sobreFila'" onmouseout="this.className=''">
     <!-- ********** Fin  efecto ************ -->
       <td align="center"><c:out value="${contador.count}"/></td>
       <td><fmt:formatDate value="${lista.fecha}" pattern='dd/MM/yyyy HH:mm'/></td>
       <td style="color:green"><b><c:out value="${lista.hcl}"/></b></td> 
       <td><c:out value="${lista.nro_registro}"/></td>
       <td style="font-size:9pt; color:blue" align="center"><c:out value="${lista.nro}"/></td>
       <td><c:out value="${lista.carnet}"/></td> 
       <td><c:out value="${lista.nombres}"/></td> 
       <td><c:out value="${lista.edad_ini}"/></td>
       <td style="font-size:10pt;color:blue"><c:out value="${lista.consultorio}"/></td>    
       <c:if test="${lista.expedido == 'E' }">
          <td style="color:blue">Externo</td>
      </c:if>
      <c:if test="${lista.expedido == 'S' }">
          <td style="color:red">SIIS</td>
      </c:if>
      <c:if test="${lista.expedido == 'P' }">
            <td align="center"><c:out value="${lista.cadena2}"/></td>
      </c:if>
     
      <td><c:out value="${lista.nombre}"/></td>  
     
     <form name=formaM<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-warning btn-xs" href="javascript:document.formaM<c:out value="${contador.count}"/>.submit();">Modificar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >         
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                  
	 <input type="hidden" name="accion" value='Cambiar' >
	 <input type="hidden" name="sw" value='1' >
       </td>
     </form>
     <form name=formaE<c:out value="${contador.count}"/> method=post action='<c:url value="/ConfirmarPaciente.do"/>'>
       <td>     
         <div><a class="btn btn-danger btn-xs" href="javascript:document.formaE<c:out value="${contador.count}"/>.submit();"> Eliminar</a></div>
         <input type="hidden" name="id_paciente" value=<c:out value="${lista.id_paciente}"/> >         
         <input type="hidden" name="id_reservacion" value=<c:out value="${lista.id_reservacion}"/> >                  
         <input type="hidden" name="id_consultorio" value=<c:out value="${id_consultorio}"/> >                           
         <input type="hidden" name="accion" value='EliminarReserva' >
         <input type="hidden" name="sw1" value='1' >
       </td>
     </form>
   
   </c:forEach>
</table>