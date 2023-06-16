/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import BD.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Miguel
 */
@WebServlet(name = "AddHistopatologico", urlPatterns = {"/AddHistopatologico"})
public class AddHistopatologico extends javax.servlet.http.HttpServlet {

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

            String fecha = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

            String cedula = request.getParameter("cedula");
            String estudio = request.getParameter("estudio");
            String OtroEstudio = request.getParameter("OtroEstudio");
            String ResumenClinico = request.getParameter("ResumenClinico");
            String Diagnostico = request.getParameter("Diagnostico");
            String CIE = request.getParameter("CIE");
            String MuestraPieza = request.getParameter("MuestraPieza");
            String TratamientoRecibe = request.getParameter("TratamientoRecibe");
            boolean Endocervix = Boolean.valueOf(request.getParameter("Endocervix"));
            boolean Exocervix = Boolean.valueOf(request.getParameter("Exocervix"));
            boolean ParedVaginal = Boolean.valueOf(request.getParameter("ParedVaginal"));
            boolean UnionEscamo = Boolean.valueOf(request.getParameter("UnionEscamo"));
            boolean MuñonCervical = Boolean.valueOf(request.getParameter("MuñonCervical"));
            boolean Otro = Boolean.valueOf(request.getParameter("Otro"));
            boolean Oral = Boolean.valueOf(request.getParameter("Oral"));
            boolean DIU = Boolean.valueOf(request.getParameter("DIU"));
            boolean Ligadura = Boolean.valueOf(request.getParameter("Ligadura"));
            boolean OtroO = Boolean.valueOf(request.getParameter("OtroO"));
            boolean TerapiaHormonal = Boolean.valueOf(request.getParameter("TerapiaHormonal"));
            int Menarquia = Integer.parseInt(request.getParameter("Menarquia"));
            int Menopausia = Integer.parseInt(request.getParameter("Menopausia"));
            int InicioRelaciones = Integer.parseInt(request.getParameter("InicioRelaciones"));
            int Gestaciones = Integer.parseInt(request.getParameter("Gestaciones"));
            int Partos = Integer.parseInt(request.getParameter("Partos"));
            int Abortos = Integer.parseInt(request.getParameter("Abortos"));
            int Cesareas = Integer.parseInt(request.getParameter("Cesareas"));
            String UltimaMenstruacion = request.getParameter("UltimaMenstruacion");
            String UltimoParto = request.getParameter("UltimoParto");
            String UltimaCitologia = request.getParameter("UltimaCitologia");
            String hora = request.getParameter("hora");
            String galenoUser = (String) session.getAttribute("galeno_user11");
            //String  = request.getParameter("");

            //System.out.println("cedula: "+cedula+" Resumen: "+ResumenClinico+" Endocervix: "+Endocervix);
            try {
                String sqlInsertarPaciente = "INSERT INTO public.solicitud_hispatologico(\n"
                        + "	galeno_id, paciente_id, estudio_solicitado, otro_estudio, resumen_clinico, "
                        + "diagnostico, cie, muestra_pieza, tratamiento_recibe, ccm_endocervix,"
                        + " ccm_exocervix, ccm_paredvaginal, ccm_uem, ccm_munonc, ccm_otro, "
                        + "cca_oral_inyec, cca_diu, cca_ligadura, cca_otro, cc_terapiahormonal, "
                        + "cce_menarquia, cce_menopausia, cce_irs, ccp_gestaciones, ccp_partos, "
                        + "ccp_abortos, ccp_cesareas, ccf_ultima_mens, ccf_ultimoparto, "
                        + "ccf_ultimacitologia, fecha, hora)\n"
                        + "	VALUES ((select galeno_id from galeno where galeno_user=?), (select paciente_id from paciente where paciente_dni=?), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '"+UltimaMenstruacion+"', '"+UltimoParto+"', '"+UltimaCitologia+"', '"+fecha+"', '"+hora+"');";
                ps = c.getConecction().prepareStatement(sqlInsertarPaciente, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, galenoUser);
                ps.setString(2, cedula);
                ps.setString(3, estudio);
                ps.setString(4, OtroEstudio);
                ps.setString(5, ResumenClinico);
                ps.setString(6, Diagnostico);
                ps.setString(7, CIE);
                ps.setString(8, MuestraPieza);
                ps.setString(9, TratamientoRecibe);
                ps.setBoolean(10, Endocervix);
                ps.setBoolean(11, Exocervix);
                ps.setBoolean(12, ParedVaginal);
                ps.setBoolean(13, UnionEscamo);
                ps.setBoolean(14, MuñonCervical);
                ps.setBoolean(15, Otro);
                ps.setBoolean(16, Oral);
                ps.setBoolean(17, DIU);
                ps.setBoolean(18, Ligadura);
                ps.setBoolean(19, OtroO);
                ps.setBoolean(20, TerapiaHormonal);
                ps.setInt(21, Menarquia);
                ps.setInt(22, Menopausia);
                ps.setInt(23, InicioRelaciones);
                ps.setInt(24, Gestaciones);
                ps.setInt(25, Partos);
                ps.setInt(26, Abortos);
                ps.setInt(27, Cesareas);
               System.out.println(sqlInsertarPaciente);
                int resultado = 0;
                //resultado = ps.executeUpdate();
                System.out.println("Paciente add: " + resultado);
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
