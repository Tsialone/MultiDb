package lmd;
import fonction.Objectdao;

public class Annee  extends Objectdao {
   private String idannee;
    private  int nbrmois;
   private   double  ecolage;
        public Annee ()
        {

        }
        public Annee (String idannee , int nbrmois , double ecolage )
        {
            setIdannee(idannee);
            setNbrmois(nbrmois);
            setEcolage(ecolage);
        }
        public void setEcolage(double ecolage) {
            this.ecolage = ecolage;
        }
        public void setIdannee(String idannee) {
            this.idannee = idannee;
        }
        public void setNbrmois(int nbrmois) {
            this.nbrmois = nbrmois;
        }
        public double getEcolage() {
            return ecolage;
        }
        public int getNbrmois() {
            return nbrmois;
        }
        public String getIdannee() {
            return idannee;
        }
        
}
