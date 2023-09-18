package Controller;

import BD.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sebastian Carvajal
 */
@WebServlet(name = "AddSignosVitales", urlPatterns = {"/AddSignosVitales"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class AddSignosVitales extends HttpServlet {

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
                glucosa;
                
                
            
            //id paciente
            pacienteid = request.getParameter("txtid");
            
            //Signos vitales
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
                if(fr != null && fr.length() > 0){ ps.setInt(11, Integer.parseInt(fr)); }else{ ps.setNull(11, Types.INTEGER); }
                if(glucosa != null && glucosa.length() > 0){ ps.setInt(12, Integer.parseInt(glucosa)); }else{ ps.setNull(12, Types.INTEGER); }
                //ps.setInt(11, Integer.parseInt(fr));
                //ps.setInt(12, Integer.parseInt(glucosa));
                int resSignos = 0;
                resSignos = ps.executeUpdate();
                
                if (resSignos != 0) {
                    response.sendRedirect("MenuEnfermeria.jsp");
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
    
}
