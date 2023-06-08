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
@WebServlet(name = "AddTerapiaFisica", urlPatterns = {"/AddTerapiaFisica"})
public class AddTerapiaFisica extends HttpServlet {

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
            String pacienteid, codigof, motivo, diagnostico, procedimiento, evaluacion, d_tabla_recomendaciones, d_tabla_medicamentos;
            String galenoid = "";
            pacienteid = request.getParameter("txtid");
            codigof = request.getParameter("codigof");
            //----------
            motivo = request.getParameter("motivot");
            diagnostico = request.getParameter("diagnosticot");
            procedimiento = request.getParameter("procedimientot");
            evaluacion = request.getParameter("evaluaciont");
            d_tabla_recomendaciones = request.getParameter("txt-tabla-datos-recomendacion");
            d_tabla_medicamentos = request.getParameter("txt-tabla-datos-medicamentos");
            String galenoUser = (String) session.getAttribute("galeno_user11");
            System.out.println(codigof);
            try {
                System.out.println("connection done");
                
                //Obtener el id del Usuario
                String sqlidUser = "select *  from galeno where galeno_user = '"+galenoUser+"'";
                ps = c.getConecction().prepareStatement(sqlidUser);
                ResultSet resultId = ps.executeQuery();
                while (resultId.next()) {
                    galenoid = String.valueOf(resultId.getString("galeno_id"));
                }
                
                
                // Guardar la cita
                String sqlCita = "insert into cita (paciente_id, galeno_id, cita_fecha, cita_hora, cita_codigo_factura, cita_estado, created_at, updated_at)\n"
                        + "	values(?, ?, CURRENT_DATE, CURRENT_TIME, ?, 'Atendido', now(), now())";

                ps = c.getConecction().prepareStatement(sqlCita, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(pacienteid));
                ps.setInt(2, Integer.parseInt(galenoid));
                ps.setString(3, codigof);
                int resCita = 0;

                resCita = ps.executeUpdate();
                if (resCita != 0) {
                    int id = 0;
                    ResultSet resultSet = ps.getGeneratedKeys();
                    if (resultSet.next()) {
                        id = resultSet.getInt(1);
                        // Ingresar Sesion
                        String sqlSesion = "INSERT INTO sesiones(cita_id, se_motivo, se_diagnostico, se_procedimiento, se_evaluacion)\n"
                                + "	VALUES (?, ?, ?, ?, ?)";
                        ps = c.getConecction().prepareStatement(sqlSesion);
                        ps.setInt(1, id);
                        ps.setString(2, motivo);
                        ps.setString(3, diagnostico);
                        ps.setString(4, procedimiento);
                        ps.setString(5, evaluacion);
                        int resSe = 0;

                        resSe = ps.executeUpdate();
                        
                        
                        //Verificar datos de recomendacion y guardar
                        if(d_tabla_recomendaciones.length() > 2){
                            String jsonP  = prepararjson(d_tabla_recomendaciones);
                            JSONArray array = new JSONArray(jsonP);
                            for(int i = 0; i < array.length(); i++){
                                JSONObject object = array.getJSONObject(i);
                                String actividad = object.getString("actividad");
                                String indicacion = object.getString("indicacion");
                                
                                //Guardado de Recomendaciones de terapia en casa 
                                String sqlRec = "INSERT INTO terapiacasa(cita_id, tc_actividad, tc_indicacion)\n" +
                                                "	VALUES (?, ?, ?)";
                                ps = c.getConecction().prepareStatement(sqlRec);
                                ps.setInt(1, id);
                                ps.setString(2, actividad);
                                ps.setString(3, indicacion);
                                int resRe = 0;

                                resRe = ps.executeUpdate();
                                
                            }
                        }
                        
                        //d_tabla_medicamentos
                        //Verificar datos de receta medica y guardar
                        if(d_tabla_medicamentos.length() > 2){
                            String Sqlreceta = "INSERT INTO recetamedica(galeno_id, paciente_id, fecha, cita_id)\n" +
                                        "	VALUES (?, ?, now(), ?)";
                            ps = c.getConecction().prepareStatement(Sqlreceta, Statement.RETURN_GENERATED_KEYS);
                            ps.setInt(1, Integer.parseInt(galenoid));
                            ps.setInt(2, Integer.parseInt(pacienteid));
                            ps.setInt(3, id);
                            int resRec = 0;
                            resRec = ps.executeUpdate();
                            if (resRec != 0) {
                                ResultSet resultSetRec = ps.getGeneratedKeys();
                                if (resultSetRec.next()) {
                                    int idR;
                                    idR = resultSetRec.getInt(1);
                                   
                                    String jsonR  = prepararjson(d_tabla_medicamentos);
                                    JSONArray array = new JSONArray(jsonR);
                                    for(int i = 0; i < array.length(); i++){
                                        JSONObject object = array.getJSONObject(i);
                                        String medicamento = object.getString("medicamento");
                                        String indicacion_ = object.getString("indicacion");

                                        //Guardado de Receta medica
                                        String sqlDetReceta = "INSERT INTO detalle_recetamedica(id_recetamedica, medicamento, indicaciones)\n" +
                                                        "	VALUES (?, ?, ?)";
                                        ps = c.getConecction().prepareStatement(sqlDetReceta);
                                        ps.setInt(1, idR);
                                        ps.setString(2, medicamento);
                                        ps.setString(3, indicacion_);
                                        int resRe = 0;

                                        resRe = ps.executeUpdate();

                                    }
                                }
                            }
                        }
                        
                        
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
    
    protected String prepararjson(String s){
        s = s.replaceAll("<", "[");
        s = s.replaceAll(">", "]");
        s = s.replaceAll("\\(", "{");
        s = s.replaceAll("\\)", "}");
        return s;
    }

}
