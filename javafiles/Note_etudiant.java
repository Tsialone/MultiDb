package lmd;
import fonction.Objectdao;

public class Note_etudiant extends Objectdao {
    String idetudiant;
    String codematiere;
    double note;
    public Note_etudiant ()
    {

    }
    public Note_etudiant (String idetudiant  , String codematiere  , double note)
    {
        setCodematiere(codematiere);
        setIdetudiant(idetudiant);
        setNote(note);
    }
    public String getCodematiere() {
        return codematiere;
    }
    public double getNote() {
        return note;
    }
    public String getIdetudiant() {
        return idetudiant;
    }
    
    
    public void setCodematiere(String codematiere) {
        this.codematiere = codematiere;
    }
    public void setIdetudiant(String idetudiant) {
        this.idetudiant = idetudiant;
    }
    public void setNote(double note) {
        this.note = note;
    }
    
}
