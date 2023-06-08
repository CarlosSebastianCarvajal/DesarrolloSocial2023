<%-- 
    Document   : formularioReporteAtencion
    Created on : 12-ene-2023, 6:10:10
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Reporterecetamedica.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
        </a>

        <nav class="nav-tp"></nav>
    </header>
         <div class="div-head-tittle2"><h2></h2></div>
        <form name="form1" method="post" action="REPORTEAtencion.jsp" target="_blank">
            <%
                HttpSession s = request.getSession();
                //variables de session
            %>
             <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                         <table style='width: 100%; text-align: center; margin-left: 70px; margin-top: 30px'>
                            <tr>  
                            <thead>
                                <tr>
                                    <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div> Fecha desde </th>
                            <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div>Fecha hasta</th>

                        </tr>                                                           
                            </thead> 
                            <tbody>
                                <tr>                                  
                                    <td><div class="div-cont-ced"><label for="fecha_desde"></label><input type="date" id="cedulaPaciente" class="inp-ced" placeholder="desde" name="fecha_desde"/></div></td>
                                    <td><div class="div-cont-ced"><label for="fecha_hasta"></label><input type="date" id="numeroSesion" class="inp-ced" placeholder="hasta" name="fecha_hasta"/></div></td>  
                                 </tr>  
                            </tbody>  
                            <tbody>
                                <tr>
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte"/></td> 
                                    <td><input type="button" onclick="javascript:Regresar();" value="Cancelar" class="btn-accept"/></td>
                                    
                                  <td></td>
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
              window.location.href = "./MenuReportesPsicologia.jsp";
            }
        </script>
    </body>
</html>
