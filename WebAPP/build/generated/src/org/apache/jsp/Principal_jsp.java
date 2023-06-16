package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Principal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>DIRECCION DE DESARROLLO SOCIAL</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"icon\" type=\"img/logoblancod.ico\" href=\"img/logoblancod.ico\"/>\r\n");
      out.write("        <meta charset=\"utf-8\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("        <meta name=\"description\" content=\"\" />\r\n");
      out.write("        <meta name=\"keywords\" content=\"\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"Principal/css/main.css\" />\r\n");
      out.write("        <link href=\"css/animacionprincipal.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"is-preload\">    \r\n");
      out.write("       ");

            HttpSession s = request.getSession();
            String usuario=(String)s.getAttribute("galeno_user11");
            if(usuario==null)
            {
                response.sendRedirect("index.jsp");
            }
            //variables de session
        
      out.write("    \r\n");
      out.write("        <label  id=\"usuario\"      style=\"display:none;\">");
      out.print( s.getAttribute("galeno_user11"));
      out.write("</label>\r\n");
      out.write("        <label  id=\"departamento\" style=\"display:none;\">");
      out.print( s.getAttribute("galeno_departamento"));
      out.write("</label>\r\n");
      out.write("        <label id=\"nombre\"></label>\r\n");
      out.write("\r\n");
      out.write("        <header id=\"header\" style=\"\">\r\n");
      out.write("\r\n");
      out.write("            <header id=\"header\" style=\" background: #007653 !important;\">\r\n");
      out.write("                <a class=\"logo\" href=\"index.jsp\">\r\n");
      out.write("                </a>\r\n");
      out.write("                <a class=\"logo\" id=\"ulUserData\" href=\"index.html\"></a>\r\n");
      out.write("                <nav>\r\n");
      out.write("                    <a href=\"cambioclave.jsp\" style=\"color:white\" >Cambiar clave</a>\r\n");
      out.write("                    <a href=\"cerrar.jsp\" style=\"color:white\" >Cerrar sesión</a>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </header>\r\n");
      out.write("        </header>\r\n");
      out.write("        <!-- container principal -->\r\n");
      out.write("        <section class=\"wrapper\">\r\n");
      out.write("            <div class=\"inner\">\r\n");
      out.write("                <div class=\"highlights\">\r\n");
      out.write("                     <!-- PRIMER MODULO -->\r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\">\r\n");
      out.write("                                    <img alt=\"\" src=\"img/medicina-general-96.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\">MEDICINA GENERAL</h3>\r\n");
      out.write("\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Ingresar al módulo para gestionar la informacion de los pacientes atendidos en medicina general y ver reportes</p>\r\n");
      out.write("                            <input type=\"button\" onclick=\"javascript:abrirMedicinaGeneral();\" value=\"Ingresar\" class=\"button primary\" style=\" background: #007653 !important;\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <!--  \r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\">\r\n");
      out.write("                                    <img alt=\"\" src=\"img/icons8_workstation_96px.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\">AGREGAR CONSULTA MEDICA Y RECETA</h3>\r\n");
      out.write("\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Agregar consulta sobre el  paciente y receta medica</p>\r\n");
      out.write("                            <a id=\"PaginaMedi\" class=\"button primary\" style=\" background: #007653 !important;\" >Agregar consulta o receta</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                     -->\r\n");
      out.write("                    <!-- SEGUNDO MODULO -->\r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\" >\r\n");
      out.write("                                    <img alt=\"\" src=\"img/icon-terapia-fisica-principal.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\" class=\"textgrueso\">TERAPIA FÍSICA</h3>\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Ingresar al módulo terapia física para guardar la informacion de los pacientes atendidos y ver reportes sobre pacientes atendidos</p>\r\n");
      out.write("                            <!--<a href=\"MenuTerapiaFisica.jsp\" class=\"button primary\" style=\" background: #007653 !important;\">Ingresar</a>-->\r\n");
      out.write("                            <input type=\"button\" onclick=\"javascript:abrirTerapiaFisica();\" value=\"Ingresar\" class=\"button primary\" style=\" background: #007653 !important;\"/>\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    \r\n");
      out.write("                    <!-- PSICOLOGIA MODULO -->\r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\" >\r\n");
      out.write("                                    <img alt=\"\" src=\"img/Principal_psicologia_96.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\" class=\"textgrueso\">PSICOLOGÍA</h3>\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Ingresar al módulo psicología para gestionar la informacion de los pacientes atendidos</p>\r\n");
      out.write("                            <input type=\"button\" onclick=\"javascript:abrirPsicologia();\" value=\"Ingresar\" class=\"button primary\" style=\" background: #007653 !important;\"/>\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    \r\n");
      out.write("                    <!-- GINECOLOGIA MODULO -->\r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\" >\r\n");
      out.write("                                    <img alt=\"\" src=\"img/icon_ginecologia_principal_96.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\" class=\"textgrueso\">GINECOLOGÍA</h3>\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Ingresar al módulo ginecología para gestionar la informacion de atención a las pacientes atendidas</p>\r\n");
      out.write("                            <input type=\"button\" onclick=\"javascript:abrirGinecologia();\" value=\"Ingresar\" class=\"button primary\" style=\" background: #007653 !important;\"/>\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                    \r\n");
      out.write("                    <!-- QUINTO MODULO -->\r\n");
      out.write("                    <section class=\"animadoagregarinformacion\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <header>\r\n");
      out.write("                                <a href=\"\">\r\n");
      out.write("                                    <img alt=\"\" src=\"img/icons8_profile_96px.png\">\r\n");
      out.write("                                    <span class=\"label\"></span></a>\r\n");
      out.write("                                <h3 style=\"color:#007653; font-weight: bold\">Actualizar datos personales medico</h3>\r\n");
      out.write("                            </header>\r\n");
      out.write("                            <p>Podrá actualizar sus datos personales, en caso de alguna actualización</p>\r\n");
      out.write("                            <input type=\"button\" onclick=\"javascript:abrirActualizarDatos();\" value=\"Acceder\" class=\"button primary\" style=\" background: #007653 !important;\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("        <!-- Scripts -->\r\n");
      out.write("        <script>\r\n");
      out.write("            //document.getElementById(\"departamento\").innerHTML\r\n");
      out.write("            function abrirMedicinaGeneral(){\r\n");
      out.write("                if(document.getElementById(\"departamento\").innerHTML === \"1\"){\r\n");
      out.write("                    window.location.href = \"./MenuMedicinaGeneral.jsp\"; \r\n");
      out.write("                }else{\r\n");
      out.write("                    alert(\"Acceso permitido solo para el departamento de Medicina General\");\r\n");
      out.write("                }//*/\r\n");
      out.write("            }\r\n");
      out.write("            function abrirPsicologia(){\r\n");
      out.write("                if(document.getElementById(\"departamento\").innerHTML === \"2\"){\r\n");
      out.write("                    window.location.href = \"./MenuPsicologia.jsp\"; \r\n");
      out.write("                }else{\r\n");
      out.write("                    alert(\"Acceso permitido solo para el departamento de Psicología\");\r\n");
      out.write("                }//*/\r\n");
      out.write("            }\r\n");
      out.write("            function abrirTerapiaFisica(){\r\n");
      out.write("                if(document.getElementById(\"departamento\").innerHTML === \"3\"){\r\n");
      out.write("                    window.location.href = \"./MenuTerapiaFisica.jsp\"; \r\n");
      out.write("                }else{\r\n");
      out.write("                    alert(\"Acceso permitido solo para el departamento de Terapia Física\");\r\n");
      out.write("                }//*/\r\n");
      out.write("            }\r\n");
      out.write("            function abrirGinecologia(){\r\n");
      out.write("                //if(document.getElementById(\"departamento\").innerHTML === \"3\"){\r\n");
      out.write("                    window.location.href = \"./MenuGinecologia.jsp\"; \r\n");
      out.write("                //}else{\r\n");
      out.write("                    //alert(\"Acceso permitido solo para el departamento de Terapia Física\");\r\n");
      out.write("                //}//*/\r\n");
      out.write("            }\r\n");
      out.write("            function abrirActualizarDatos(){\r\n");
      out.write("                window.location.href = \"./ActualizarDatosPersonalesMedicos.jsp\";\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("        </script>\r\n");
      out.write("        <script src=\"js/jquery-2.1.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"Principal/js/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"Principal/js/browser.min.js\"></script>\r\n");
      out.write("        <script src=\"Principal/js/breakpoints.min.js\"></script>\r\n");
      out.write("        <script src=\"Principal/js/util.js\"></script>\r\n");
      out.write("        <script src=\"Principal/js/main.js\"></script>\r\n");
      out.write("        <script src=\"js/animacion.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
