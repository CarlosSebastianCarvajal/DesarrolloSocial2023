<%-- 
    Document   : ReporteAtencion
    Created on : 12-ene-2023, 6:12:51
    Author     : Miguel
--%>
<%@page import="java.text.SimpleDateFormat"%>
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
    File reportFile = new File(application.getRealPath("/Reportes/ReporteAtencionS.jasper"));
    /*Enviamos parámetros porque nuestro reporte los necesita asi que escriba 
y seguiremos el formato del método runReportToPdf*/
 /*Con Map y el HaspMap nos servira para crear los paramentros*/
    Map parameters = new HashMap();
    /*Capturamos el valor de nuestra formulario que es el codigo del cliente que es un
varchar(5), lo almacenamos en una String*/
    String fecha_desde = request.getParameter("fecha_desde");
    String fecha_hasta = request.getParameter("fecha_hasta");
    SimpleDateFormat objSDF = new SimpleDateFormat("yyyy-MM-dd");
    Date fi = objSDF.parse(fecha_desde);
    Date ff = objSDF.parse(fecha_hasta);
    /*Digitamos la siguiente linea de codigo entre parentesis ira el parametro que agregamos en nuestro reporte
llamado $P{CODIGO}, pero solo se escribira "CODIGO", el String que capturamos lo colocamos, en este caso el 
reporte solo nos pide un parametro*/
    parameters.put("fechaDesde", fi);
    parameters.put("fechaHasta", ff);
    
    /*Enviamos la ruta del reporte, los parámetros y la conexión(objeto Connection)*/
    byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conexion1.getConecction());

    /*Indicamos que la respuesta va a ser en formato PDF*/ response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();
    ouputStream.write(bytes, 0, bytes.length);
    /*Limpiamos y cerramos flujos de salida*/ ouputStream.flush();
    ouputStream.close();%>
