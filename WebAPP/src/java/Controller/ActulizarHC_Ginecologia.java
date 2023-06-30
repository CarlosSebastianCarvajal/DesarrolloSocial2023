
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
@WebServlet(name = "ActulizarHC_Ginecologia", urlPatterns = {"/ActulizarHC_Ginecologia"})
public class ActulizarHC_Ginecologia extends javax.servlet.http.HttpServlet {

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

            String cedula = request.getParameter("hg_cedula");
            String presion_arterial_s = request.getParameter("presion_arterial_s");
            String presion_arterial_d = request.getParameter("presion_arterial_d");
            String temperatura = request.getParameter("temperatura");
            String frecuencia_cardiaca = request.getParameter("frecuencia_cardiaca");
            String saturacion = request.getParameter("saturacion");
            String peso = request.getParameter("peso");
            String estatura = request.getParameter("estatura");
            String imc = request.getParameter("imc");

            // Capturar valores de Historia clinica
            String ap_personales = request.getParameter("ap_personales");
            String ap_familiares = request.getParameter("ap_familiares");
            String ap_quirurgicos = request.getParameter("ap_quirurgicos");
            String ap_alergicos = request.getParameter("ap_alergicos");
            String ap_habitos = request.getParameter("ap_habitos");
            String ago_menarquia = request.getParameter("ago_menarquia");
            String ago_irs = request.getParameter("ago_irs");
            String ago_parejas = request.getParameter("ago_parejas");
            String ago_ultimo_pap = request.getParameter("ago_ultimo_pap");
            String ago_metodos_anti = request.getParameter("ago_metodos_anti");
            String ago_fum = request.getParameter("ago_fum");
            String ago_fpp = request.getParameter("ago_fpp");
            String ago_menopausia = request.getParameter("ago_menopausia");
            String ago_gestas = request.getParameter("ago_gestas");
            String ago_partos = request.getParameter("ago_partos");
            String ago_abortos = request.getParameter("ago_abortos");
            String ago_cesareas = request.getParameter("ago_cesareas");
            String ago_edad_gestacional = request.getParameter("ago_edad_gestacional");
            String ago_complicaciones = request.getParameter("ago_complicaciones");
            String motivo_consulta = request.getParameter("motivo_consulta");
            String enfermedad_acual = request.getParameter("enfermedad_acual");
            String diagnostico = request.getParameter("diagnostico");
            String tratamiento = request.getParameter("tratamiento");

            String galenoUser = (String) session.getAttribute("galeno_user11");
            try {
                String sqlInsertarSeguimiento = "UPDATE signos_vitales\n"
                        + "SET pa_sistolica=?, pa_diastolica=?, temperatura=?, frecuencia_cardiaca=?, saturacion=?, peso=?, estatura=?, imc=?\n"
                        + "WHERE signos_id=(select signos_id from ginecologia_historia_clinica as g, paciente as p where p.paciente_id=g.paciente_id\n"
                        + "and p.paciente_dni ='" + cedula + "')";
                ps = c.getConecction().prepareStatement(sqlInsertarSeguimiento, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(presion_arterial_s));
                ps.setInt(2, Integer.parseInt(presion_arterial_d));
                ps.setFloat(3, Float.parseFloat(temperatura));
                ps.setInt(4, Integer.parseInt(frecuencia_cardiaca));
                ps.setInt(5, Integer.parseInt(saturacion));
                ps.setFloat(6, Float.parseFloat(peso));
                ps.setInt(7, Integer.parseInt(estatura));
                ps.setFloat(8, Float.parseFloat(imc));
                int resultado = 0;

                resultado = ps.executeUpdate();
                System.out.println("Seguimiento add: " + resultado);

                try {
                    String sqlInsertar = "UPDATE ginecologia_historia_clinica				  \n"
                            + "SET ap_personales=?, ap_familiares=?, ap_quirurgicos=?, ap_alergicos=?, ap_habitos=?, ago_menarquia=?, ago_irs=?, \n"
                            + "ago_parejas=?, ago_ultimo_pap='" + ago_ultimo_pap + "', ago_metodos_anti=?, ago_fum='" + ago_fum + "', ago_fpp='" + ago_fpp + "', ago_menopausia=?, ago_gestas=?, \n"
                            + "ago_partos=?, ago_abortos=?, ago_cesareas=?, ago_edad_gestacional=?, ago_complicaciones=?, motivo_consulta=?, \n"
                            + "enfermedad_acual=?, diagnostico=?, tratamiento=?\n"
                            + "WHERE paciente_id=(select p.paciente_id from ginecologia_historia_clinica as g, paciente as p where p.paciente_id=g.paciente_id\n"
                            + "and p.paciente_dni ='" + cedula + "')";
                    ps = c.getConecction().prepareStatement(sqlInsertar, Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1, ap_personales);
                    ps.setString(2, ap_familiares);
                    ps.setString(3, ap_quirurgicos);
                    ps.setString(4, ap_alergicos);
                    ps.setString(5, ap_habitos);
                    ps.setInt(6, Integer.parseInt(ago_menarquia));
                    ps.setInt(7, Integer.parseInt(ago_irs));
                    ps.setInt(8, Integer.parseInt(ago_parejas));
                    ps.setString(9, ago_metodos_anti);
                    ps.setInt(10, Integer.parseInt(ago_menopausia));
                    ps.setInt(11, Integer.parseInt(ago_gestas));
                    ps.setInt(12, Integer.parseInt(ago_partos));
                    ps.setInt(13, Integer.parseInt(ago_abortos));
                    ps.setInt(14, Integer.parseInt(ago_cesareas));
                    ps.setInt(15, Integer.parseInt(ago_edad_gestacional));
                    ps.setString(16, ago_complicaciones);
                    ps.setString(17, motivo_consulta);
                    ps.setString(18, enfermedad_acual);
                    ps.setString(19, diagnostico);
                    ps.setString(20, tratamiento);
                    resultado = 0;
                    
                    resultado = ps.executeUpdate();
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
                if (resultado != 0) {
                    response.sendRedirect("MenuGinecologia.jsp");
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
