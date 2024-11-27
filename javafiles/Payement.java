package lmd;
import java.time.LocalDate;

import fonction.Objectdao;

public class Payement extends Objectdao {
    private String idetudiant;
    private String idannee;
    private LocalDate datepayement;

    public Payement() {

    }

    public Payement( String idetudiant, String idannee, LocalDate datepayement) {

        setDatepayement(datepayement);
        setIdannee(idannee);
        setIdetudiant(idetudiant);
    }

    public LocalDate getDatepayement() {
        return datepayement;
    }

    public String getIdannee() {
        return idannee;
    }

    public String getIdetudiant() {
        return idetudiant;
    }

    

    public void setDatepayement(LocalDate datepayement) {
        this.datepayement = datepayement;
    }

    public void setIdannee(String idannee) {
        this.idannee = idannee;
    }

   

    public void setIdetudiant(String idetudiant) {
        this.idetudiant = idetudiant;
    }
}
