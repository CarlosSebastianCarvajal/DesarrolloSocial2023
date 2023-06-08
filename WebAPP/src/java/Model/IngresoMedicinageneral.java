package Model;

public class IngresoMedicinageneral {

    private int paciente_id;
    private String estatura, peso, tiposangre, pc, pt, pa, antecedentesalergicos, antecedentesfamiliares, antecedentesquirugicos, antecedentespersonales, fechaconsulta, motivoconsulta, enfermedad, diagnostico, cargararchivo;

    public IngresoMedicinageneral() {
    }

    public IngresoMedicinageneral(int paciente_id, String estatura, String peso, String tiposangre, String pc, String pt, String pa, String antecedentesalergicos, String antecedentesfamiliares, String antecedentesquirugicos, String antecedentespersonales, String fechaconsulta, String motivoconsulta, String enfermedad, String diagnostico, String cargararchivo) {
        this.paciente_id=paciente_id;
        this.estatura = estatura;
        this.peso = peso;
        this.pc = pc;
        this.pt = pt;
        this.pa = pa;
        this.tiposangre = tiposangre;
        this.antecedentesalergicos = antecedentesalergicos;
        this.antecedentesfamiliares = antecedentesfamiliares;
        this.antecedentesquirugicos = antecedentesquirugicos;
        this.antecedentespersonales = antecedentespersonales;
        this.fechaconsulta = fechaconsulta;
        this.motivoconsulta = motivoconsulta;
        this.enfermedad = enfermedad;
        this.diagnostico = diagnostico;
        this.cargararchivo = cargararchivo;
    }

    public int getPaciente_id() {
        return paciente_id;
    }

    public void setPaciente_id(int paciente_id) {
        this.paciente_id = paciente_id;
    }

    public String getEstatura() {
        return estatura;
    }

    public void setEstatura(String estatura) {
        this.estatura = estatura;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getTiposangre() {
        return tiposangre;
    }

    public void setTiposangre(String tiposangre) {
        this.tiposangre = tiposangre;
    }

    public String getPc() {
        return pc;
    }

    public void setPc(String pc) {
        this.pc = pc;
    }

    public String getPt() {
        return pt;
    }

    public void setPt(String pt) {
        this.pt = pt;
    }

    public String getPa() {
        return pa;
    }

    public void setPa(String pa) {
        this.pa = pa;
    }

    public String getAntecedentesalergicos() {
        return antecedentesalergicos;
    }

    public void setAntecedentesalergicos(String antecedentesalergicos) {
        this.antecedentesalergicos = antecedentesalergicos;
    }

    public String getAntecedentesfamiliares() {
        return antecedentesfamiliares;
    }

    public void setAntecedentesfamiliares(String antecedentesfamiliares) {
        this.antecedentesfamiliares = antecedentesfamiliares;
    }

    public String getAntecedentesquirugicos() {
        return antecedentesquirugicos;
    }

    public void setAntecedentesquirugicos(String antecedentesquirugicos) {
        this.antecedentesquirugicos = antecedentesquirugicos;
    }

    public String getAntecedentespersonales() {
        return antecedentespersonales;
    }

    public void setAntecedentespersonales(String antecedentespersonales) {
        this.antecedentespersonales = antecedentespersonales;
    }

    public String getFechaconsulta() {
        return fechaconsulta;
    }

    public void setFechaconsulta(String fechaconsulta) {
        this.fechaconsulta = fechaconsulta;
    }

    public String getMotivoconsulta() {
        return motivoconsulta;
    }

    public void setMotivoconsulta(String motivoconsulta) {
        this.motivoconsulta = motivoconsulta;
    }

    public String getEnfermedad() {
        return enfermedad;
    }

    public void setEnfermedad(String enfermedad) {
        this.enfermedad = enfermedad;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public String getCargararchivo() {
        return cargararchivo;
    }

    public void setCargararchivo(String cargararchivo) {
        this.cargararchivo = cargararchivo;
    }
}
