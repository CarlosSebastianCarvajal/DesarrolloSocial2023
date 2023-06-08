/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.ConstructorGaleno;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author jean
 */
public class InsertAddGaleno {

    public static boolean agregarGaleno(ConstructorGaleno galeno) {
        boolean agregado = false;
        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO public.galeno(\n"
                        + "            galeno_tipo_dni, galeno_dni, galeno_apellido_paterno, \n"
                        + "            galeno_primer_nombre, galeno_telefono, galeno_direccion, created_at, \n"
                        + "            galeno_user, galeno_pass, galeno_apellido_materno, \n"
                        + "            galeno_segundo_nombre, galeno_provincia, galeno_canton, galeno_parroquia, \n"
                        + "            galeno_estado, galeno_departamento, galeno_correoelectronico)\n"
                        + "    VALUES ('"+galeno.getGaleno_tipo_dni()+"', '"+galeno.getGaleno_dni()+"', '"+galeno.getGaleno_apellido_paterno()+"', \n"
                        + "            '"+galeno.getGaleno_primer_nombre()+"', '"+galeno.getGaleno_telefono()+"', '"+galeno.getGaleno_direccion()+"', '"+galeno.getCreated_at()+"', \n"
                        + "            '"+galeno.getGaleno_user()+"', md5('"+galeno.getGaleno_pass()+"'), '"+galeno.getGaleno_apellido_materno()+"', \n"
                        + "            '"+galeno.getGaleno_segundo_nombre()+"', '"+galeno.getGaleno_provincia()+"', '"+galeno.getGaleno_canton()+"', '"+galeno.getGaleno_parroquia()+"', \n"
                        + "            '"+galeno.getGaleno_estado()+"', '"+galeno.getGaleno_departamento()+"', '"+galeno.getGaleno_correoelectronico()+"');");
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
