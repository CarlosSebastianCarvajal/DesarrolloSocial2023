<%-- 
    Document   : MenuGinecologia
    Created on : 08-jun-2023, 0:03:36
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Manuales de Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menumanuales.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="div-head-tittle"><h2></h2></div>
    
        <input type="button" onclick="javascript:principal();" value="<-- Volver" class="btn-accept" />
        
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- MANUAL TERAPIA FISICA-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/manual.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Terapia Física</h3>

                            </header>
                            <p>Visualice el manual de usuario correspondiente al area de Terapia Física</p>
                            <!--<a href="MenuTerapiaFisica.jsp" class="button primary" style=" background: #007653 !important;">Ingresar</a>-->
                            <a href="DownloadManual?fileName=ManualTerapiaFisica.pdf" class="button primary" style=" background: #007653 !important;">Descargar Archivo</a>
                        </div>
                    </section>
                    
                    <!-- MANUAL GINECOLOGIA-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/manual2.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Ginecología</h3>

                            </header>
                            <p>Visualice el manual de usuario correspondiente al area de Ginecología</p>
                            <a href="DownloadManual?fileName=ManualGinecologia.pdf" class="button primary" style=" background: #007653 !important;">Descargar Archivo</a>
                        </div>
                    </section>
                    
                    <!-- MANUAL PSICOLOGIA-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/manual3.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Psicología</h3>

                            </header>
                            <p>Visualice el manual de usuario correspondiente al area de Psicología</p>
                            <a href="DownloadManual?fileName=ManualPsicologia.pdf" class="button primary" style=" background: #007653 !important;">Descargar Archivo</a>
                        </div>
                    </section>
                    
                    <!-- MANUAL MEDICINA GENERAL-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/manual4.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Medicina General</h3>

                            </header>
                            <p>Visualice el manual de usuario correspondiente al area de Medicina General</p>
                            <a href="DownloadManual?fileName=ManualMedicinaGeneral.pdf" class="button primary" style=" background: #007653 !important;">Descargar Archivo</a>
                        </div>
                    </section>
                    
                    <!-- MANUAL MEDICINA GENERAL-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/manual5.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Enfermería</h3>

                            </header>
                            <p>Visualice el manual de usuario correspondiente al area de Enfermería</p>
                            <a href="DownloadManual?fileName=ManualEnfermeria.pdf" class="button primary" style=" background: #007653 !important;">Descargar Archivo</a>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        
        <script>
            function principal(){
              window.location.href = "./index.jsp";
            }
        </script>
    </body>
</html>