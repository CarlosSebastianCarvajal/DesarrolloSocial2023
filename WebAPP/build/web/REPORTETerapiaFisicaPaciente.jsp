<%-- 
    Document   : REPORTETerapiaFisicaPaciente
    Created on : 29-dic-2022, 22:05:03
    Author     : Sebastian Carvajal
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.lang.String"%>
<%@page import="BD.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="net.sf.jasperreports.view.JasperViewer"%> 
<%@page import="javax.servlet.ServletResponse"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<%  /*Importamos la clase "Conexion_Postgresql" y la instanciamos por el nombre conexion
con la siguiente linea de codigo*/
    conexion conexion1 = new conexion();
    /*Establecemos la ruta del reporte*/
    File reportFile = new File(application.getRealPath("/Reportes/pacienteatencionesTF.jasper"));
    /*Enviamos parámetros porque nuestro reporte los necesita asi que escriba 
y seguiremos el formato del método runReportToPdf*/
 /*Con Map y el HaspMap nos servira para crear los paramentros*/
    Map parameters = new HashMap();
    /*Capturamos el valor de nuestra formulario que es el codigo del cliente que es un
    varchar(5), lo almacenamos en una String*/
    String usuarioss = request.getParameter("Usuario");
    String fi_ = request.getParameter("fechaInicio");
    String ff_ = request.getParameter("fechaFin");
    String cedulaPaciente = request.getParameter("cedulaPaciente");
    
    
    SimpleDateFormat objSDF = new SimpleDateFormat("yyyy-MM-dd");
    Date fi = objSDF.parse(fi_);
    Date ff = objSDF.parse(ff_);
    
    parameters.put("p_usuario", usuarioss);
    parameters.put("p_finicio", fi);
    parameters.put("p_ffin", ff);
    parameters.put("p_cedula", cedulaPaciente);
    
    /*Enviamos la ruta del reporte, los parámetros y la conexión(objeto Connection)*/
    byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conexion1.getConecction());

    /*Indicamos que la respuesta va a ser en formato PDF*/ response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();
    ouputStream.write(bytes, 0, bytes.length);
    /*Limpiamos y cerramos flujos de salida*/ ouputStream.flush();
    ouputStream.close();%>
