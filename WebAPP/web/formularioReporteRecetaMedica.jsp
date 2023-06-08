<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Reporterecetamedica.css" rel="stylesheet" type="text/css"/>
        <title>Reporte Historial Medico</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp">
        </a>

        <nav class="nav-tp"></nav>
    </header>
         <div class="div-head-tittle"><h2></h2></div>
        <form name="form1" method="post" action="REPORTERecetaMedica.jsp">
            <%
                HttpSession s = request.getSession();
                //variables de session
            %>
             <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                         <table style='width: 100%; text-align: center; margin-left: 70px; margin-top: 30px'>
                            <tr>  
                            <thead>
                                <tr>
                                    <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div> Ingrese la cedula del paciente </th>
                            <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div>Ingrese su cedula</th>
                            <th><div class="div-cont-ced" style='margin-top: -40px !important;'></div>Ingrese Fecha</th>
                        </tr>                                                           
                            </thead> 
                            <tbody>
                                <tr>                                  
                                    <td><div class="div-cont-ced"><label for="cedulaCliente"></label><input type="text" id="cedulaCliente" class="inp-ced" placeholder="Cedula del Paciente" name="cedulaCliente"/></div></td>
                                    <td><div class="div-cont-ced"><label for="cedulaGaleno" name="cedulaGaleno" id="cedulaGaleno"></label><input type="text" id="cedulaGaleno" class="inp-ced" placeholder="Su Cedula:" name="cedulaGaleno"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fecha"></label><input type="date" id="fecha" class="inp-lname" placeholder="Fecha"required=""  name="fecha"onchange="myFunction(value)"/></div></td>  
                                 </tr>  
                            </tbody>  
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar receta medica"/></td>           
                                  <td></td>
                                </tr>
                            </tbody>
                         </table>
                    </div>
                    </div>
             </section>
            
          <%--  <table width="487" align="center"> 
                <tr>
                    <td width="168">INGRESE CEDULA DEL PACIENTE:</td>
                    
                    <td width="415"><label for="cedulaCliente"></label><input type="text" name="cedulaCliente" id="cedulaCliente"></td>
                </tr>
                <tr>
                    <td width="168">INGRESE SU CEDULA:</td>
                    <td width="415"><label for="cedulaGaleno" name="cedulaGaleno" id="cedulaGaleno"></label><input type="text" name="cedulaGaleno" id="cedulaGaleno"></td>
                </tr>
                <tr>
                    <td width="168">INGRESE LA FECHA:</td>
                    <td width="415"><label for="fecha"></label><input type="date" name="fecha" id="fecha" onchange="myFunction(value)"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Generar receta medica "></td>
                </tr>
            </table>--%>  
        </form>
        <script>
            var a;
            function myFunction(val) {
                a = val.split("-").reverse().join("/");
                document.getElementById("fecha").type = "text";
                document.getElementById("fecha").value = a;
            }
        </script>
    </body>
</html>
