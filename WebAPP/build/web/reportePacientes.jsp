<%-- 
    Document   : reportePacientes
    Created on : 09-sep-2021, 12:26:25
    Author     : Lemmar Dell
--%>

<%@page import="BD.conexion"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            //variables de session
        %>
        <label id="usuario" style="display:none;"><%= s.getAttribute("galeno_user11")%> </label> 
        <label id="nombre"></label>
        
        <%
            conexion con;
            File reporfile = new File(application.getRealPath("Reportes"));
        %>
        
        
    </body>
</html>