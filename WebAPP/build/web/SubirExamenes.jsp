<%@page import="java.sql.*"%>
<%@page import="BD.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/subirexameness.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">

            <a class="logo" href="ListarPacientes.jsp">
            </a>
            <a class="logo" id="ulUserData" href="index.html"></a>
          
        </header>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            conexion c = new conexion();
            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("codigo"));
            ps = c.getConecction().prepareStatement("select idmedicinageneral as codigo, paciente_dni as cedula, fechaconsulta as fecha, motivoconsulta as motivo from medicinageneral where cargararchivo is null and idmedicinageneral =" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
                       
            <form id="form1" action="subirExamenes" method="POST" enctype="multipart/form-data" >
                <%-- <input type="text"  readonly="" name="codigo" class="form-control" style="visibility:hidden;" value="<%= rs.getInt("codigo")%>"/>
                CEDULA DEL PACIENTE
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("cedula")%>"/><br>
                FECHA DE LA CONSULTA
                <input type="text" name="txtDNI" class="form-control" value="<%= rs.getString("fecha")%>"/>
                <br>
                MOTIVO DE LA CONSULTA
                <input type="text" name="txtDNI" class="form-control" value="<%= rs.getString("motivo")%>"/>
                <br>
                CARGAR EXAMENES
                <input type="file" name="cargarArchivos"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>--%>
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
                                <td> <div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("cedula")%>" type="text" id="txt-cedi" readonly="" class="inp-ced" name="txtNom" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th> <div style='margin-top: 10px !important;'>Fecha de la consulta</div></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("fecha")%>" type="text" id="txt-cedi" readonly="" class="inp-ced" name="txtDNI" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th><div style='margin-top: 10px !important;'>Motivo de la consulta</div></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr>  
                                <td> <div class="div-cont-ced" style='margin-top: 10px !important;'><input value="<%= rs.getString("motivo")%>" type="text" id="txt-cedi" readonly="" class="inp-ced" name="txtDNI" /></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th><div style='margin-top: 10px !important;'>Subir examenes</div></th> 
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

