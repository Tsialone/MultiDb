package lmd;
import fonction.Objectdao;

public class Mdp extends Objectdao {
    private String idmdp;

    public Mdp() {

    }

    public Mdp(String idmdp) {
        setIdmdp(idmdp);
    }

   

    public void setIdmdp(String idmdp) {
        this.idmdp = idmdp;
    }

}
