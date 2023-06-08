<%-- 
    Document   : MenuReportesPsicologia
    Created on : 16-ene-2023, 14:06:14
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes Psicología</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menupsicologiareportes.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            //variables de session
        %>

        <label hidden id="usuario" style="display:none;"><%= s.getAttribute("galeno_user11")%> </label> 
        <label hidden id="nombre"></label>

   
        <div class="div-head-tittle"><h2></h2></div>
    
        <input type="button" onclick="javascript:regresar();" value="<-- Volver al menú psicología" class="btn-accept" />
        
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Reporte_Pacientes_Atendidos.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">REPORTE ATENCIÓN PSICOLÓGICA</h3>

                            </header>
                            <p>Seleccione para generar el reporte de pacientes atendidos</p>
                            <a href="formularioReporteAtencion.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    
                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Reporte_Sesion.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">REPORTE SEGUIMIENTO DE PACIENTES</h3>

                            </header>
                            <p>Seleccione para ver el seguimiento de un paciente</p>
                            
                            <a href="formularioReporteSeguimiento.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>

                    <!-- TERCER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Reporte_Lista_Sesiones.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">REPORTE SESIONES DE PACIENTES</h3>

                            </header>
                            <p>Seleccione para ver las sesiones de un paciente</p>
                            <a href="formularioReporteSesiones.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    
                    <!-- CUARTO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Reporte_Ficha.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">VER FICHA PSICOLóGICA DEL PACIENTE</h3>

                            </header>
                            <p>Seleccione para ver la ficha psicologica de un paciente</p>
                            <a href="formularioReporteFicha.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>                   
                    
                  
                    
                </div>
            </div>
        </section>
        
         <script>
            
            function regresar(){
              window.location.href = "./MenuPsicologia.jsp";
            }

          
        </script>
       
    </body>
</html>
