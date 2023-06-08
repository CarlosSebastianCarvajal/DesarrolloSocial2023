/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import BD.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Miguel
 */
@WebServlet(name = "ActualizarSeguimiento", urlPatterns = {"/ActualizarSeguimiento"})
public class ActualizarSeguimiento extends javax.servlet.http.HttpServlet {

    PrintWriter out = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    conexion c = new conexion();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");

        try {
            out = response.getWriter();
            session = request.getSession(true);
            //int pacienteid;
            String fecha = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
            String hora = new SimpleDateFormat("HH:mm:ss").format(Calendar.getInstance().getTime());

            String cedula = request.getParameter("cedula");
            String sesionnumero = request.getParameter("sesionnumero");
            String FechaActual = request.getParameter("FechaActual");
            String AnalisisDemanda = request.getParameter("AnalisisDemanda");
            String ObjetivosSesion = request.getParameter("ObjetivosSesion");
            String DescripcionET = request.getParameter("DescripcionET");
            String informacionRO = request.getParameter("informacionRO");
            String galenoUser = (String) session.getAttribute("galeno_user11");
            try {
                String sqlInsertarSeguimiento = "UPDATE public.seguimiento\n" +
                "	SET analisis=?, objetivo=?, descripcion=?, informacion=?\n" +
                "	WHERE paciente_id=(select paciente_id from paciente where paciente_dni=?) \n" +
                "	and sesion_numero=? and fecha='"+FechaActual+"'";
                ps = c.getConecction().prepareStatement(sqlInsertarSeguimiento, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, AnalisisDemanda);
                ps.setString(2, ObjetivosSesion);
                ps.setString(3, DescripcionET);
                ps.setString(4, informacionRO);
                ps.setString(5, cedula);
                ps.setInt(6, Integer.parseInt(sesionnumero));
                int resultado = 0;
                
                resultado = ps.executeUpdate();
                System.out.println("Seguimiento add: " + resultado);
                if (resultado != 0) {
                    response.sendRedirect("MenuPsicologia.jsp");
                }

            } catch (SQLException e) {
                out.println("Exception: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }

        } catch (IOException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
    }

}