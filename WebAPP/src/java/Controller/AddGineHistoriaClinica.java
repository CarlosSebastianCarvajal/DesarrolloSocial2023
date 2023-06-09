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
import java.sql.Types;
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
            String checkcito_examen = request.getParameter("checkcito_examen");
            if(checkcito_examen == null){ checkcito_examen = "off"; }
            String galenoid = "";
            String pacienteid,
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial_s,
                presion_arterial_d,
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
                tratamiento,
                    
                // Receta (Crear Variable)
                receta;             
            
            pacienteid = request.getParameter("txtid");
            // Capturar valores de signos vitales
            presion_arterial_s = request.getParameter("presion_arterial_s");
            presion_arterial_d = request.getParameter("presion_arterial_d");
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
            
            //Capturar los datos de la receta
            receta = request.getParameter("txt-tabla-datos-medicamentos");
            
            //Capturar usuario de la sesion
            String galenoUser = (String) session.getAttribute("galeno_user11");
            
            try {
                System.out.println("connection done");
                // Sección para consultar si se ha registrado signos vitales previamente
                // en caso de ser asi solo se extrae su ID
                
                //Obtener el id del Usuario
                String sqlidUser = "select *  from galeno where galeno_user = '"+galenoUser+"'";
                ps = c.getConecction().prepareStatement(sqlidUser);
                ResultSet resultId = ps.executeQuery();
                while (resultId.next()) {
                    galenoid = String.valueOf(resultId.getString("galeno_id"));
                }
                
                //Guardar las signos vitales
                String sqlSignos = "INSERT INTO public.signos_vitales(\n" +
                                "	paciente_id, galeno_id, pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fecha, hora)\n" +
                                "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), now());";

                ps = c.getConecction().prepareStatement(sqlSignos, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(pacienteid));
                ps.setInt(2, Integer.parseInt(galenoid));
                ps.setInt(3, Integer.parseInt(presion_arterial_s));
                ps.setInt(4, Integer.parseInt(presion_arterial_d));
                ps.setFloat(5, Float.parseFloat(temperatura));
                ps.setInt(6, Integer.parseInt(frecuencia_cardiaca));
                ps.setInt(7, Integer.parseInt(saturacion));
                ps.setFloat(8, Float.parseFloat(peso));
                ps.setInt(9, Integer.parseInt(estatura));
                ps.setFloat(10, Float.parseFloat(imc));
                
                int resSignos = 0;

                resSignos = ps.executeUpdate();
                if (resSignos != 0) {
                    int id_signos = 0;
                    ResultSet resultSet = ps.getGeneratedKeys();
                    if (resultSet.next()) {
                        id_signos = resultSet.getInt(1);                        
                        // Guardar la Histoia clínica Gineco-Obstetrico
                        String sqlHistorial = "INSERT INTO public.ginecologia_historia_clinica(\n" +
                                        "	paciente_id, galeno_id, signos_id, \n" +
                                        "	ap_personales, ap_familiares, ap_quirurgicos, ap_alergicos, ap_habitos,\n" +
                                        "	ago_menarquia, ago_irs, ago_parejas, ago_ultimo_pap, ago_metodos_anti,\n" +
                                        "	ago_fum, ago_fpp, ago_menopausia, ago_gestas, ago_partos, ago_abortos,\n" +
                                        "	ago_cesareas, ago_edad_gestacional, ago_complicaciones,\n" +
                                        "	motivo_consulta, enfermedad_acual, diagnostico, tratamiento, fecha)\n" +
                                        "	VALUES (?, ?, ?,\n" +
                                        "			?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?, ?, ?, ?,\n" +
                                        "			?, ?, ?,\n" +
                                        "			?, ?, ?, ?, now());";
                        ps = c.getConecction().prepareStatement(sqlHistorial, Statement.RETURN_GENERATED_KEYS);
                        ps.setInt(1, Integer.parseInt(pacienteid));
                        ps.setInt(2, Integer.parseInt(galenoid));
                        ps.setInt(3, id_signos);
                        
                        ps.setString(4, ap_personales);
                        ps.setString(5, ap_familiares);
                        ps.setString(6, ap_quirurgicos);
                        ps.setString(7, ap_alergicos);
                        ps.setString(8, ap_habitos);
                        
                        if(ago_menarquia != null && ago_menarquia.length() > 0){ ps.setInt(9, Integer.parseInt(ago_menarquia)); }else{ ps.setNull(9, Types.INTEGER); }
                        if(ago_irs != null && ago_irs.length() > 0){ ps.setInt(10, Integer.parseInt(ago_irs)); }else{ ps.setNull(10, Types.INTEGER); }
                        ps.setInt(11, Integer.parseInt(ago_parejas));
                        if(ago_ultimo_pap != null && ago_ultimo_pap.length() > 0){ ps.setDate(12, Date.valueOf(ago_ultimo_pap)); }else{ ps.setNull(12, Types.DATE); }
                        
                        ps.setString(13, ago_metodos_anti);
                        
                        if(ago_fum != null && ago_fum.length() > 0){ ps.setDate(14, Date.valueOf(ago_fum)); }else{ ps.setNull(14, Types.DATE); }
                        if(ago_fpp != null && ago_fpp.length() > 0){ ps.setDate(15, Date.valueOf(ago_fpp)); }else{ ps.setNull(15, Types.DATE); }
                        if(ago_menopausia != null && ago_menopausia.length() > 0){ ps.setInt(16, Integer.parseInt(ago_menopausia)); }else{ ps.setNull(16, Types.INTEGER); }
                        ps.setInt(17, Integer.parseInt(ago_gestas));
                        ps.setInt(18, Integer.parseInt(ago_partos));
                        ps.setInt(19, Integer.parseInt(ago_abortos));
                        
                        ps.setInt(20, Integer.parseInt(ago_cesareas));
                        ps.setInt(21, Integer.parseInt(ago_edad_gestacional));
                        ps.setString(22, ago_complicaciones);
                        
                        ps.setString(23, motivo_consulta);
                        ps.setString(24, enfermedad_acual);
                        ps.setString(25, diagnostico);
                        ps.setString(26, tratamiento);
                        //ps.setNull(26, 1);
                        
                        int resSe = 0;

                        resSe = ps.executeUpdate();
                      
                        if(resSe!= 0){
                            int id_ghc = 0;
                            resultSet = ps.getGeneratedKeys();
                            if (resultSet.next()) {
                                id_ghc = resultSet.getInt(1);
                                
                                
                                //Verificar datos de receta medica y guardar
                                if(receta.length() > 2){
                                    int idR = -1;
                                    String Sqlreceta = "INSERT INTO recetamedica(galeno_id, paciente_id, fecha)\n" +
                                                "	VALUES (?, ?, now())";
                                    ps = c.getConecction().prepareStatement(Sqlreceta, Statement.RETURN_GENERATED_KEYS);
                                    ps.setInt(1, Integer.parseInt(galenoid));
                                    ps.setInt(2, Integer.parseInt(pacienteid));
                                    int resRec = 0;
                                    resRec = ps.executeUpdate();
                                    if (resRec != 0) {
                                        ResultSet resultSetRec = ps.getGeneratedKeys();
                                        if (resultSetRec.next()) {
                                            idR = resultSetRec.getInt(1);

                                            String jsonR  = prepararjson(receta);
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
                                    // Guardar Notas de evolucion con receta
                                    int aaaa = idR;
                                    String sqlNotas = "INSERT INTO public.ginecologia_seguimiento(\n" +
                                                    "	ghc_id, signos_id, id_recetamedica, notas, fecha, hora, examen)\n" +
                                                    "	VALUES (?, ?, ?, ?, now(), now(), ?);";
                                    ps = c.getConecction().prepareStatement(sqlNotas);
                                    ps.setInt(1, id_ghc);
                                    ps.setInt(2, id_signos);
                                    ps.setInt(3, idR);
                                    ps.setString(4, motivo_consulta);
                                    if(checkcito_examen.equals("on")) { ps.setBoolean(5, true); }else { ps.setBoolean(5, false);}
                                    int resSe0 = 0;
                                    resSe0 = ps.executeUpdate();
                                    if(resSe0!= 0){
                                        response.sendRedirect("MenuGinecologia.jsp");
                                    }
                                }else{
                                    // Guardar Notas de evolucion sin receta
                                    String sqlNotas = "INSERT INTO public.ginecologia_seguimiento(\n" +
                                                        "	ghc_id, signos_id, notas, fecha, hora, examen)\n" +
                                                        "	VALUES (?, ?, ?, now(), now(), ?);";
                                        ps = c.getConecction().prepareStatement(sqlNotas);
                                        ps.setInt(1, id_ghc);
                                        ps.setInt(2, id_signos);
                                        ps.setString(3, motivo_consulta);
                                        if(checkcito_examen.equals("on")) { ps.setBoolean(4, true); }else { ps.setBoolean(4, false);}


                                    int resSe1 = 0;
                                    resSe1 = ps.executeUpdate();
                                    if(resSe1!= 0){
                                        response.sendRedirect("MenuGinecologia.jsp");
                                    }
                                }
                            }
                            
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
