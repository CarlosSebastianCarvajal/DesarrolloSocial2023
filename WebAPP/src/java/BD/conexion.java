package BD;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class conexion {
    ///*
    public static String url = "jdbc:postgresql://localhost:5432/desarrollo-social";
    public static String usuario = "postgres";
    public static String clave = "12345678"; 
   
    /*
    public static String url = "jdbc:postgresql://node112020-env-2477484.jelastic.saveincloud.net:13692/desarrollo-social";
    public static String usuario = "webadmin";
    public static String clave = "dyddcgiZgB";
    
    public static String url = "jdbc:postgresql://desarrollo-social.cezomi5rl4ix.us-east-1.rds.amazonaws.com:5432/desarrollosocial";
    public static String usuario = "postgres";
    public static String clave = "12345678"; 
    */
    PreparedStatement ps = null;
    Statement st;
    private Connection conecction;
    private static final long serialVersionUID = 1L;

    
    public conexion() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        }
    }
    public synchronized Connection getConecction() {
        try {
            if (conecction == null || conecction.isClosed()) {
                conecction = DriverManager.getConnection(url, usuario, clave);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return conecction;
    }

    public boolean isConected() {
        try {
            if (conecction == null) {
                return false;
            } else {
                return !conecction.isClosed();
            }
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
