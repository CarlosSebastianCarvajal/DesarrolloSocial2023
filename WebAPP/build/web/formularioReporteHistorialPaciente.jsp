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
        <form name="form1" method="post" action="REPORTEHistorialpaciente.jsp">
            <%
                HttpSession s = request.getSession();
                //variables de session
%>
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">

                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                            <tr>
                            <thead>
                                <tr>
                                    <%--<th width="168">SU USUARIO ES:</th>--%>   
                                    <td><div class="div-cont-ced" style='margin-top: 40px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="SU USUARIO ES" name="Usuario"/></div></td>
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte"/></td>           
                                        <%--<th width="415"><label for="usuario"></label><input type="text" name="usuario" id="usuario"></th>                                                                            
                                              <td><input type="submit" name="button" id="button" value="Generar Reporte "></td> --%>  
                                         </tr>
                            </thead>   
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
