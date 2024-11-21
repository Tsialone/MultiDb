package lmd;
import fonction.Objectdao;
public class Options_matieres  extends Objectdao {
    private String idoption;
    private String codematiere;
    private String idsemestre;
    public Options_matieres(String idoption ,  String codematiere , String idsemestre )
    {
        setCodematiere(codematiere);
        setIdsemestre(idsemestre);
    }
    public Options_matieres()
    {

    }
    public void setCodematiere(String codematiere) {
        this.codematiere = codematiere;
    }
   
    public void setIdoption(String idoption) {
        this.idoption = idoption;
    }
    public void setIdsemestre(String idsemestre) {
        this.idsemestre = idsemestre;
    }
    public String getCodematiere() {
        return codematiere;
    }
    public String getIdoption() {
        return idoption;
    }
    public String getIdsemestre() {
        return idsemestre;
    }

}
