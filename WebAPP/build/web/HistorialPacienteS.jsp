<%-- 
    Document   : HistorialPacienteP
    Created on : 12-jul-2023, 12:09:20
    Author     : Sebastian Carvajal
--%>

<%@page import="BD.conexion"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="#" />  
        <title>Historial</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="bootstrap1/css/bootstrap.min.css">
        <!-- CSS personalizado --> 
        <link rel="stylesheet" href="js/main1.js">  
        <!--datables CSS básico-->
        <link rel="stylesheet" type="text/css" href="datatables1/datatables.min.css"/>
        <!--datables estilo bootstrap 4 CSS-->  
        <link rel="stylesheet"  type="text/css" href="datatables1/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">
        <!--font awesome con CDN-->  
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">  
        <link href="css/Historial.css" rel="stylesheet" type="text/css"/>
    </head>
    <body> 
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
            </a>
            <a class="logo" id="ulUserData" href="Principal.jsp"></a>
           <nav class="nav-tp"></nav>
    </header>     
    <div class="div-head-tittle"><h2></h2></div> 
        
   
        <!--Ejemplo tabla con DataTables-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">    
                        <%
                            //CONECTANOD A LA BASE DE DATOS:
                            conexion con = new conexion();
                            PreparedStatement ps;
                            //Emnpezamos Listando los Datos de la Tabla Usuario
                            Statement smt;
                            ResultSet rs;
                            smt = con.getConecction().createStatement();
                            rs = smt.executeQuery("select sv.signos_id as codigo, p.paciente_dni as cedula, (p.paciente_primer_nombre || ' ' || p.paciente_apellido_paterno) as paciente, sv.*, g.galeno_user from paciente as p inner join signos_vitales as sv on p.paciente_id = sv.paciente_id left join galeno as g on sv.galeno_id = g.galeno_id where g.galeno_user ='" + session.getAttribute("galeno_user11") + "' order by sv.signos_id desc");
                            if (rs.next()) {
                                rs = smt.executeQuery("select sv.signos_id as codigo, p.paciente_dni as cedula, (p.paciente_primer_nombre || ' ' || p.paciente_apellido_paterno) as paciente, sv.*, g.galeno_user from paciente as p inner join signos_vitales as sv on p.paciente_id = sv.paciente_id left join galeno as g on sv.galeno_id = g.galeno_id where g.galeno_user ='" + session.getAttribute("galeno_user11") + "' order by sv.signos_id desc");
                        %>
                        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Fecha</th>
                                    <th>Hora</th>
                                    <th>PACIENTE</th>
                                    <th>PA Sistólica</th>
                                    <th>PA Diastólica</th>
                                    <th>Temperatura</th>
                                    <th>FC</th>
                                    <th>Saturación</th>
                                    <th>Peso</th>
                                    <th>Talla</th>
                                    <th>IMC</th>
                                    <th>FR</th>
                                    <th>Glucosa</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <%while (rs.next()) {
                                    String fr = "No tomado";
                                    if(rs.getInt("fr") != 0){
                                        fr = String.valueOf(rs.getInt("fr"));
                                    }
                                    
                                    String glu = "No tomado";
                                    if(rs.getInt("glucosa") != 0){
                                        glu = String.valueOf(rs.getInt("glucosa"));
                                    }
                                %>
                                <tr>
                                    <td class="text-center"><%= rs.getDate("fecha")%></td>
                                    <td class="text-center"><%= rs.getTime("hora")%></td>
                                    <td class="text-center"><%= rs.getString("paciente")%></td>
                                    <td class="text-center"><%= rs.getInt("pa_sistolica")%></td>
                                    <td class="text-center"><%= rs.getInt("pa_diastolica")%></td>
                                    <td class="text-center"><%= rs.getInt("temperatura")%></td>
                                    <td class="text-center"><%= rs.getInt("frecuencia_cardiaca")%></td>
                                    <td class="text-center"><%= rs.getInt("saturacion")%></td>
                                    <td class="text-center"><%= rs.getFloat("peso")%></td>
                                    <td class="text-center"><%= rs.getInt("estatura")%></td>
                                    <td class="text-center"><%= rs.getFloat("imc")%></td>
                                    <td class="text-center"><%= fr%></td>
                                    <td class="text-center"><%= glu%></td>
                                    
                                </tr>
                                <%}%>
                            </tbody>        
                        </table>  
                        <%}%>
                    </div>
                </div>
            </div>  
        </div> 
        <!-- jQuery, Popper.js, Bootstrap JS -->
        <script src="jquery1/jquery-3.3.1.min.js"></script>
        <script src="popper1/popper.min.js"></script>
        <script src="bootstrap1/js/bootstrap.min.js"></script>
        <!-- datatables JS -->
        <script type="text/javascript" src="datatables1/datatables.min.js"></script> 
        <!-- para usar botones en datatables JS -->  
        <script src="datatables1/Buttons-1.5.6/js/dataTables.buttons.min.js"></script>  
        <script src="datatables1/JSZip-2.5.0/jszip.min.js"></script>    
        <script src="datatables1/pdfmake-0.1.36/pdfmake.min.js"></script>    
        <script src="datatables1/pdfmake-0.1.36/vfs_fonts.js"></script>
        <script src="datatables1/Buttons-1.5.6/js/buttons.html5.min.js"></script>
        <!-- código JS propìo-->    
        <script type="text/javascript" src="js/main1.js"></script>  
    </body>
</html>
