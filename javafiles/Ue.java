package lmd;
import java.util.List;
import fonction.Objectdao;

public class Ue extends Objectdao {
   private String idoption;
   private String codematiere;
   private String groupe;
   public Ue (String codematiere , String idoption , String groupe)
   {
    setCodematiere(codematiere);
    setGroupe(groupe);
    setIdoption(idoption);
   }
   public Ue ()
   {

   }
   
   public void setCodematiere(String codematiere) {
       this.codematiere = codematiere;
   }
   public void setGroupe(String groupe) {
       this.groupe = groupe;
   }
   public void setIdoption(String idoption) {
       this.idoption = idoption;
   }
   public String getCodematiere() {
       return codematiere;
   }public String getGroupe() {
       return groupe;
   }
   public String getIdoption() {
       return idoption;
   }
}
