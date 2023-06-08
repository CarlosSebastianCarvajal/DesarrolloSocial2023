package DAO;
import BD.conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import Model.BuscadorPaciente;
import Model.Constructorrecetamedivca;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class Insertarecetamedica {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public BuscadorPaciente Listbuscarpaciente1(String cedula) {
        BuscadorPaciente newbuscar = new BuscadorPaciente();
        pst = null;
        rs = null;
        try {
            sql_command = "select paciente_id,CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre,' ',paciente_apellido_paterno, ' ',paciente_apellido_materno)as nombres\n"
                    + "  from paciente  where paciente_dni = '" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                // newbuscar.setPacienteid(String.valueOf(rs.getString("paciente_id")));
                newbuscar.setNombrescompleto(String.valueOf(rs.getString("nombres") + "-" + rs.getString("paciente_id")));
                System.out.println(String.valueOf(rs.getString("paciente_id") + rs.getString("nombres")));
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (cn.isConected()) {
                    cn.getConecction().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return newbuscar;
    }

    public Constructorrecetamedivca Listbuscarm(String user) {
        Constructorrecetamedivca newbuscarm = new Constructorrecetamedivca();
        pst = null;
        rs = null;
        try {
            sql_command = "select galeno_id,CONCAT(galeno_primer_nombre, ' ',galeno_segundo_nombre,' ',galeno_apellido_paterno, ' ', galeno_apellido_materno) as nombremedico \n"
                    + "  from galeno where galeno_user =  '" + user + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                //newbuscarm.setGalenoid(Integer.valueOf(rs.getString("galeno_id")));
                newbuscarm.setNombresmedico(String.valueOf(rs.getString("nombremedico") + "-" + rs.getString("galeno_id")));
                System.out.println(String.valueOf(rs.getString("nombremedico")));
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (cn.isConected()) {
                    cn.getConecction().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return newbuscarm;
    }

    public int agregarrecetamedicaencabezado(String galenoid, String pacienteid, String fecha) {
        int aux = -1;
        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from encabezado('" + galenoid + "','" + pacienteid + "','" + fecha + "')");
                rs.next();
                aux = rs.getInt(1);
                st.close();
            }
            c.isConected();
        } catch (SQLException e) {
            System.err.println(e);
            aux = -1;
        }
        return aux;
    }

    public void agregarrecetamedicadetalle(int idrecet, String medicamento, String indicaciones) {

        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                String  qu = "select * from detallereceta(" + idrecet + ",'" + medicamento + "','" + indicaciones + "')";
                System.err.println("Query: "+qu);
                st.executeUpdate("select * from detallereceta(" + idrecet + ",'" + medicamento + "','" + indicaciones + "')");
                st.close();
            }
            c.isConected();
        } catch (SQLException e) {
        }
    }
}
