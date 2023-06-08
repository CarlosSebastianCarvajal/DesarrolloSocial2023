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
                            rs = smt.executeQuery("select pa.paciente_dni as cedula ,pa.paciente_primer_nombre as primerNombre,pa.paciente_segundo_nombre as segundoNombre,pa.paciente_apellido_paterno as apeliidoPaterno,pa.paciente_apellido_materno as apellidoMaterno,pa.paciente_direccion as direccion,pa.paciente_provincia as provincia, pa.paciente_canton as canton, pa.paciente_parroquia as parroquia,pa.paciente_estado_civil as estadoCivil,me.antecedentespersonales as AntePerosnales, me.antecedentesfamiliares as AntFamiliares,me.antecedentesquirurgicos as AntQuirurgicos,me.fechaconsulta as Fechaconsulta, me.motivoconsulta as motivoConsulta,me.diagnositico as diagnostico,me.cargararchivo as archivo  from medicinageneral me inner join paciente pa on me.paciente_dni = pa.paciente_dni where me.galeno_user ='" + session.getAttribute("galeno_user11") + "' ");
                            if (rs.next()) {
                                rs = smt.executeQuery("select pa.paciente_dni as cedula ,pa.paciente_primer_nombre as primerNombre,pa.paciente_segundo_nombre as segundoNombre,pa.paciente_apellido_paterno as apeliidoPaterno,pa.paciente_apellido_materno as apellidoMaterno,pa.paciente_direccion as direccion,pa.paciente_provincia as provincia, pa.paciente_canton as canton, pa.paciente_parroquia as parroquia,pa.paciente_estado_civil as estadoCivil,me.antecedentespersonales as AntePerosnales, me.antecedentesfamiliares as AntFamiliares,me.antecedentesquirurgicos as AntQuirurgicos,me.fechaconsulta as Fechaconsulta, me.motivoconsulta as motivoConsulta,me.diagnositico as diagnostico,me.cargararchivo as archivo  from medicinageneral me inner join paciente pa on me.paciente_dni = pa.paciente_dni where me.galeno_user ='" + session.getAttribute("galeno_user11") + "'");
                        %>
                        <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Cedula</th>
                                    <th>Fechaconsulta</th>
                                    <th>motivoConsulta</th>
                                    <th>diagnostico</th>
                                    <th>primerNombre</th>
                                    <th>segundoNombre</th>
                                    <th>apeliidoPaterno</th>
                                    <th>apellidoMaterno</th>
                                    <th>direccion</th>
                                    <th>provincia</th>
                                    <th>canton</th>
                                    <th>parroquia</th>
                                    <th>estadoCivil</th>
                                    <th>AntePerosnales</th>
                                    <th>AntFamiliares</th>
                                    <th>AntQuirurgicos</th>
                                    <th>Archivo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                    while (rs.next()) {
                                %>
                                <tr>
                                    <td><%= rs.getString("cedula")%></td>
                                    <td><%= rs.getString("Fechaconsulta")%></td>
                                    <td><%= rs.getString("motivoConsulta")%></td>
                                    <td><%= rs.getString("diagnostico")%></td>
                                    <td><%= rs.getString("primerNombre")%></td>
                                    <td><%= rs.getString("segundoNombre")%></td>
                                    <td><%= rs.getString("apeliidoPaterno")%></td>
                                    <td><%= rs.getString("apellidoMaterno")%></td>
                                    <td><%= rs.getString("direccion")%></td>
                                    <td><%= rs.getString("provincia")%></td>
                                    <td><%= rs.getString("canton")%></td>
                                    <td><%= rs.getString("parroquia")%></td>
                                    <td><%= rs.getString("estadoCivil")%></td>
                                    <td><%= rs.getString("AntePerosnales")%></td>
                                    <td><%= rs.getString("AntFamiliares")%></td>
                                    <td><%= rs.getString("AntQuirurgicos")%></td>
                                    <td><a href="DownloadServlet?fileName=<%=rs.getString("archivo")%>">Download</a></td>
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
