package lmd;
import fonction.Objectdao;

public class Semestre_etudiant extends Objectdao {
    private String idetudiant;
    private String idsemestre;
    private String idpromotion;

    public Semestre_etudiant ()
    {

    }
    public Semestre_etudiant (String idetudiant  , String idsemestre , String idpromotion)
    {

        setIdetudiant(idetudiant);
        setIdsemestre(idsemestre);
        setIdpromotion(idpromotion);
    }

    public void setIdetudiant(String idetudiant) {
        this.idetudiant = idetudiant;
    }
    public void setIdpromotion(String idpromotion) {
        this.idpromotion = idpromotion;
    }
    public void setIdsemestre(String idsemestre) {
        this.idsemestre = idsemestre;
    }
    public String getIdetudiant() {
        return idetudiant;
    }
    public String getIdsemestre() {
        return idsemestre;
    }
    public String getIdpromotion() {
        return idpromotion;
    }

}
