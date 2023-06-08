<%-- 
    Document   : MenuReportesMedGeneral
    Created on : 17-ene-2023, 0:51:51
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
        <link href="css/menumedicinareportes.css" rel="stylesheet" type="text/css"/>
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
    
        <input type="button" onclick="javascript:regresar();" value="<-- Volver al menú Medicina General" class="btn-accept" />
        
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="svg/doctor.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">PACIENTES ATENDIDOS</h3>

                            </header>
                            <p>Descargar en PDF las estadísticas de los pacientes atendidos</p>
                            <a href="formularioReporteHistorialPaciente.jsp" class="button primary" style=" background: #007653 !important;" href="" >Acceder</a>
                        </div>
                    </section>
                    
                    <!-- SEGUNDO MODULO-->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="svg/receta.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">Recetarios</h3>
                            </header>
                            <p>Descargar en PDF las recetas medicas</p>
                            <a href="formularioReporteRecetaMedica.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                     
                </div>
            </div>
        </section>
        
         <script>
            
            function regresar(){
              window.location.href = "./MenuMedicinaGeneral.jsp";
            }

          
        </script>
       
    </body>
</html>