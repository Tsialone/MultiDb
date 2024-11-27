package lmd;
import fonction.Objectdao;
public class Semestre_matiere  extends Objectdao{
    private String idsemestre;
    private String codematiere;
    public Semestre_matiere (String idsemestre ,  String codematiere)
    {
        setCodematiere(codematiere);
        setIdsemestre(idsemestre);
    }   
    public Semestre_matiere ()
    {
    }
    public void setCodematiere(String codematiere) {
        this.codematiere = codematiere;
    }
    public void setIdsemestre(String idsemestre) {
        this.idsemestre = idsemestre;
    }
    public String getCodematiere() {
        return codematiere;
    }
    public String getIdsemestre() {
        return idsemestre;
    }
}
