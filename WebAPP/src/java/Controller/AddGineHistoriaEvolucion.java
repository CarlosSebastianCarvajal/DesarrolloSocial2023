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
@WebServlet(name = "AddGineHistoriaEvolucion", urlPatterns = {"/AddGineHistoriaEvolucion"})
public class AddGineHistoriaEvolucion extends HttpServlet {

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
            String galenoid = "", hcid = "";
            String pacienteid,
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial,
                temperatura,
                frecuencia_cardiaca,
                saturacion,
                peso,
                estatura,
                imc,
                    
                //Notas de Evolucion (Crear Variable)
                notas,
                    
                // Receta (Crear Variable)
                receta;            
            
            pacienteid = request.getParameter("txtid");
            // Capturar valores de signos vitales
            presion_arterial = request.getParameter("presion_arterial");
            temperatura = request.getParameter("temperatura");
            frecuencia_cardiaca = request.getParameter("frecuencia_cardiaca");
            saturacion = request.getParameter("saturacion");
            peso = request.getParameter("peso");
            estatura = request.getParameter("estatura");
            imc = request.getParameter("imc");
            
            // Capturar valores de Notas de evolucion
            notas = request.getParameter("notas");
            
            //Capturar los datos de la receta
            receta = request.getParameter("txt-tabla-datos-medicamentos");
            
            //Capturar usuario de la sesion
            String galenoUser = (String) session.getAttribute("galeno_user11");
            
            try {
                System.out.println("connection done");
                
                //Obtener el id del Usuario
                String sqlidUser = "select *  from galeno where galeno_user = '"+galenoUser+"'";
                ps = c.getConecction().prepareStatement(sqlidUser);
                ResultSet resultId = ps.executeQuery();
                while (resultId.next()) {
                    galenoid = String.valueOf(resultId.getString("galeno_id"));
                }
                //Obtener el id de Historia Clinica
                String sqlidHC = "SELECT * from ginecologia_historia_clinica order by ghc_id desc";
                ps = c.getConecction().prepareStatement(sqlidHC);
                resultId = ps.executeQuery();
                while (resultId.next()) {
                    hcid = String.valueOf(resultId.getString("ghc_id"));
                }
                
               
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
                                            "	galeno_id, ghc_id, signos_id, id_recetamedica, notas, fecha, hora)\n" +
                                            "	VALUES (?, ?, ?, ?, ?, now(), now());";
                            ps = c.getConecction().prepareStatement(sqlNotas);
                            ps.setInt(1, Integer.parseInt(galenoid));
                            ps.setInt(2, Integer.parseInt(hcid));
                            ps.setInt(3, id_signos);
                            ps.setInt(4, idR);
                            ps.setString(5, notas);
                            
                            int resSe = 0;
                            resSe = ps.executeUpdate();
                            if(resSe!= 0){
                                response.sendRedirect("MenuGinecologia.jsp");
                            }
                        }else{
                            // Guardar Notas de evolucion sin receta
                            String sqlNotas = "INSERT INTO public.ginecologia_seguimiento(\n" +
                                            "	galeno_id, ghc_id, signos_id, notas, fecha, hora)\n" +
                                            "	VALUES (?, ?, ?, ?, now(), now());";
                            ps = c.getConecction().prepareStatement(sqlNotas);
                            ps.setInt(1, Integer.parseInt(galenoid));
                            ps.setInt(2, Integer.parseInt(hcid));
                            ps.setInt(3, id_signos);
                            ps.setString(4, notas);
                            
                            int resSe = 0;
                            resSe = ps.executeUpdate();
                            if(resSe!= 0){
                                response.sendRedirect("MenuGinecologia.jsp");
                            }
                        }
                    }
                    
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
