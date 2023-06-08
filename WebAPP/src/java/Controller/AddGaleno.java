 
package Controller;

import BD.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.ConstructorGaleno;
import DAO.InsertAddGaleno;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.Normalizer;
import java.util.Properties;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.websocket.Session;
import org.json.JSONArray;
import org.json.JSONObject;
import sun.rmi.transport.Transport;
 
@WebServlet(name = "AddGaleno", urlPatterns = {"/AddGaleno"})
public class AddGaleno extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    PrintWriter out = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    conexion c = new conexion();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
            try {
                String TipoIden = request.getParameter("TipoIden");
                String Identificacion = request.getParameter("Identificacion");
                String PrimerNombre = request.getParameter("PrimerNombre");
                String SegundoNombre = request.getParameter("SegundoNombre");
                String PrimerApellido = request.getParameter("PrimerApellido");
                String SegundoApellido = request.getParameter("SegundoApellido");
                String Celular = request.getParameter("celular");
                String Provincia = request.getParameter("Provincia");
                String canton = request.getParameter("canton");
                String parroquia = request.getParameter("parroquia");
                String Direccion = request.getParameter("direccion");
                String email = request.getParameter("email");
                String usuario = request.getParameter("user");
                String pass = request.getParameter("pass");
                String TipoDepartamento = request.getParameter("departamento");

                //String original = "Psicología";
                String cadenaNormalize = Normalizer.normalize(TipoDepartamento, Normalizer.Form.NFD);   
                String cadenaSinAcentos = cadenaNormalize.replaceAll("[^\\p{ASCII}]", "");
                
                
                if ("Medicina General".equals(cadenaSinAcentos)) {
                    TipoDepartamento = "1";
                }else if("Psicologia".equals(cadenaSinAcentos)){
                    TipoDepartamento = "2";
                }else if("Terapia Fisica".equals(cadenaSinAcentos)){
                    TipoDepartamento = "3";
                }else {
                    TipoDepartamento = "0";
                }

                String estado = "0";
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
                String x = dtf.format(LocalDateTime.now());

            
                
                out = response.getWriter();
                session = request.getSession(true);
 
                try {
                    // Guardar galeno
                    String sqlCita = "INSERT INTO galeno(\n"
                        + "            galeno_tipo_dni, galeno_dni, galeno_apellido_paterno, \n"
                        + "            galeno_primer_nombre, galeno_telefono, galeno_direccion, created_at, \n"
                        + "            galeno_user, galeno_pass, galeno_apellido_materno, \n"
                        + "            galeno_segundo_nombre, galeno_provincia, galeno_canton, galeno_parroquia, \n"
                        + "            galeno_estado, galeno_departamento, galeno_correoelectronico)\n"
                        + "    VALUES (?, ?, ?, ?, ?, ?, now(), ?, md5(?), ?, ?, ?, ?, ?, ?, ?, ?)";

                    ps = c.getConecction().prepareStatement(sqlCita, Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1, TipoIden);
                    ps.setString(2, Identificacion);
                    ps.setString(3, PrimerApellido);
                    ps.setString(4, PrimerNombre);
                    ps.setString(5, Celular);
                    ps.setString(6, Direccion);
                    ps.setString(7, usuario);
                    ps.setString(8, pass);
                    ps.setString(9, SegundoApellido);
                    ps.setString(10, SegundoNombre);
                    ps.setString(11, Provincia);
                    ps.setString(12, canton);
                    ps.setString(13, parroquia);
                    ps.setString(14, estado);
                    ps.setInt(15, Integer.parseInt(TipoDepartamento));
                    ps.setString(16, email);
                    
                    int resGaleno = 0;

                    resGaleno = ps.executeUpdate();
                    if (resGaleno != 0) {
                        //response.sendRedirect("index.jsp");
                        response.sendRedirect(request.getContextPath() + "/index.jsp");
                    }

                } catch (SQLException e) {
                    out.println("Exception: " + e);
                    System.out.println("Exception1: " + e);
                    
                    out.println("la cadena: " + cadenaSinAcentos);
                    System.out.println("la cadena: " + cadenaSinAcentos);
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

            /*
            if (!TipoIden.equalsIgnoreCase("") && !Identificacion.equalsIgnoreCase("") && !PrimerNombre.equalsIgnoreCase("") && !PrimerApellido.equalsIgnoreCase("") && !SegundoApellido.equalsIgnoreCase("")
                    && !Celular.equalsIgnoreCase("") && !SegundoNombre.equalsIgnoreCase("") && !Provincia.equalsIgnoreCase("") && !canton.equalsIgnoreCase("") && !Direccion.equalsIgnoreCase("")
                    && !parroquia.equalsIgnoreCase("") && !email.equalsIgnoreCase("") && !usuario.equalsIgnoreCase("") && !pass.equalsIgnoreCase("")
                    && !x.equalsIgnoreCase("") && !estado.equalsIgnoreCase("") && !TipoDepartamento.equalsIgnoreCase("")) {
                ConstructorGaleno galeno = new ConstructorGaleno(TipoIden, Identificacion, PrimerApellido, PrimerNombre, Celular, Direccion, x, usuario, pass, SegundoApellido, SegundoNombre, Provincia, canton, parroquia, estado, TipoDepartamento, email);
                boolean sw = InsertAddGaleno.agregarGaleno(galeno);
                if (sw) {
//                    JOptionPane.showMessageDialog(null, "AGREGADO CORRECTAMENTE");
                    response.sendRedirect("index.jsp");
//                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                } else {
//                    out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud.");
                }
            }*/

       
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
