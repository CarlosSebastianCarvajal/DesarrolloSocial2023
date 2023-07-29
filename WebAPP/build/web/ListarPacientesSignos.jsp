<%-- 
    Document   : ListarPacientesG
    Created on : 03-jul-2023, 11:17:25
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
        <link href="css/listarpacientes.css" rel="stylesheet" type="text/css"/>
        
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
            rs = smt.executeQuery("select sv.signos_id as codigo, p.paciente_dni as cedula, (p.paciente_primer_nombre || ' ' || p.paciente_apellido_paterno) as paciente, sv.*, g.galeno_user from paciente as p inner join signos_vitales as sv on p.paciente_id = sv.paciente_id left join galeno as g on sv.galeno_id = g.galeno_id where g.galeno_user = '" + session.getAttribute("galeno_user11") + "' order by sv.signos_id desc");
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
            <table class="table table-bordered"  id="tablaDatos"  style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                <thead>
                    <tr>
                        <th class="text-center">CODIGO</th>
                        <th class="text-center">PACIENTE</th>
                        <th class="text-center">PA Sistólica</th>
                        <th class="text-center">PA Diastólica</th>
                        <th class="text-center">Temperatura</th>
                        <th class="text-center">FC</th>
                        <th class="text-center">Saturación</th>
                        <th class="text-center">Peso</th>
                        <th class="text-center">Talla</th>
                        <th class="text-center">IMC</th>
                        <th class="text-center">FR</th>
                        <th class="text-center">Glucosa</th>
                        <th class="text-center">Fecha</th>
                        <th class="text-center">Hora</th>
                    </tr>
                </thead>
                <tbody id="tbodys">
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td class="text-center"><%= rs.getInt("codigo")%></td>
                        <td class="text-center"><%= rs.getString("paciente")%></td>
                        <td class="text-center"><%= rs.getInt("pa_sistolica")%></td>
                        <td class="text-center"><%= rs.getInt("pa_diastolica")%></td>
                        <td class="text-center"><%= rs.getInt("temperatura")%></td>
                        <td class="text-center"><%= rs.getInt("frecuencia_cardiaca")%></td>
                        <td class="text-center"><%= rs.getInt("saturacion")%></td>
                        <td class="text-center"><%= rs.getFloat("peso")%></td>
                        <td class="text-center"><%= rs.getInt("estatura")%></td>
                        <td class="text-center"><%= rs.getFloat("imc")%></td>
                        <td class="text-center"><%= rs.getInt("fr")%></td>
                        <td class="text-center"><%= rs.getInt("glucosa")%></td>
                        <td class="text-center"><%= rs.getDate("fecha")%></td>
                        <td class="text-center"><%= rs.getTime("hora")%></td>
                        
                    </tr>
                    <%}%>
            </table>
        </div>        
</section>
            
    </div>     
    </form>  
    <script src="js/jquery.js" type="text/javascript"></script>             
    <script src="js/bootstrap.min.js" type="text/javascript"></script>        
</body>
</html>
