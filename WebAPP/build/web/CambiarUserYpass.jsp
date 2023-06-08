<%-- 
    Document   : CambiarUserYpass
    Created on : 24/08/2021, 14:50:23
    Author     : jean
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/CambiarUseryPass.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        <form id="form1"autocomplete="off">
            <section class="sec-data-pacient">
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Nombre de usuario" name="nuevoUser"/></div>
                        <br>
                        <div class="div-cont-name"><input type="password" id="txt-name" class="inp-name" placeholder="Nueva contraseña" name="NuevoPass"/></div>
                    </div>
                    <div class="div-row-three"> 
                        <input type="submit" id="btn-action" class="btn-accept" value="Guardar"/>
                    </div> 
            </section>
        </form>
        <%
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            String x = dtf.format(LocalDateTime.now());
            PreparedStatement pst;
            conexion cn = new conexion();
            ResultSet rs;
            PreparedStatement ps;
            String usuario, clave, cedula1;
            usuario = request.getParameter("nuevoUser");
            clave = request.getParameter("NuevoPass");
            if (usuario != null && clave != null) {
                ps = cn.getConecction().prepareStatement("update galeno set galeno_user='" + usuario + "', galeno_pass=md5('" + clave + "'),galeno_estado='1',updated_at='"+x+"' where galeno_user ='" + session.getAttribute("galeno_user11") + "'");
                ps.executeUpdate();
                JOptionPane.showMessageDialog(null, "USUARIO Y CONTRASEÑA HAN SIDO MODIFICADA......");
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
