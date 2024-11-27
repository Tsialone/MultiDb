package fonction;
public class Attribut {
   private  String nom;
   private  Class<?> type;

    public Attribut (String nom , Class<?> type)
    {
        setNom(nom);
        setType(type);
    }
    public String getNom() {
        return nom;
    }
    public Class<?> getType() {
        return type;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public void setType(Class<?> type) {
        this.type = type;
    }
}
