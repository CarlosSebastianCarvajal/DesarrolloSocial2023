package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <div class=\"div-head-titli\" style=\"margin-top:-18px\"><h2></h2></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form class=\"form1\" action=\"AddFichaPsicologica\" method=\"GET\" style=\"margin-top:-20px\">\n");
      out.write("            <section class=\"sec-main\">\n");
      out.write("                <div class=\"div-cont-main3\">\n");
      out.write("                    <div class=\"div-cont-ced\">\n");
      out.write("                    <input type=\"button\" id=\"btn-actionbu\" class=\"inp-search\" value=\"Buscar\"/>\n");
      out.write("                    <input type=\"text\" id=\"txt-cedee\" class=\"inp-ced\" onkeypress='return validaNumericos(event)' placeholder=\"Cédula\" name=\"cedula\" maxlength=\"15\"/>\n");
      out.write("                </div>  \n");
      out.write("                <hr />\n");
      out.write("                <div class=\"div-cont-ced\">\n");
      out.write("                    <input type=\"button\" id=\"btn-actionbusc\" class=\"inp-search\" value=\"Buscar\"/></th>\n");
      out.write("                    <input style='width: 40%' type=\"text\" id=\"txt-nameaz\" class=\"inp-name\" placeholder=\"Nombres\" name=\"PrimerNombre\"   onkeypress=\"return soloLetras(event)\"/>\n");
      out.write("                    <p></p>\n");
      out.write("                    <input style='width: 40%; margin-left:5%;'  type=\"text\" id=\"txt-lnamesegaz\" class=\"inp-lname\" placeholder=\"Apellidos\" name=\"SegundoNombre\" onkeypress=\"return soloLetras(event)\" />\n");
      out.write("                </div>\n");
      out.write("                <hr />\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
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
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">1 ESTUDIO SOLICITADO</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                    </table>\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                        <thead >\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Estudio Solicitado</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"left\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-sel-dep-to-transf\"  ><select id=\"estado\" name=\"estado\" style=\"text-align:center; width: 350px;\" class=\"sel-dep-to-transf\"required=\"\">\n");
      out.write("                                            <option value=\"\">Seleccione el estudio solicitado</option>\n");
      out.write("                                            <option value=\"1\">Histopatologia</option>\n");
      out.write("                                            <option value=\"2\">Citologia</option>\n");
      out.write("                                            <option value=\"3\">Otro</option>\n");
      out.write("                                        </select></div></td>\n");
      out.write("                                        <td><div class=\"div-cont-name\"><input style=\"width: 870px; visibility:visible\" style= 'text-align: center' type=\"text\" id=\"txtOtro\" class=\"inp-name\" placeholder=\"Otro\" name=\"OtroEstudio\" required=\"\"  onkeypress=\"return soloLetras(event)\"/></div></td>\n");
      out.write("                            </tr> \n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">2 RESUMEN CLINICO</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                       <tbody>\n");
      out.write("                            <tr style='height: 175px'>\n");
      out.write("                                <td colspan=\"4\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-informacionRO\" class=\"inp-lname\" required=\"\" placeholder=\"Resumen Clínico\" name=\"ResumenClinico\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">3 DIAGNOSTICO</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                       <tbody> \n");
      out.write("                            <tr style='height: 175px'>\n");
      out.write("                                <td colspan=\"4\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-informacionRO\" class=\"inp-lname\" required=\"\" placeholder=\"Diagnostico\" name=\"Diagnostico\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">4 MUESTRA O PIEZA</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                       <tbody>\n");
      out.write("                            <tr style='height: 175px'>\n");
      out.write("                                <td colspan=\"4\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-informacionRO\" class=\"inp-lname\" required=\"\" placeholder=\"Muestra o Pieza\" name=\"MuestraPieza\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">5 TRATAMIENTO QUE RECIBE</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                       <tbody>\n");
      out.write("                            <tr style='height: 175px'>\n");
      out.write("                                <td colspan=\"4\" align=\"left\"><div class=\"div-cont-ln\" style=\"height: 175px;\"><textarea type=\"text\" id=\"txt-informacionRO\" class=\"inp-lname\" required=\"\" placeholder=\"Tratamiento que Recibe\" name=\"TratamientoRecibe\" onkeyup=\"mayus(this);\"style='height: 120px;'/></textarea></td> \n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">6 DATOS BASICOS PARA LA CITOLOGIA CERVICAL</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                       <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #004653; text-align: left' colspan=\"4\">MATERIAL</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                    </table>\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                       <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Endocervix</th>\n");
      out.write("                                <th>Exocervix</th>\n");
      out.write("                                <th>Pared Vaginal</th>\n");
      out.write("                                <th style=\"width: 200px;\">Union Escamo Columnar</th>\n");
      out.write("                                <th>Muñon Cervical</th>\n");
      out.write("                                <th>Otro</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-name\" class=\"inp-name\" name=\"Endocervix\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-name\" class=\"inp-name\" name=\"Exocervix\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-lname\" class=\"inp-lname\" name=\"ParedVaginal\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-name\" class=\"inp-name\" name=\"UnionEscamo\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-lname\" class=\"inp-lname\" name=\"MuñonCervical\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-lname\" class=\"inp-lname\" name=\"Otro\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <table align=\"left\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #004653; text-align: left' colspan=\"4\">ANTICONCEPCION</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style=\"width: 400px;\">Oral o Inyectable</th>\n");
      out.write("                                <th>DIU</th>\n");
      out.write("                                <th>Ligadura</th>\n");
      out.write("                                <th>Otro</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: left' type=\"checkbox\" id=\"txt-name\" class=\"inp-name\" name=\"Oral\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-lname\" class=\"inp-lname\" name=\"DIU\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-name\" class=\"inp-name\" name=\"Ligadura\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"checkbox\" id=\"txt-lname\" class=\"inp-lname\" name=\"Otro\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <table align=\"center\" style='width: 98%; margin-left: 10px; margin-top: 30px'>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #004653; text-align: left' colspan=\"4\">EDADES DE</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Terapia Hormonal</th>\n");
      out.write("                                <th>Menarquia</th>\n");
      out.write("                                <th>Menopausia</th>\n");
      out.write("                                <th>Inicio de Relaciones Sexuales</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" minlength=\"1\" maxlength=\"3\" placeholder=\"Terapia Hormonal\" name=\"TerapiaHormonal\" required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" minlength=\"1\" maxlength=\"3\" placeholder=\"Menarquia\" name=\"Menarquia\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" minlength=\"1\" maxlength=\"3\" placeholder=\"Menopausia\" name=\"Menopausia\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" minlength=\"1\" maxlength=\"3\" placeholder=\"Inicio de Relaciones Sexuales\" name=\"InicioRelaciones\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #004653; text-align: left' colspan=\"4\">PARIDAD</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Gestaciones</th>\n");
      out.write("                                <th>Partos</th>\n");
      out.write("                                <th>Abortos</th>\n");
      out.write("                                <th>Cesareas</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" minlength=\"1\" maxlength=\"3\" placeholder=\"Gestaciones\" name=\"Gestaciones\" required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" minlength=\"1\" maxlength=\"3\" placeholder=\"Partos\" name=\"Partos\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-name\" class=\"inp-name\" minlength=\"1\" maxlength=\"3\" placeholder=\"Abortos\" name=\"Abortos\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"txt-lname\" class=\"inp-lname\" minlength=\"1\" maxlength=\"3\" placeholder=\"Cesareas\" name=\"Cesareas\"required=\"\"  onkeypress=\"return validaNumericos(event)\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #004653; text-align: left' colspan=\"4\">FECHAS</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Ultima Menstruación</th>\n");
      out.write("                                <th>Ultimo Parto</th>\n");
      out.write("                                <th>Ultima Citologia</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"date\" id=\"txt-name\" class=\"inp-name\" name=\"UltimaMenstruacion\" required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"date\" id=\"txt-lname\" class=\"inp-lname\" name=\"UltimoParto\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"date\" id=\"txt-name\" class=\"inp-name\" name=\"UltimaCitologia\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th style='background: #007653; text-align: left' colspan=\"4\">DATOS DEL PROFESIONAL</th>\n");
      out.write("                            </tr>\n");
      out.write("                       </thead>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Fecha</th>\n");
      out.write("                                <th>Hora</th>\n");
      out.write("                                <th colspan=\"2\">Usuario</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td><div class=\"div-cont-name\"><input style= 'text-align: center' type=\"text\" id=\"txt-fechaA\" class=\"inp-name\" placeholder=\"Fecha\" name=\"fecha\" required=\"\" readonly=\"readonly\" onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td><div class=\"div-cont-lname\"><input style= 'text-align: center' type=\"text\" id=\"reloj\" class=\"inp-lname\" placeholder=\"Hora\" name=\"hora\"required=\"\" readonly=\"readonly\" onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"/></div></td>\n");
      out.write("                                <td align=\"left\" colspan=\"2\"><div class=\"div-cont-name\"><input style= 'text-align: center; width: 150%' type=\"text\" id=\"txt-Usuario\" class=\"inp-name\" placeholder=\"Nombres y Apellidos\" name=\"NombresApellidos\"required=\"\"  onkeypress=\"return soloLetras(event)\" onkeyup=\"mayus(this);\"></div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                         <tbody align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\"><div style='margin-top: -20px !important;'class=\"div-cont-lname\"><input type=\"submit\" id=\"btn-action\" class=\"btn-accept\" value=\"Guardar\"/> </div></td>\n");
      out.write("                                <td colspan=\"2\"><div style='margin-top: -20px !important;'class=\"div-cont-lname\"><input type=\"button\" id=\"btn-action\" class=\"btn-accept\" value=\"Cancelar\" onclick=\"javascript:cancel();\"/> </div></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                <select name=\"estado1\" id=\"estado1\">\n");
      out.write("  <option value=\"\" disabled selected>Seleccione un Estado...</option>\n");
      out.write("    <option value=\"México\">México</option>\n");
      out.write("    <option value=\"Aguascalientes\">Aguascalientes</option>\n");
      out.write("    <option value=\"Campeche\">Campeche</option>\n");
      out.write("    <option value=\"Chiapas\">Chiapas</option>\n");
      out.write("    <option value=\"Durango\">Durango</option>\n");
      out.write("</select>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </form>\n");
      out.write("        <script>\n");
      out.write("            $(\"#estado1\").change(function(){\n");
      out.write("                  var estado = $(\"#estado1\").val();\n");
      out.write("                  alert(estado);\n");
      out.write("                  });\n");
      out.write("                  \n");
      out.write("                function cancel(){\n");
      out.write("                    window.location.href = \"./MenuGinecologia.jsp\";\n");
      out.write("                }\n");
      out.write("                function muestraReloj() {\n");
      out.write("                    var fechaHora = new Date();\n");
      out.write("                    var horas = fechaHora.getHours();\n");
      out.write("                    var minutos = fechaHora.getMinutes();\n");
      out.write("                    var segundos = fechaHora.getSeconds();\n");
      out.write("\n");
      out.write("                    if(horas < 10) { horas = '0' + horas; }\n");
      out.write("                    if(minutos < 10) { minutos = '0' + minutos; }\n");
      out.write("                    if(segundos < 10) { segundos = '0' + segundos; }\n");
      out.write("                    $(\"#reloj\").val(horas+':'+minutos+':'+segundos);\n");
      out.write("                  }\n");
      out.write("\n");
      out.write("                  window.onload = function() {\n");
      out.write("                    setInterval(muestraReloj, 1000);\n");
      out.write("                  }\n");
      out.write("                                          \n");
      out.write("                window.addEventListener('load', function() {\n");
      out.write("                  var today = new Date();\n");
      out.write("                  var now = today.toLocaleDateString('en-EC');\n");
      out.write("                   $(\"#txt-fechaA\").val(now);\n");
      out.write("                  });\n");
      out.write("                  \n");
      out.write("                function validaNumericos(event) {\n");
      out.write("                    if (event.charCode >= 48 && event.charCode <= 57) {\n");
      out.write("                        return true;\n");
      out.write("                    }\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("               \n");
      out.write("                $(function () {\n");
      out.write("                $('#Estudio').click(function (e) {\n");
      out.write("                    alert('iii');\n");
      out.write("                });\n");
      out.write("                \n");
      out.write("                $(document).ready(function () {\n");
      out.write("                    $('#Estudio').change(function (e) {\n");
      out.write("                        alert('iii');\n");
      out.write("                      if ($(this).val() === \"3\") {\n");
      out.write("                        alert('adentro');\n");
      out.write("                      } else {\n");
      out.write("                        alert('afuera');\n");
      out.write("                      }\n");
      out.write("                    });\n");
      out.write("                  });\n");
      out.write("                  \n");
      out.write("                 \n");
      out.write("\n");
      out.write("            </script>\n");
      out.write("    <script src=\"js/JQuery.js\" type=\"text/javascript\"></script>\n");
      out.write("    </html>");
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
