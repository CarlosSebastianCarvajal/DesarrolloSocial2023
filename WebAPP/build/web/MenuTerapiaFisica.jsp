<%-- 
    Document   : MenuTerapiaFisica
    Created on : 04-ene-2023, 22:51:26
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Terapia Física</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menuterapiafisica.css" rel="stylesheet" type="text/css"/>
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
    
        <input type="button" onclick="javascript:principal();" value="<-- Volver al menú principal" class="btn-accept" />
        
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/GestionPaciente.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Gestión de Pacientes</h3>

                            </header>
                            <p>Ingresar datos personales por primera vez del paciente o actualizar datos</p>
                            <input type="button" onclick="javascript:Ingresar();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:Actualizar();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_workstation_96px.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">REGISTRAR TERAPIA FÍSICA</h3>

                            </header>
                            <p>Registre la información de la terapia realizada al paciente</p>
                            <input type="button" onclick="javascript:abrirTerapiaFisica();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>

                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icon-reporte-terapia-fisica.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">REPORTES TERAPIA FÍSICA</h3>
                            </header>
                            <p>Generar archivos PDF de distintos reportes</p>
                            <a href="ReportesTerapiaFisica.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    
                   
                </div>
            </div>
        </section>
        
        <script>
            
            function principal(){
              window.location.href = "./Principal.jsp";
            }

            function abrirTerapiaFisica(){
              window.location.href = "./Terapiafisica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            
            function Ingresar(){
              window.location.href = "./ingreso.jsp?idx=tf";
            }
            function Actualizar(){
              window.location.href = "./Actualizardatospaciente.jsp?idx=tf";
            }
        </script>
    </body>
</html>