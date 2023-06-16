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
    
    public boolean Covertir(String condicion)
    {
        boolean respuesta = true;
        System.out.println("1"+condicion+"2");
        if(condicion=="on")
        {
            System.out.println("sdentro");
            respuesta = true;
        }
        else
        {
            respuesta = false;
        }
        return respuesta;
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        
        try {
            out = response.getWriter();
            session = request.getSession(true);
            String OtroEstudio=" ";
            String fecha = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

            String cedula = request.getParameter("cedula");
            String estudio = request.getParameter("estudio");
            OtroEstudio = request.getParameter("OtroEstudio");
            String ResumenClinico = request.getParameter("ResumenClinico");
            String Diagnostico = request.getParameter("Diagnostico");
            String CIE = request.getParameter("CIE");
            String MuestraPieza = request.getParameter("MuestraPieza");
            String TratamientoRecibe = request.getParameter("TratamientoRecibe");
            String Endocervix =request.getParameter("Endocervix");
            String Exocervix = request.getParameter("Exocervix");
            String ParedVaginal = request.getParameter("ParedVaginal");
            String UnionEscamo = request.getParameter("UnionEscamo");
            String MuñonCervical = request.getParameter("MuñonCervical");
            String Otro = request.getParameter("Otro");
            String Oral = request.getParameter("Oral");
            String DIU = request.getParameter("DIU");
            String Ligadura = request.getParameter("Ligadura");
            String OtroO = request.getParameter("OtroO");
            String TerapiaHormonal = request.getParameter("TerapiaHormonal");
            boolean Endocervi = Covertir(Endocervix);
            boolean Exocervi = Covertir(Exocervix);
            boolean ParedVagina = Covertir(ParedVaginal);
            boolean UnionEscam = Covertir(UnionEscamo);
            boolean MuñonCervica = Covertir(MuñonCervical);
            boolean Otr = Covertir(Otro);
            boolean Ora = Covertir(Oral);
            boolean DI = Covertir(DIU);
            boolean Ligadur = Covertir(Ligadura);
            boolean OtroO1 = Covertir(OtroO);
            boolean TerapiaHormona = Covertir(TerapiaHormonal);
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

            System.out.println("cedula: "+cedula+" Resumen: "+ResumenClinico+" Endocervix: "+Endocervi+" Endocervix1:"+Endocervix+"f");
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
                ps.setBoolean(10, Endocervi);
                ps.setBoolean(11, Exocervi);
                ps.setBoolean(12, ParedVagina);
                ps.setBoolean(13, UnionEscam);
                ps.setBoolean(14, MuñonCervica);
                ps.setBoolean(15, Otr);
                ps.setBoolean(16, Ora);
                ps.setBoolean(17, DI);
                ps.setBoolean(18, Ligadur);
                ps.setBoolean(19, OtroO1);
                ps.setBoolean(20, TerapiaHormona);
                ps.setInt(21, Menarquia);
                ps.setInt(22, Menopausia);
                ps.setInt(23, InicioRelaciones);
                ps.setInt(24, Gestaciones);
                ps.setInt(25, Partos);
                ps.setInt(26, Abortos);
                ps.setInt(27, Cesareas);
               System.out.println(sqlInsertarPaciente);
                int resultado = 0;
                resultado = ps.executeUpdate();
                 response.sendRedirect("MenuGinecologia.jsp");
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
