package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>DIRECCION DE DESARROLLO SOCIAL </title>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\" />\r\n");
      out.write("    <link rel=\"icon\" type=\"img/logoblancod.ico\" href=\"img/logoblancod.ico\"/>\r\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <link href=\"css/colores.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <link href=\"css/materialize.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <script src=\"js/materialize.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"https://apis.google.com/js/platform.js\" async defer></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <form id=\"form1\" action=\"LoginController\"  autocomplete=\"off\">\r\n");
      out.write("        <!--Div del fondo colorido-->\r\n");
      out.write("        <div id=\"fondocolors\" style=\"background-color:black\">\r\n");
      out.write("            <!--Div para el logotipo-->\r\n");
      out.write("            <div id=\"divlogo\">\r\n");
      out.write("                <div id=\"logotipo\" style=\"display: inline-block\">\r\n");
      out.write("                    <img src=\"img/logo_quevedo.png\" alt=\"Alternate Text\"style=\"height:65px; width: 65px; margin:auto; text-align:center; margin-top:5px\">\r\n");
      out.write("                    <p><strong style=\"color:#F5F0EE; font-size:32px; font-size: 120%\" class=\"textgrueso\">DIRECCION DE DESARROLLO SOCIAL</strong></p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Div para el título y subtítulo-->\r\n");
      out.write("            <div id=\"divtitulo\">\r\n");
      out.write("                <div id=\"divsubt\" style=\"opacity: 0\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--Div de inicio de sesión-->\r\n");
      out.write("                <div class=\"divforlog\">\r\n");
      out.write("                    <!--Panel blanco inicio de sesión-->\r\n");
      out.write("                    <div id=\"divlogin\" style=\"display: inline-block\">\r\n");
      out.write("                        <!--Títulos-->\r\n");
      out.write("                        <p class=\"textgrueso\" style=\"padding-top:30px; text-align:center; width:100%; font-size:20px; color:#707070\">INICIO DE SESIÓN</p>\r\n");
      out.write("                        <img src=\"img/users.gif\" alt=\"\" style=\"height:150px; width: 180px; margin:auto; text-align:center; margin-top:5px\"/>\r\n");
      out.write("\r\n");
      out.write("                        <!--Nombre de usuario-->\r\n");
      out.write("                        <div class=\"input-field col s6\" style=\"margin-left:0px; margin-right:10px; margin-top:-1px; height:30px;\">\r\n");
      out.write("                            <img alt=\"\" src=\"img/icons8_male_user_30px.png\" style=\"position:absolute; margin-left: 0px; margin-top:15px\"/>\r\n");
      out.write("                            <input id=\"usuario\" name=\"usuario\" class=\"validate\" type=\"text\" style=\"width:240px; margin-left:40px; margin-top:2px\">\r\n");
      out.write("                            <label for=\"UserName\" style=\"width:270px; margin-left:78px;\">\r\n");
      out.write("                                Nombre de usuario</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!--Contraseña-->\r\n");
      out.write("                        <div class=\"input-field col s6\" style=\"margin-left:0px; margin-right:10px; margin-top:55px; height:30px; top: 0px; left: 0px;\">\r\n");
      out.write("                            <img alt=\"\" src=\"img/icons8_lock_30px.png\" style=\"position:absolute; margin-left: 0px; margin-top:15px\"/>\r\n");
      out.write("                            <input id=\"clave\" class=\"validate\" type=\"password\"  name=\"clave\" style=\"width:240px; margin-left:40px; margin-top:2px\">\r\n");
      out.write("                            <label for=\"clave\" style=\"width:270px; margin-left:78px;\">\r\n");
      out.write("                                Contraseña</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!--Boton de acceso-->\r\n");
      out.write("                        <button name=\"btn1\"  class=\"btnnew first\" style=\" justify-content: center; align-items: center; margin-left:0px; margin-bottom: 20px; margin-top:20px; width:50% \">INICIAR SESION</button>\r\n");
      out.write("                        <!--boton googl-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <div style=\"position: absolute; width: 370px; margin-top:-10px; margin-left:3px;\">\r\n");
      out.write("                            <p style=\"color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center\">\r\n");
      out.write("\r\n");
      out.write("                                <span>\r\n");
      out.write("\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <p style=\"color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center; margin-top:3px\">\r\n");
      out.write("                                <a id=\"LinkButton1\" class=\"waves-effect waves-light btn modal-trigger\" href=\"cambioclaveLogin.jsp\">\r\n");
      out.write("                                    <strong style=\"color:#007653; font-size:16px; font-size: 85%\" class=\"textgrueso\">Recuperar Contraseña</strong>\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <a id=\"LinkButton1\" class=\"waves-effect waves-light btn modal-trigger\" href=\"AgregarGaleno.jsp\">\r\n");
      out.write("                                    <strong style=\"color:#007653; font-size:16px; font-size: 85%\" class=\"textgrueso\">Agregar nuevo galeno</strong>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                       \r\n");
      out.write("                        <!--Final panel blanco inicio de sesión-->\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--Final div inicio de sesión-->\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div id=\"diviconos\">\r\n");
      out.write("                <!--Párrafo con centrado vertical-->                                \r\n");
      out.write("                <p>\r\n");
      out.write("                    <img src=\"img/estruc.png\" alt=\"Alternate Text\" style=\"height:18px; width:18px; margin-left:-20px\" />\r\n");
      out.write("                <center><strong style=\"color:#007653; font-size:32px; font-size: 190%\" class=\"textgrueso\">&nbsp&nbsp MÓDULOS PARA CADA DEPARTAMENTO</strong></center>\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("                <div>\r\n");
      out.write("                    <img src=\"img/icons8_permanent_job_96px.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\r\n");
      out.write("                    <p style=\"color:#007653; font-size:16px\" class=\"textgrueso\">DEPARTAMENTOS</p>\r\n");
      out.write("                    <p>Se proporcionara información diferente por cada departamento</p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div>\r\n");
      out.write("                    <img src=\"img/icons8_account_96px.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\r\n");
      out.write("                    <p style=\"color:#007653; font-size:16px\" class=\"textgrueso\">Reportes</p>\r\n");
      out.write("                    <p>Mostrar informe de las actividades de acuerdo a cada departamento</p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div>\r\n");
      out.write("\r\n");
      out.write("                    <img src=\"img/icons8_accounting_96px.png\" alt=\"\" style=\"display:block; margin:auto; text-align:center\"/>\r\n");
      out.write("                    <p style=\"color:#007653; font-size:16px\" class=\"textgrueso\">Historial</p>\r\n");
      out.write("                    <p>Mostrar la información de las actividades de acuerdo a cada departamento</p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!--REGISTRAR MODAL-->   \r\n");
      out.write("    <div id=\"modal1\" class=\"modal\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <h4>cvbnmk,l</h4>\r\n");
      out.write("            <p>cvbnm,./</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"modal-footer\">\r\n");
      out.write("            <a href=\"#!\" class=\" btn modal-close \">Cerrar</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("<script>\r\n");
      out.write("    document.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("        var elems = document.querySelectorAll('.modal');\r\n");
      out.write("        var instances = M.Modal.init(elems);\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
