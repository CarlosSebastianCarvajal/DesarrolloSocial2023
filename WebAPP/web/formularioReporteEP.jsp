<%-- 
    Document   : formularioReporteEP
    Created on : 17-jul-2023, 12:41:48
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/ReporteHistorialPaciente.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
        </a>

        <nav class="nav-tp"></nav>
    </header>
         <div class="div-head-tittle1"><h2></h2></div>
        <form name="form1" method="post" action="REPORTEEP.jsp" target="_blank">
             <%
                HttpSession s = request.getSession();
                String usuario=(String)s.getAttribute("galeno_user11");
                if(usuario==null)
                {
                    response.sendRedirect("index.jsp");
                }
                //variables de session
            %>
             <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                         <table style='width: 100%; text-align: center; margin-left: 70px; margin-top: 30px'>
                            <tr>  
                            <thead>
                                <tr>
                                    <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div> Ingrese la cedula del paciente </th>
                            

                        </tr>                                                           
                            </thead> 
                            <tbody>
                                <tr>                                  
                                    <td><div class="div-cont-ced"><label for="cedulaPaciente"></label><input type="text" id="cedulaPaciente" class="inp-ced" placeholder="Cedula del Paciente" name="cedulaPaciente" required="" minlength="10" maxlength="10"/></div></td>
                                      <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte"/></td>
                                      <td><input type="button" onclick="javascript:Regresar();" value="Cancelar" class="btn-accept"/></td>
                                 </tr>  
                            </tbody>  
                           
                         </table>
                    </div>
                    </div>
             </section>
            
          
        </form>
        <script>
            var a;
            function myFunction(val) {
                a = val.split("-").reverse().join("/");
                document.getElementById("fecha").type = "text";
                document.getElementById("fecha").value = a;
            }
            
            function Regresar(){
              window.location.href = "./MenuReportesMedGeneral.jsp";
            }
        </script>
    </body>
</html>
