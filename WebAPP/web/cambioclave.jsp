<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/clave.css" rel="stylesheet" type="text/css"/>  
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link rel="stylesheet" href="css/CSS_Transferir.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>WebApp - Recuperacion de clave</title>  
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>      
        <div class="div-head-tittle"><h2></h2></div>

        <form id="form1" autocomplete="off">
            <section  class="form-register">
                <center><h4>Cambiar Clave</h4></center>
                INGRESAR NUEVA CLAVE: 
                <input class="controls" type="password" name="txtPassword" id="txtPassword" required="">
                <div class="input-group-append">
                    <button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon"></span> </button>
                </div>
                REPETIR LA NUEVA CLAVE:
                <input class="controls" type="password" name="txtPassword1" id="txtPassword1" required="">
                <div class="input-group-append">
                    <button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword1()"> <span class="fa fa-eye-slash icon"></span> </button>
                </div>
                <center>
                    <input class="botons" type="submit" value="Cambiar clave"></center>
            </section>
        </form>
        <script type="text/javascript">
            function mostrarPassword() {
                var cambio = document.getElementById("txtPassword");
                if (cambio.type == "password") {
                    cambio.type = "text";
                    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                } else {
                    cambio.type = "password";
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                }
            }
            function mostrarPassword1() {
                var cambio = document.getElementById("txtPassword1");
                if (cambio.type == "password") {
                    cambio.type = "text";
                    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                } else {
                    cambio.type = "password";
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                }
            }
            function valida(e) {
                e.preventDefault();

                var num1 = document.getElementById('txtPassword').value;
                var num2 = document.getElementById('txtPassword1').value;

                if (num1 === num2) {
                    alert("Actualizado correctamente");
                } else {
                    alert("No son iguales las contraselas");
                    document.getElementById("txtPassword1").value = "";
                }
            }
            document.getElementById('form').addEventListener('submit', valida);
            $(document).ready(function () {
                //CheckBox mostrar contraseña
                $('#ShowPassword').click(function () {
                    $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
                });
            });
        </script>
        <%
            PreparedStatement pst;
            conexion cn = new conexion();
            ResultSet rs;
            PreparedStatement ps;
            String dni, mnom1;
            dni = request.getParameter("txtPassword");
            mnom1 = request.getParameter("txtPassword1");
            if (dni != null) {
                if (dni.equals(mnom1)) {
                    ps = cn.getConecction().prepareStatement("update galeno set galeno_pass=md5('" + dni + "') where galeno_user='" + session.getAttribute("galeno_user11") + "'");
                    ps.executeUpdate();
                    JOptionPane.showMessageDialog(null, "LA CONTRASEÑA HA SIDO MODIFICADA CORRECTAMENTE.....");
                    response.sendRedirect("index.jsp");
                }
            }
        %>
    </body>
</html>
