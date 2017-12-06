<%@ include file="../Superior.jsp"%>
    <SCRIPT LANGUAGE="JavaScript">
        function myprint() {
            window.parent.cuerpo.focus();
            window.print();
        }
    </script>
    
  <div class="container-fluid" >
    <div class="row ">
    <table class="table table-condensed">
        <tr bgcolor=#d9e4fa>
            <td>
                <input type="button" id="oculta" value="Ocultar Men&uacute;" class="btn btn-primary btn-xs" onClick="return cambiarVentana()" />
                <input type="button" value="Imprimir Cuerpo" class="btn btn-primary btn-xs" onClick="myprint()">
            </td>
            <td align="right">
                Aplicacion WEB
            </td>
        </tr>
    </table>
  </div>
</div>  
<%@ include file="../Inferior.jsp"%>