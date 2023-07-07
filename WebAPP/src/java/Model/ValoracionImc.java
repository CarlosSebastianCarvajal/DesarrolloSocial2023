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
public class ValoracionImc {
    private String imc_id,
                ghcp_id,
                imc_semana,
                imc_imc,
                imc_ganancia;

    public ValoracionImc() {
    }

    public ValoracionImc(String imc_id, String ghcp_id, String imc_semana, String imc_imc, String imc_ganancia) {
        this.imc_id = imc_id;
        this.ghcp_id = ghcp_id;
        this.imc_semana = imc_semana;
        this.imc_imc = imc_imc;
        this.imc_ganancia = imc_ganancia;
    }

    public String getImc_id() {
        return imc_id;
    }

    public void setImc_id(String imc_id) {
        this.imc_id = imc_id;
    }

    public String getGhcp_id() {
        return ghcp_id;
    }

    public void setGhcp_id(String ghcp_id) {
        this.ghcp_id = ghcp_id;
    }

    public String getImc_semana() {
        return imc_semana;
    }

    public void setImc_semana(String imc_semana) {
        this.imc_semana = imc_semana;
    }

    public String getImc_imc() {
        return imc_imc;
    }

    public void setImc_imc(String imc_imc) {
        this.imc_imc = imc_imc;
    }

    public String getImc_ganancia() {
        return imc_ganancia;
    }

    public void setImc_ganancia(String imc_ganancia) {
        this.imc_ganancia = imc_ganancia;
    }
    
    
    
}
