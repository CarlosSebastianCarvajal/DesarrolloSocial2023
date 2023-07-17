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
                            rs = smt.executeQuery("select g.fecha, p.paciente_dni as cedula, (p.paciente_primer_nombre || ' ' || p.paciente_segundo_nombre || ' ' || p.paciente_apellido_paterno || ' ' || p.paciente_apellido_materno) as paciente_nombres, g.notas, g.archivo, case when g.archivo is null then ' ' else 'Download' end as descarga from ginecologia_seguimiento as g, paciente p, ginecologia_historia_clinica as gh, galeno as ga where gh.ghc_id=g.ghc_id and gh.paciente_id=p.paciente_id and gh.galeno_id=ga.galeno_id and ga.galeno_user='" + session.getAttribute("galeno_user11") + "' order by fecha");
                            if (rs.next()) {
                                rs = smt.executeQuery("select g.fecha, p.paciente_dni as cedula, (p.paciente_primer_nombre || ' ' || p.paciente_segundo_nombre || ' ' || p.paciente_apellido_paterno || ' ' || p.paciente_apellido_materno) as paciente_nombres, g.notas, g.archivo, case when g.archivo is null then ' ' else 'Download' end as descarga from ginecologia_seguimiento as g, paciente p, ginecologia_historia_clinica as gh, galeno as ga where gh.ghc_id=g.ghc_id and gh.paciente_id=p.paciente_id and gh.galeno_id=ga.galeno_id and ga.galeno_user='" + session.getAttribute("galeno_user11") + "' order by fecha");
                        %>
                        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Fecha Consulta</th>
                                    <th>Cedula</th>
                                    <th>Paciente</th>
                                    <th>Motivo Consulta</th>
                                    <th>Archivo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%while (rs.next()) {
                                %>
                                <tr>
                                    <td><%= rs.getString("fecha")%></td>
                                    <td><%= rs.getString("cedula")%></td>
                                    <td><%= rs.getString("paciente_nombres")%></td>
                                    <td><%= rs.getString("notas")%></td>
                                    <td><a href="DownloadServlet?fileName=<%=rs.getString("archivo")%>"><%=rs.getString("descarga")%></a></td>
                                    <td><a href="REPORTEGinEvolucion.jsp?cedulaPaciente=<%=rs.getString("cedula")%>" target="_blank" >Visualizar</a></td>
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
