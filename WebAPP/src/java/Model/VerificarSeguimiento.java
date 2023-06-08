/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Miguel
 */
public class VerificarSeguimiento {
    private String cedula, nombres, apellidos, sesion_numero;
    
    public VerificarSeguimiento(){
        
    }
    
    public VerificarSeguimiento(String cedula, String nombres, String apellidos, String sesion_numero){
        this.cedula=cedula;
        this.nombres=nombres;
        this.apellidos=apellidos;
        this.sesion_numero=sesion_numero;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getSesion_numero() {
        return sesion_numero;
    }

    public void setSesion_numero(String sesion_numero) {
        this.sesion_numero = sesion_numero;
    }
    
    
    
}
