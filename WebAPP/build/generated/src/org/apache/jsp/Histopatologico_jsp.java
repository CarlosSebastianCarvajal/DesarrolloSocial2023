package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Histopatologico_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" > \n");
      out.write("        <a href=\"../src/java/DAO/Buscador.java\"></a>\n");
      out.write("        <link href=\"css/Ingresos_2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Ficha Psicológica</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header id=\"header\" style=\" background: #007653 !important; margin-top:-40px\">\n");
      out.write("            \n");
      out.write("                <a class=\"logo\" href=\"Principal.jsp\" id=\"ulUserData\"> \n");
      out.write("            </a>\n");
      out.write("             <nav class=\"nav-tp\"></nav>\n");
      out.write("            \n");
      out.write("        </header>     \n");
      out.write("        <div class=\"div-head-titl\" style=\"margin-top:-18px\"><h2></h2></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form class=\"form1\" action=\"AddFichaPsicologica\" method=\"GET\" style=\"margin-top:-20px\">\n");
      out.write("            <section class=\"sec-main\">\n");
      out.write("                <div class=\"div-cont-main2\">\n");
      out.write("\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                       <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">1.- ANAMNESIS</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Primer Nombre</th>\n");
      out.write("                                <th>Segundo Nombre</th>\n");
      out.write("                                <th>Primer Apellido</th>\n");
      out.write("                                <th>Segundo Apellido</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" placeholder=\"Primer Nombre\" name=\"PrimerNombre\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" placeholder=\"Segundo Nombre\" name=\"SegundoNombre\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" placeholder=\"Primer Apellido\" name=\"PrimerApellido\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" placeholder=\"Segundo Apellido\" name=\"SegundoApellido\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table> \n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </form>\n");
      out.write("        <script>\n");
      out.write("                function cancel(){\n");
      out.write("                    window.location.href = \"./MenuGinecologia.jsp\";\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("    <script src=\"js/JQuery.js\" type=\"text/javascript\"></script>  \n");
      out.write("</html>\n");
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
