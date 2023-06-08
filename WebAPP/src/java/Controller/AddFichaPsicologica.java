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
@WebServlet(name = "AddFichaPsicologica", urlPatterns = {"/AddFichaPsicologica"})
public class AddFichaPsicologica extends javax.servlet.http.HttpServlet {

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
            
            String PrimerNombre = request.getParameter("PrimerNombre");
            String SegundoNombre = request.getParameter("SegundoNombre");
            String PrimerApellido = request.getParameter("PrimerApellido");
            String SegundoApellido = request.getParameter("SegundoApellido");
            String CedulaIdentidad = request.getParameter("CedulaIdentidad");
            String escolaridad = request.getParameter("escolaridad");
            String ocupacion = request.getParameter("ocupacion");
            String estadoCivil = request.getParameter("estadoCivil");
            String genero = request.getParameter("genero");
            String Fechadenacimiento = request.getParameter("Fechadenacimiento");
            String EdadP = request.getParameter("edadP");
            String religion = request.getParameter("religion");
            String OrientacionSexual = request.getParameter("OrientacionSexual");
            String LugarResidencia = request.getParameter("LugarResidencia");
            String TipoDiscapacidad = request.getParameter("TipoDiscapacidad");
            String porcentaje = request.getParameter("porcentaje");
            String NumeroTelefonico = request.getParameter("NumeroTelefonico");
            
            String PrimerApellidoC = request.getParameter("PrimerApellidoC");
            String PrimerNombreC = request.getParameter("PrimerNombreC");
            String parentezco = request.getParameter("parentezco");
            String CedulaIdentidadC = request.getParameter("CedulaIdentidadC");
            String NumeroTelefonicoC = request.getParameter("NumeroTelefonicoC");
            
            String MotivoConsulta = request.getParameter("MotivoConsulta");
            String HistoriaPersonal = request.getParameter("HistoriaPersonal");
            String AntecedentesFamiliares = request.getParameter("AntecedentesFamiliares");
            String MitosDesarrollo = request.getParameter("MitosDesarrollo");
            String ActividadInteres = request.getParameter("ActividadInteres");
            String AtencionPP = request.getParameter("AtencionPP");
            String EnfermedadCronica = request.getParameter("EnfermedadCronica");
            String orientacion = request.getParameter("orientacion");
            String apariencia = request.getParameter("apariencia");
            String pensamiento = request.getParameter("pensamiento");
            String comportamientos = request.getParameter("comportamientos");
            String lenguaje = request.getParameter("lenguaje");
            String otros = request.getParameter("otros");
            String memoria = request.getParameter("memoria");
            String atencion = request.getParameter("atencion");
            String afectividad = request.getParameter("afectividad");
            String juicio = request.getParameter("juicio");
            String recomendacion = request.getParameter("recomendacion");
            String galeno = request.getParameter("NombresApellidos");
            //String fecha=request.getParameter("fecha");
            String hora=request.getParameter("hora");
            String galenoUser = (String) session.getAttribute("galeno_user11");
            
          try {
                String sqlInsertarPaciente = "INSERT INTO public.paciente(\n" +
                "	paciente_dni, paciente_apellido_paterno, paciente_primer_nombre, paciente_fnacimiento, \n" +
                "	paciente_direccion, paciente_telefono, paciente_genero,	paciente_apellido_materno, \n" +
                "	paciente_segundo_nombre, paciente_estado_civil, paciente_escolaridad, paciente_ocupacion, \n" +
                "	paciente_religion, paciente_orientacion_sexual, paciente_tipo_discapacidad, paciente_porcentaje_discapacidad, paciente_edad)\n" +
                "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                ps = c.getConecction().prepareStatement(sqlInsertarPaciente, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, CedulaIdentidad);
                ps.setString(2, PrimerApellido);
                ps.setString(3, PrimerNombre);
                ps.setString(4, Fechadenacimiento);
                ps.setString(5, LugarResidencia);
                ps.setString(6, NumeroTelefonico);
                ps.setString(7, genero);
                ps.setString(8, SegundoApellido);
                ps.setString(9, SegundoNombre);
                ps.setString(10, estadoCivil);
                ps.setString(11, escolaridad);
                ps.setString(12, ocupacion);
                ps.setString(13, religion);
                ps.setString(14, OrientacionSexual);
                ps.setString(15, TipoDiscapacidad);
                ps.setString(16, porcentaje);
                ps.setInt(17, Integer.parseInt(EdadP));
                int resultado = 0;
                resultado = ps.executeUpdate();
                System.out.println("Paciente add: "+resultado);
                
                ps = null;
                String sqlInsertarContacto ="INSERT INTO public.contacto_referencia(\n" +
                "	paciente_id, primer_apellido, primer_nombre, parentezco, cedula, telefono)\n" +
                "	VALUES ((select paciente_id from paciente where paciente_dni=?), ?, ?, ?, ?, ?)";                
                ps = c.getConecction().prepareStatement(sqlInsertarContacto, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, CedulaIdentidad);
                ps.setString(2, PrimerApellidoC);
                ps.setString(3, PrimerNombreC);
                ps.setString(4, parentezco);
                ps.setString(5, CedulaIdentidadC);
                ps.setString(6, NumeroTelefonicoC);
                int resul = 0;
                resul = ps.executeUpdate();
                System.out.println("Contacto add: "+resul);
                
                ps = null;
                String sqlInsertarObservacion ="INSERT INTO public.antecedente_observacion(\n" +
                "	paciente_id, galeno_id, fecha, hora, historia_personal,\n" +
                "	antecedentes_familiares, desarrollo, atencion_psiquiatrica_psicologica, enfermedad_cronica, \n" +
                "	actividad_interes, orientacion, pensamiento, lenguaje, memoria, atencion, afectividad, \n" +
                "	juicio, apariencia, compormatientos, otros, recomendacion, motivo)\n" +
                "	VALUES ((select paciente_id from paciente where paciente_dni=?), (select galeno_id from galeno where galeno_user=?), '"+fecha+"', '"+hora+"', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";                
                ps = c.getConecction().prepareStatement(sqlInsertarObservacion, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, CedulaIdentidad);
                ps.setString(2, galenoUser);
                ps.setString(3, HistoriaPersonal);
                ps.setString(4, AntecedentesFamiliares);
                ps.setString(5, MitosDesarrollo);
                ps.setString(6, AtencionPP);
                ps.setString(7, EnfermedadCronica);
                ps.setString(8, ActividadInteres);
                ps.setString(9, orientacion);
                ps.setString(10, pensamiento);
                ps.setString(11, lenguaje);
                ps.setString(12, memoria);
                ps.setString(13, atencion);
                ps.setString(14, afectividad);
                ps.setString(15, juicio);
                ps.setString(16, apariencia);
                ps.setString(17, comportamientos);
                ps.setString(18, otros);
                ps.setString(19, recomendacion);
                ps.setString(20, MotivoConsulta);
                resul = 0;
                resul = ps.executeUpdate();
                System.out.println("Observacion add: "+resul);
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

