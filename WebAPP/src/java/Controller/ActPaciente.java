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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author jean
 */
@WebServlet(name = "ActPaciente", urlPatterns = {"/ActPaciente"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class ActPaciente extends HttpServlet {

    PrintWriter out = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    conexion c = new conexion();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        out = response.getWriter();
        session = request.getSession(false);
        
        String red = request.getParameter("idx");
        String TipoIden = request.getParameter("TipoIden");
        String Identificacion = request.getParameter("Identificacion");
        String PrimerNombre = request.getParameter("PrimerNombres");
        String SegundoNombre = request.getParameter("SegundoNombres");
        String PrimerApellido = request.getParameter("PrimerApellidos");
        String SegundoApellido = request.getParameter("SegundoApellidos");
        String Fechadenacimiento = request.getParameter("Fechadenacimiento");
        String convencional = request.getParameter("convencional");
        String Celular = request.getParameter("celular");
        String Provincia = request.getParameter("Provincia");
        String Direccion = request.getParameter("Direccion");
        String parroquia = request.getParameter("parroquia");
        String estadoCivil = request.getParameter("estadoCivil");
        String Ayuda1 = request.getParameter("Ayuda");
        String nacionalidad = request.getParameter("nacionalidad");
        String discapacidad = request.getParameter("discapacidad");
        String tipoSangre = request.getParameter("tipoSangre");
        String genero = request.getParameter("genero");
        String email = request.getParameter("email");
        String cond = request.getParameter("cedula");
        try {
            System.out.println("connection done");
            String sql = "UPDATE public.paciente\n"
                    + "   SET paciente_apellido_paterno=?, \n"
                    + "       paciente_primer_nombre=?, paciente_fnacimiento=?, paciente_direccion=?, \n"
                    + "       paciente_telefono=?, paciente_genero=?, paciente_grupo=?, paciente_ayudasocial=?, \n"
                    + "       paciente_apellido_materno=?, paciente_segundo_nombre=?, \n"
                    + "       paciente_provincia=?,paciente_parroquia=?, \n"
                    + "       paciente_nacionalidad=?, paciente_estado_civil=?, paciente_convencional=?, \n"
                    + "       paciente_tipo_sangre=?, paciente_correoelectronico=?\n"
                    + " WHERE paciente_dni=?;";
            ps = c.getConecction().prepareStatement(sql);
            ps.setString(2, PrimerNombre);
            ps.setString(10, SegundoNombre);
            ps.setString(1, PrimerApellido);
            ps.setString(9, SegundoApellido);
            ps.setString(3, Fechadenacimiento);
            ps.setString(15, convencional);
            ps.setString(5, Celular);
            ps.setString(11, Provincia);
            ps.setString(4, Direccion);
            ps.setString(12, parroquia);
            ps.setString(14, estadoCivil);
            ps.setString(8, Ayuda1);
            ps.setString(13, nacionalidad);
            ps.setString(7, discapacidad);
            ps.setString(16, tipoSangre);
            ps.setString(6, genero);
            ps.setString(17, email);
            ps.setString(18, cond);
            ps.executeUpdate();
//            JOptionPane.showMessageDialog(null, "ACTUALIZADO INFORMACION CORRECTAMENTE");
            
            if(red.equals("mg")){
                response.sendRedirect("MenuMedicinaGeneral.jsp");
            }else if(red.equals("tf")){
                response.sendRedirect("MenuTerapiaFisica.jsp");
            }else{
                response.sendRedirect("Principal.jsp");
            }
            
        } catch (IOException | SQLException e) {
            out.println("Exception: " + e);
            System.out.println("Exception1: " + e);
        }
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
