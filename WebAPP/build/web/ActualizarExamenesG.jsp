<%-- 
    Document   : ActualizarExamenesG
    Created on : 04-jul-2023, 16:27:26
    Author     : Miguel
--%>

<%@page import="java.sql.*"%>
<%@page import="BD.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/NActualizarExamenes.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion c = new conexion();
            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("codigo"));
            ps = c.getConecction().prepareStatement("select gs.gineseguimiento_id as codigo, p.paciente_dni as cedula, gs.fecha, gs.notas from ginecologia_seguimiento as gs, ginecologia_historia_clinica as gh, galeno as g, paciente as p where gs.ghc_id=gh.ghc_id and gh.galeno_id=g.galeno_id and p.paciente_id=gh.paciente_id and gs.gineseguimiento_id=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <header id="header" style=" background: #007653 !important;">

            <a class="logo" href="Principal.jsp">
                
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
          
        </header>

        <div class="div-head-tittle"><h2></h2></div>

        <form id="form1" action="subirExamenesG" method="POST" enctype="multipart/form-data"  >
            <section class="sec-main">
                <div class="div-cont-main">
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead>
                            <tr>
                                <input type="text"  readonly="" name="codigo" class="form-control" style="visibility:hidden;" value="<%= rs.getInt("codigo")%>"/>
                                
                                <th>Cedula del Paciente</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> <div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("cedula")%>" type="text" id="txt-cedi" class="inp-ced" name="txtNom" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th> <div style='margin-top: 10px !important;'>Fecha de la consulta</div></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("fecha")%>" type="text" id="txt-cedi" class="inp-ced" name="txtDNI" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th><div style='margin-top: 10px !important;'>Notas</div></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr>  
                                <td> <div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("notas")%>" type="text" id="txt-cedi" class="inp-ced" name="txtDNI" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th><div style='margin-top: 10px !important;'>Actualizar examenes</div></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td> <div class="div-cont-ced" style='margin-top: 10px !important;'><input  type="file" id="txt-cedi" class="inp-ced" name="cargarArchivos"/></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr> 
                                <th><div style='margin-top: 10px !important;'> <input type="submit" value="Guardar" class="btn-accept" id="btn-actionr"/></div></th> 
                            </tr>
                        </thead>
                    </table>
 
                </div>
            </section> 
        </form>
        <%}%>
    </body>
</html>

