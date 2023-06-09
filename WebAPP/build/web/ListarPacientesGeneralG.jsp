<%-- 
    Document   : ListarPacientesGeneralG
    Created on : 04-jul-2023, 16:24:18
    Author     : Miguel
--%>

<%@page import="java.sql.*"%>
<%@page import="BD.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        <link href="css/Listarpacientesgeneral.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body >      
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion c = new conexion();
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = c.getConecction().createStatement();
            rs = smt.executeQuery("select gs.gineseguimiento_id as codigo, p.paciente_dni as cedula, gs.fecha, gs.notas from ginecologia_seguimiento as gs, ginecologia_historia_clinica as gh, galeno as g, paciente as p where gs.ghc_id=gh.ghc_id and gh.galeno_id=g.galeno_id and p.paciente_id=gh.paciente_id and gs.examen='true' and gs.archivo is not null and g.galeno_user= '" + session.getAttribute("galeno_user11") + "' order by fecha desc");
            //Creamo la Tabla:     
        %>

        <header id="header" style=" background: #007653 !important;">

            <a class="logo" href="Principal.jsp">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
            <nav class="nav-tp"> </nav>
        </header>

        <div class="div-head-tittle"><h2></h2></div>
        <form id="form1" >
            <section class="sec-main">

                <div class="container">               
                    <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
                    <table class="table table-bordered"  id="tablaDatos" style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead>
                            <tr>
                                <th class="text-center">CODIGO</th>
                                <th>CEDULA DEL PACIENTE</th>
                                <th class="text-center">FECHA DE CONSULTA</th>
                                <th class="text-center">MOTIVO DE CONSULTA</th>
                                <th class="text-center">ACCION</th>
                            </tr>
                        </thead>
                        <tbody id="tbodys">
                            <%
                                while (rs.next()) {
                            %>
                            <tr>
                                <td class="text-center"><%= rs.getInt("codigo")%></td>
                                <td><%= rs.getString("cedula")%></td>
                                <td class="text-center"><%= rs.getString("fecha")%></td>
                                <td class="text-center"><%= rs.getString("notas")%></td>
                                <td class="text-center">
                                    <a href="ActualizarExamenesG.jsp?codigo=<%= rs.getInt("codigo")%>" class="btn btn-primary">Seleccionar Paciente</a>
                                </td>
                            </tr>
                            <%}%>
                    </table>
                </div>        

                </div>  
            </section>
        </form>
        <script src="js/jquery.js" type="text/javascript"></script>             
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
    </body>
</html>
