package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Seguimiento_005fPsicologica_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" > \r\n");
      out.write("        <link href=\"css/Ingresos_2.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <title>Seguimiento</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <header id=\"header\" style=\" background: #007653 !important; margin-top:-40px\">\r\n");
      out.write("            \r\n");
      out.write("                <a class=\"logo\" href=\"Principal.jsp\" id=\"ulUserData\"> \r\n");
      out.write("            </a>\r\n");
      out.write("             <nav class=\"nav-tp\"></nav>\r\n");
      out.write("            \r\n");
      out.write("        </header>     \r\n");
      out.write("        <div class=\"div-head\" style=\"margin-top:-18px\"><h2></h2></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <form class=\"form1\" action=\"AddSeguimiento\" method=\"GET\" style=\"margin-top:-30px\">\r\n");
      out.write("            <section class=\"sec-main\">\r\n");
      out.write("                <div class=\"div-cont-main1\">\r\n");
      out.write("                    <div class=\"div-cont-ced\">\r\n");
      out.write("                    <input type=\"button\" id=\"btn-actionbu\" class=\"inp-search\" value=\"Buscar\"/>\r\n");
      out.write("                    <input type=\"text\" id=\"txt-cedee\" class=\"inp-ced\" onkeypress='return validaNumericos(event)' placeholder=\"Cédula\" name=\"cedula\" maxlength=\"15\"/>\r\n");
      out.write("                </div>  \r\n");
      out.write("                <hr />\r\n");
      out.write("                <div class=\"div-cont-ced\">\r\n");
      out.write("                    <input type=\"button\" id=\"btn-actionbusc\" class=\"inp-search\" value=\"Buscar\"/></th>\r\n");
      out.write("                    <input style='width: 40%' type=\"text\" id=\"txt-nameaz\" class=\"inp-name\" placeholder=\"Nombres\" name=\"PrimerNombre\"   onkeypress=\"return soloLetras(event)\"/>\r\n");
      out.write("                    <p></p>\r\n");
      out.write("                    <input style='width: 40%; margin-left:5%;'  type=\"text\" id=\"txt-lnamesegaz\" class=\"inp-lname\" placeholder=\"Apellidos\" name=\"SegundoNombre\" onkeypress=\"return soloLetras(event)\" />\r\n");
      out.write("                </div> \r\n");
      out.write("                <hr />\r\n");
      out.write("                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>\r\n");
      out.write("                        <thead >\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Sesión No.</th>\r\n");
      out.write("                                <td><div class=\"div-cont-name\"><input readonly=\"readonly\"  type=\"text\" id=\"txt-sesion\" class=\"inp-name\" placeholder=\"No\" name=\"sesionnumero\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Fecha:</th>\r\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input type=\"text\" id=\"txt-fechaAc\" class=\"inp-lname\" placeholder=\"Fecha\"required=\"\"  name=\"FechaActual\" readonly=\"readonly\" /></div></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                    </table>\r\n");
      out.write("                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>\r\n");
      out.write("                        <thead align=\"left\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Análisis de la demanda</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr style='height: 175px'>\r\n");
      out.write("                                <td colspan=\"2\" ROWSPAN=\"2\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-analisisDemanda\" class=\"inp-lname\" required=\"\" placeholder=\"Análisis de la demanda\" name=\"AnalisisDemanda\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <thead align=\"left\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Objetivos durante la sesión</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr style='height: 175px'>\r\n");
      out.write("                                <td colspan=\"2\" ROWSPAN=\"2\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-objetivoSesion\" class=\"inp-lname\" required=\"\" placeholder=\"Objetivos durante la sesión\" name=\"ObjetivosSesion\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                        <thead align=\"left\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Descripción de estrategias y técnicas</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr style='height: 175px'>\r\n");
      out.write("                                <td colspan=\"2\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-descripcionET\" class=\"inp-lname\" required=\"\" placeholder=\"Descripción de estrategias y técnicas\" name=\"DescripcionET\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                        <thead align=\"left\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>Información relevante obtenida</th>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </thead>\r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr style='height: 175px'>\r\n");
      out.write("                                <td colspan=\"2\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-informacionRO\" class=\"inp-lname\" required=\"\" placeholder=\"Información relevante obtenida\" name=\"informacionRO\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                        <tbody align=\"center\">\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td><div style='margin-top: -20px !important;'class=\"div-cont-lname\"><input type=\"submit\" id=\"btn-action\" class=\"btn-accept\" value=\"Guardar\"/> </div></td>\r\n");
      out.write("                                <td><div style='margin-top: -20px !important;'class=\"div-cont-lname\"><input type=\"button\" id=\"btn-action\" class=\"btn-accept\" value=\"Cancelar\" onclick=\"javascript:cancel();\"/> </div></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("        </form>\r\n");
      out.write("            <script>\r\n");
      out.write("                function cancel(){\r\n");
      out.write("                    window.location.href = \"./MenuPsicologia.jsp\";\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("                window.addEventListener('load', function() {\r\n");
      out.write("                 var today = new Date();\r\n");
      out.write("                    \r\n");
      out.write("                 // get today's date in `MM/DD/YYYY` format\r\n");
      out.write("                 var now = today.toLocaleDateString('en-EC');\r\n");
      out.write("                  $(\"#txt-fechaAc\").val(now);\r\n");
      out.write("                 });\r\n");
      out.write("            </script>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script src=\"js/JQuery.js\" type=\"text/javascript\"></script> \r\n");
      out.write("    <script src=\"js/jquery-2.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"js/ConsultarPaciente.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</html>\r\n");
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
