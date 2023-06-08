<%-- 
    Document   : resGuardarTerapia
    Created on : 15-ene-2023, 16:01:20
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/resTerapiaFisica.css" rel="stylesheet" type="text/css"/>
        <title>Terapia Guardada</title>
    </head>
    <body>
                    <%
                HttpSession s = request.getSession();
            %>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
            </a>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        
       <!-- 
        <input type="button" onclick="javascript:menutf();" value="<-- Volver" class="btn-accept" />
        
       -->
         <!-- Reporte General de pacientes atendidos -->
        <form name="form1" method="post" action="MenuTerapiaFisica.jsp">
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>DATOS GUARDADOS CORRECTAMENTE</h1>
                            </thead>
                            <tbody>
                                <!--
                                <tr>
                                    <th><div ></div> Ingrese Su Usuario </th>
                                    <th><div ></div>Ingrese Fecha Inicio</th>
                                    <th><div ></div>Ingrese Fecha Fin</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaInicio"></label><input type="date" id="fechaInicio" class="inp-lname" placeholder="Fecha Inicio"required=""  name="fechaInicio"onchange="myFunction(value)"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaFin"></label><input type="date" id="fechaFin" class="inp-lname" placeholder="Fecha Fin"required=""  name="fechaFin"onchange="myFunction(value)"/></div></td>
                                </tr>
                                -->
                                <tr>
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="OK" style='width: 200px;'/></td> 
                                    <td></td> 
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>

    </body>
</html>


