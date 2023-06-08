package Model;

public class Constructorrecetamedivca {

    private int galenoid, pacienteid;
    private String nombresmedico,fecha, id_recetamedica, medicamento, indicaciones;

    public Constructorrecetamedivca() {
    }

    public Constructorrecetamedivca(int galenoid, int pacienteid, String nombresmedico,String fecha, String medicamento, String indicaciones) {
        this.galenoid = galenoid;
        this.pacienteid = pacienteid;
        this.fecha = fecha;
        this.medicamento = medicamento;
        this.indicaciones = indicaciones;
        this.nombresmedico=nombresmedico;
    }

    public String getNombresmedico() {
        return nombresmedico;
    }

    public void setNombresmedico(String nombresmedico) {
        this.nombresmedico = nombresmedico;
    }

    public int getGalenoid() {
        return galenoid;
    }

    public void setGalenoid(int galenoid) {
        this.galenoid = galenoid;
    }

    public int getPacienteid() {
        return pacienteid;
    }

    public void setPacienteid(int pacienteid) {
        this.pacienteid = pacienteid;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getId_recetamedica() {
        return id_recetamedica;
    }

    public void setId_recetamedica(String id_recetamedica) {
        this.id_recetamedica = id_recetamedica;
    }

    public String getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(String medicamento) {
        this.medicamento = medicamento;
    }

    public String getIndicaciones() {
        return indicaciones;
    }

    public void setIndicaciones(String indicaciones) {
        this.indicaciones = indicaciones;
    }
 
}
