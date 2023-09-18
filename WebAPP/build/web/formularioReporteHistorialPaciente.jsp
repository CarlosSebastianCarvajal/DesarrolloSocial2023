<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/ReporteHistorialPaciente.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
            </a>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        <form name="form1" method="post" action="REPORTEHistorialpaciente.jsp"  target="_blank">
            <%
                HttpSession s = request.getSession();
                String usuario=(String)s.getAttribute("galeno_user11");
                if(usuario==null)
                {
                    response.sendRedirect("index.jsp");
                }
                //variables de session
            %>
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>REPORTE DE PACIENTES ATENDIDOS</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div ></div> Ingrese Su Usuario </th>
                                    <th><div ></div>Ingrese Fecha Inicio</th>
                                    <th><div ></div>Ingrese Fecha Fin</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario" required=""/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaInicio"></label><input type="date" id="fechaInicio" class="inp-lname" placeholder="Fecha Inicio"required=""  name="fechaInicio"onchange="myFunction(value)"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaFin"></label><input type="date" id="fechaFin" class="inp-lname" placeholder="Fecha Fin"required=""  name="fechaFin"onchange="myFunction(value)"/></div></td>
                                </tr>
                                <tr>
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte" style='width: 200px;'/></td> 
                                    <td></td> 
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>          
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
