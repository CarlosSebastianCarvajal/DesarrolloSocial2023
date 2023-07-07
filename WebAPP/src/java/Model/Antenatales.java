/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sebastian Carvajal
 */
public class Antenatales {
    
    private String ca_id,
                ghcp_id,
                ca_fecha,
                ca_edad_ges,
                ca_peso,
                ca_pa,
                ca_altura_uterina,
                ca_presentacion,
                ca_FCP,
                ca_mov_fetales,
                ca_proteinuria,
                ca_signos_notas,
                ca_iniciales_tecnico,
                ca_prox_cita;

    public Antenatales() {
    }

    public Antenatales(String ca_id, String ghcp_id, String ca_fecha, String ca_edad_ges, String ca_peso, String ca_pa, String ca_altura_uterina, String ca_presentacion, String ca_FCP, String ca_mov_fetales, String ca_proteinuria, String ca_signos_notas, String ca_iniciales_tecnico, String ca_prox_cita) {
        this.ca_id = ca_id;
        this.ghcp_id = ghcp_id;
        this.ca_fecha = ca_fecha;
        this.ca_edad_ges = ca_edad_ges;
        this.ca_peso = ca_peso;
        this.ca_pa = ca_pa;
        this.ca_altura_uterina = ca_altura_uterina;
        this.ca_presentacion = ca_presentacion;
        this.ca_FCP = ca_FCP;
        this.ca_mov_fetales = ca_mov_fetales;
        this.ca_proteinuria = ca_proteinuria;
        this.ca_signos_notas = ca_signos_notas;
        this.ca_iniciales_tecnico = ca_iniciales_tecnico;
        this.ca_prox_cita = ca_prox_cita;
    }

    public String getCa_id() {
        return ca_id;
    }

    public void setCa_id(String ca_id) {
        this.ca_id = ca_id;
    }

    public String getGhcp_id() {
        return ghcp_id;
    }

    public void setGhcp_id(String ghcp_id) {
        this.ghcp_id = ghcp_id;
    }

    public String getCa_fecha() {
        return ca_fecha;
    }

    public void setCa_fecha(String ca_fecha) {
        this.ca_fecha = ca_fecha;
    }

    public String getCa_edad_ges() {
        return ca_edad_ges;
    }

    public void setCa_edad_ges(String ca_edad_ges) {
        this.ca_edad_ges = ca_edad_ges;
    }

    public String getCa_peso() {
        return ca_peso;
    }

    public void setCa_peso(String ca_peso) {
        this.ca_peso = ca_peso;
    }

    public String getCa_pa() {
        return ca_pa;
    }

    public void setCa_pa(String ca_pa) {
        this.ca_pa = ca_pa;
    }

    public String getCa_altura_uterina() {
        return ca_altura_uterina;
    }

    public void setCa_altura_uterina(String ca_altura_uterina) {
        this.ca_altura_uterina = ca_altura_uterina;
    }

    public String getCa_presentacion() {
        return ca_presentacion;
    }

    public void setCa_presentacion(String ca_presentacion) {
        this.ca_presentacion = ca_presentacion;
    }

    public String getCa_FCP() {
        return ca_FCP;
    }

    public void setCa_FCP(String ca_FCP) {
        this.ca_FCP = ca_FCP;
    }

    public String getCa_mov_fetales() {
        return ca_mov_fetales;
    }

    public void setCa_mov_fetales(String ca_mov_fetales) {
        this.ca_mov_fetales = ca_mov_fetales;
    }

    public String getCa_proteinuria() {
        return ca_proteinuria;
    }

    public void setCa_proteinuria(String ca_proteinuria) {
        this.ca_proteinuria = ca_proteinuria;
    }

    public String getCa_signos_notas() {
        return ca_signos_notas;
    }

    public void setCa_signos_notas(String ca_signos_notas) {
        this.ca_signos_notas = ca_signos_notas;
    }

    public String getCa_iniciales_tecnico() {
        return ca_iniciales_tecnico;
    }

    public void setCa_iniciales_tecnico(String ca_iniciales_tecnico) {
        this.ca_iniciales_tecnico = ca_iniciales_tecnico;
    }

    public String getCa_prox_cita() {
        return ca_prox_cita;
    }

    public void setCa_prox_cita(String ca_prox_cita) {
        this.ca_prox_cita = ca_prox_cita;
    }
    
    
    
}
