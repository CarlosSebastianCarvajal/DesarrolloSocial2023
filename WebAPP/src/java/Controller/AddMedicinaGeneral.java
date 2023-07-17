package Controller;

import BD.conexion;
import static java.awt.SystemColor.window;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author jean
 */
@WebServlet(name = "AddMedicinaGeneral", urlPatterns = {"/AddMedicinaGeneral"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class AddMedicinaGeneral extends HttpServlet {

    PrintWriter out = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    conexion c = new conexion();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        try {
            out = response.getWriter();
            session = request.getSession(false);
            
            String checkcito_examen = request.getParameter("checkcito_examen");
            if(checkcito_examen == null){ checkcito_examen = "off"; }
            
            String pacienteid = "",
                   galenoid = "",
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial_s,
                presion_arterial_d,
                temperatura,
                frecuencia_cardiaca,
                saturacion,
                peso,
                estatura,
                imc,
                fr,
                glucosa,
                
                // DATOS DE MEDICINA GENERAL
                // antecedentes
                antecedentesalergicos,  
                antecedentespersonales,
                antecedentesfamiliares,
                antecedentesquirurgicos,
                
                // consulta
                motivoconsulta,
                enfermedad, 
                diagnositico,
                tipo,
                receta,
                    
                signos_id;
            
            
            //id paciente
            pacienteid = request.getParameter("txtid");
            
            presion_arterial_s = request.getParameter("presion_arterial_s");
            presion_arterial_d = request.getParameter("presion_arterial_d");
            temperatura = request.getParameter("temperatura");
            frecuencia_cardiaca = request.getParameter("frecuencia_cardiaca");
            saturacion = request.getParameter("saturacion");
            peso = request.getParameter("peso");
            estatura = request.getParameter("estatura");
            imc = request.getParameter("imc");
            fr = request.getParameter("fr");
            glucosa = request.getParameter("glucosa");
            
            //antecedentes
            antecedentesalergicos = request.getParameter("antecedentesalergicos");
            antecedentespersonales = request.getParameter("antecedentespersonales");
            antecedentesfamiliares = request.getParameter("antecedentesfamiliares");
            antecedentesquirurgicos = request.getParameter("antecedentesquirurgicos");
            
            //consulta
            motivoconsulta = request.getParameter("motivoconsulta");
            enfermedad = request.getParameter("enfermedad");
            diagnositico = request.getParameter("diagnostico");
            tipo = request.getParameter("tipo");
            
            // receta
            receta = request.getParameter("txt-tabla-datos-medicamentos");
            
            // signos
            signos_id = request.getParameter("txtidsv");
            
            String galenoUser = (String) session.getAttribute("galeno_user11");
            
            
            
            try {
                System.out.println("connection done");
                // Consultamos el id del galeno
                String sqlidUser = "select *  from galeno where galeno_user = '"+galenoUser+"'";
                ps = c.getConecction().prepareStatement(sqlidUser);
                ResultSet resultId = ps.executeQuery();
                while (resultId.next()) {
                    galenoid = String.valueOf(resultId.getString("galeno_id"));
                }
                
                //Guardar las signos vitales
                int resSignos = 0;
                int id_signos = 0;
                ResultSet resultSet;
                
                if(signos_id.equals("no")){
                    String sqlSignos = "INSERT INTO public.signos_vitales(\n" +
                                "	paciente_id, galeno_id, pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fr, glucosa, fecha, hora)\n" +
                                "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), now());";

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
                    ps.setInt(11, Integer.parseInt(fr));
                    ps.setInt(12, Integer.parseInt(glucosa));
                    
                    resSignos = ps.executeUpdate();
                    if (resSignos != 0) {
                        resultSet = ps.getGeneratedKeys();
                        if (resultSet.next()) {
                            id_signos = resultSet.getInt(1);
                        }
                    }
                    
                }else{
                    resSignos = 1;
                    id_signos = Integer.parseInt(signos_id);
                }
                    
                
                if (resSignos != 0) {
                                         
                    // Guardar la Histoia clínica Gineco-Obstetrico
                    String sqlHistorial = "INSERT INTO public.medicinageneral(\n" +
                                        "	paciente_id, galeno_id, signos_id, antecedentesalergicos, antecedentespersonales, antecedentesfamiliares, antecedentesquirurgicos, fechaconsulta, "
                                        + "motivoconsulta, enfermedad, diagnositico, tipo)\n" +
                                        "	VALUES (?, ?, ?, ?, ?, ?, ?, (CURRENT_DATE)::varchar, ?, ?, ?, ?);";
                    ps = c.getConecction().prepareStatement(sqlHistorial, Statement.RETURN_GENERATED_KEYS);
                    ps.setInt(1, Integer.parseInt(pacienteid));
                    ps.setInt(2, Integer.parseInt(galenoid));
                    ps.setInt(3, id_signos);

                    ps.setString(4, antecedentesalergicos);
                    ps.setString(5, antecedentespersonales);
                    ps.setString(6, antecedentesfamiliares);
                    ps.setString(7, antecedentesquirurgicos);

                    ps.setString(8, motivoconsulta);
                    ps.setString(9, enfermedad);
                    ps.setString(10, diagnositico);
                    ps.setString(11, tipo);

                    int resSe = 0;
                    resSe = ps.executeUpdate();

                    if(resSe!= 0){
                        int id_mg = 0;
                        resultSet = ps.getGeneratedKeys();
                        if (resultSet.next()) {
                            id_mg = resultSet.getInt(1);


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
                                String sqlNotas = "INSERT INTO public.mg_seguimiento(\n" +
                                                "		idmedicinageneral, signos_id, id_recetamedica, notas, fecha, hora, examen)\n" +
                                                "	VALUES (?, ?, ?, ?, CURRENT_DATE, CURRENT_TIME, ?);";
                                ps = c.getConecction().prepareStatement(sqlNotas);
                                ps.setInt(1, id_mg);
                                ps.setInt(2, id_signos);
                                ps.setInt(3, idR);
                                ps.setString(4, motivoconsulta);
                                if(checkcito_examen.equals("on")) { ps.setBoolean(5, true); }else { ps.setBoolean(5, false);}
                                int resSeg = 0;
                                resSeg = ps.executeUpdate();
                                if(resSeg!= 0){
                                    response.sendRedirect("MenuMedicinaGeneral.jsp");
                                }
                            }else{
                                // Guardar Notas de evolucion sin receta
                                String sqlNotas = "INSERT INTO public.mg_seguimiento(\n" +
                                                    "	idmedicinageneral, signos_id, notas, fecha, hora, examen)\n" +
                                                    "	VALUES (?, ?, ?, now(), now(), ?);";
                                    ps = c.getConecction().prepareStatement(sqlNotas);
                                    ps.setInt(1, id_mg);
                                    ps.setInt(2, id_signos);
                                    ps.setString(3, motivoconsulta);
                                    if(checkcito_examen.equals("on")) { ps.setBoolean(4, true); }else { ps.setBoolean(4, false);}


                                int resSeg = 0;
                                resSeg = ps.executeUpdate();
                                if(resSeg!= 0){
                                    response.sendRedirect("MenuMedicinaGeneral.jsp");
                                }
                            }
                        }
                    }
                    
                }
                
                
                
                // Aqui guardamos
                String sql = "";
                ps = c.getConecction().prepareStatement(sql);
                ps.setString(1, pacienteid);
                
                ps.executeUpdate();
                
                
                
                
                //response.sendRedirect("MenuMedicinaGeneral.jsp");
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
