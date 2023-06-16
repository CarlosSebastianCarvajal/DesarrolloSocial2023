/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BD.conexion;
import static java.awt.SystemColor.window;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import org.json.*;


/**
 *
 * @author Sebastian Carvajal
 */
@WebServlet(name = "AddGineHistoriaClinica", urlPatterns = {"/AddGineHistoriaClinica"})
public class AddGineHistoriaClinica extends HttpServlet {

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
            //Preparar los parametros
            String pacienteid,
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial,
                temperatura,
                frecuencia_cardiaca,
                saturacion,
                peso,
                estatura,
                imc,
                    
                //Datos de la historia clinica (Crear Variable)
                ap_personales,
                ap_familiares,
                ap_quirurgicos,
                ap_alergicos,
                ap_habitos,
                ago_menarquia,
                ago_irs,
                ago_parejas,
                ago_ultimo_pap,
                ago_metodos_anti,
                ago_fum,
                ago_fpp,
                ago_menopausia,
                ago_gestas,
                ago_partos,
                ago_abortos,
                ago_cesareas,
                ago_edad_gestacional,
                ago_complicaciones,
                motivo_consulta,
                enfermedad_acual,
                diagnostico,
                tratamiento;            
            
            pacienteid = request.getParameter("txtid");
            // Capturar valores de signos vitales
            presion_arterial = request.getParameter("presion_arterial");
            temperatura = request.getParameter("temperatura");
            frecuencia_cardiaca = request.getParameter("frecuencia_cardiaca");
            saturacion = request.getParameter("saturacion");
            peso = request.getParameter("peso");
            estatura = request.getParameter("estatura");
            imc = request.getParameter("imc");
            
            // Capturar valores de Historia clinica
            ap_personales = request.getParameter("ap_personales");
            ap_familiares = request.getParameter("ap_familiares");
            ap_quirurgicos = request.getParameter("ap_quirurgicos");
            ap_alergicos = request.getParameter("ap_alergicos");
            ap_habitos = request.getParameter("ap_habitos");
            ago_menarquia = request.getParameter("ago_menarquia");
            ago_irs = request.getParameter("ago_irs");
            ago_parejas = request.getParameter("ago_parejas");
            ago_ultimo_pap = request.getParameter("ago_ultimo_pap");
            ago_metodos_anti = request.getParameter("ago_metodos_anti");
            ago_fum = request.getParameter("ago_fum");
            ago_fpp = request.getParameter("ago_fpp");
            ago_menopausia = request.getParameter("ago_menopausia");
            ago_gestas = request.getParameter("ago_gestas");
            ago_partos = request.getParameter("ago_partos");
            ago_abortos = request.getParameter("ago_abortos");
            ago_cesareas = request.getParameter("ago_cesareas");
            ago_edad_gestacional = request.getParameter("ago_edad_gestacional");
            ago_complicaciones = request.getParameter("ago_complicaciones");
            motivo_consulta = request.getParameter("motivo_consulta");
            enfermedad_acual = request.getParameter("enfermedad_acual");
            diagnostico = request.getParameter("diagnostico");
            tratamiento = request.getParameter("tratamiento");
            
            try {
                System.out.println("connection done");
                
                //Guardar las signos vitales
                String sqlSignos = "INSERT INTO public.signos_vitales(\n" +
                                "	paciente_id, presion_arterial, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fecha, hora)\n" +
                                "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, now(), now());";

                ps = c.getConecction().prepareStatement(sqlSignos, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(pacienteid));
                ps.setInt(2, Integer.parseInt(presion_arterial));
                ps.setFloat(3, Float.parseFloat(temperatura));
                ps.setInt(4, Integer.parseInt(frecuencia_cardiaca));
                ps.setInt(5, Integer.parseInt(saturacion));
                ps.setFloat(6, Float.parseFloat(peso));
                ps.setInt(7, Integer.parseInt(estatura));
                ps.setFloat(8, Float.parseFloat(imc));
                
                int resSignos = 0;

                resSignos = ps.executeUpdate();
                if (resSignos != 0) {
                    int id_signos = 0;
                    ResultSet resultSet = ps.getGeneratedKeys();
                    if (resultSet.next()) {
                        id_signos = resultSet.getInt(1);
                        int xd = 0;
                        
                        // Guardar la Histoia clínica Gineco-Obstetrico
                        String sqlHistorial = "INSERT INTO public.ginecologia_historia_clinica(\n" +
                                        "	paciente_id, signos_id, \n" +
                                        "	ap_personales, ap_familiares, ap_quirurgicos, ap_alergicos, ap_habitos,\n" +
                                        "	ago_menarquia, ago_irs, ago_parejas, ago_ultimo_pap, ago_metodos_anti,\n" +
                                        "	ago_fum, ago_fpp, ago_menopausia, ago_gestas, ago_partos, ago_abortos,\n" +
                                        "	ago_cesareas, ago_edad_gestacional, ago_complicaciones,\n" +
                                        "	motivo_consulta, enfermedad_acual, diagnostico, tratamiento, fecha)\n" +
                                        "	VALUES (?, ?,\n" +
                                        "			?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?,\n" +
                                        "			?, ?, ?, ?, now());";
                        ps = c.getConecction().prepareStatement(sqlHistorial);
                        ps.setInt(1, Integer.parseInt(pacienteid));
                        ps.setInt(2, id_signos);
                        
                        ps.setString(3, ap_personales);
                        ps.setString(4, ap_familiares);
                        ps.setString(5, ap_quirurgicos);
                        ps.setString(6, ap_alergicos);
                        ps.setString(7, ap_habitos);
                        
                        ps.setInt(8, Integer.parseInt(ago_menarquia));
                        ps.setInt(9, Integer.parseInt(ago_irs));
                        ps.setInt(10, Integer.parseInt(ago_parejas));
                        ps.setDate(11, Date.valueOf(ago_ultimo_pap));
                        ps.setString(12, ago_metodos_anti);
                        
                        ps.setDate(13, Date.valueOf(ago_fum));
                        ps.setDate(14, Date.valueOf(ago_fpp));
                        ps.setInt(15, Integer.parseInt(ago_menopausia));
                        ps.setInt(16, Integer.parseInt(ago_gestas));
                        ps.setInt(17, Integer.parseInt(ago_partos));
                        ps.setInt(18, Integer.parseInt(ago_abortos));
                        
                        ps.setInt(19, Integer.parseInt(ago_cesareas));
                        ps.setInt(20, Integer.parseInt(ago_edad_gestacional));
                        ps.setString(21, ago_complicaciones);
                        
                        ps.setString(22, motivo_consulta);
                        ps.setString(23, enfermedad_acual);
                        ps.setString(24, diagnostico);
                        ps.setString(25, tratamiento);
                        
                        int resSe = 0;

                        resSe = ps.executeUpdate();
                      
                        if(resSe!= 0){
                            response.sendRedirect("resGuardarTerapia.jsp");
                        }
                        
                    }
                    
                    //response.sendRedirect(request.getContextPath() + "/Principal.jsp");
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
