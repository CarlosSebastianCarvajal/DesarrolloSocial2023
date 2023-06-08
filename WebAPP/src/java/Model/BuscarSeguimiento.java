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
public class BuscarSeguimiento {
    private String fecha, sesion_numero, analisis, objetivo, descripcion, informacion;
    
    public BuscarSeguimiento(){
        
    }
    
    public  BuscarSeguimiento(String fecha, String sesion_numero, String analisis, String objetivo, 
            String descripcion, String informacion){
        this.fecha=fecha;
        this.sesion_numero=sesion_numero;
        this.analisis=analisis;
        this.objetivo=objetivo;
    }
    

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getSesion_numero() {
        return sesion_numero;
    }

    public void setSesion_numero(String sesion_numero) {
        this.sesion_numero = sesion_numero;
    }

    public String getAnalisis() {
        return analisis;
    }

    public void setAnalisis(String analisis) {
        this.analisis = analisis;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getInformacion() {
        return informacion;
    }

    public void setInformacion(String informacion) {
        this.informacion = informacion;
    }
}

