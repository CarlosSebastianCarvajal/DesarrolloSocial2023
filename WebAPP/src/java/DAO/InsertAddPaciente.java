package DAO;

import BD.conexion;
import Model.ControladorPaciente;
import Model.Constructor;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertAddPaciente {

    public static boolean agregarUsuario(ControladorPaciente usuario) {
        boolean agregado = false;
        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO paciente(paciente_tipo_dni, paciente_dni, paciente_apellido_paterno, \n"
                        + "            paciente_primer_nombre, paciente_fnacimiento, paciente_direccion, \n"
                        + "            paciente_telefono, paciente_genero, paciente_grupo, paciente_ayudasocial, \n"
                        + "            paciente_apellido_materno, paciente_segundo_nombre, \n"
                        + "            paciente_provincia, paciente_canton, paciente_parroquia, \n"
                        + "            paciente_nacionalidad, paciente_estado_civil, paciente_convencional, \n"
                        + "            paciente_tipo_sangre,paciente_correoelectronico)VALUES ('" + usuario.getPaciente_tipo_dni() + "','" + usuario.getPaciente_dni() + "','" + usuario.getPaciente_apellido_paterno()
                        + "','" + usuario.getPaciente_primer_nombre() + "','" + usuario.getPaciente_fnacimiento() + "','" + usuario.getPaciente_direccion()
                        + "','" + usuario.getPaciente_telefono() + "','" + usuario.getPaciente_genero() + "','" + usuario.getPaciente_grupo()
                        + "','" + usuario.getPaciente_ayudasocial() + "','" + usuario.getPaciente_apellido_materno()
                        + "','" + usuario.getPaciente_segundo_nombre() + "','" + usuario.getPaciente_provincia()
                        + "','" + usuario.getPaciente_canton() + "','" + usuario.getPaciente_parroquia() + "','" + usuario.getPaciente_nacionalidad()
                        + "','" + usuario.getPaciente_estado_civil() + "','" + usuario.getPaciente_convencional() + "','" + usuario.getPaciente_tipo_sangre()
                        + "','" + usuario.getPaciente_email() + "')");
                agregado = true;
                st.close();
            }
            c.isConected();
        } catch (SQLException e) {
            agregado = false;
        }
        return agregado;
    }

}
