package lmd;

import java.util.*;
import fonction.*;

public class Etudiant   extends Objectdao{
    private String idetudiant;
  private  String nom;

    public Etudiant(String idetudiant, String nom) {
        setIdetudiant(idetudiant);
        setNom(nom);
    }
    public Etudiant ()
    {
        
    }
   public void setIdetudiant(String idetudiant) {
       this.idetudiant = idetudiant;
   }
   public void setNom(String nom) {
       this.nom = nom;
   }
  public String getIdetudiant() {
      return idetudiant;
  }
   public String getNom() {
       return nom;
   }

    // //valeur valeurs des cles de chaque attribut
    // public HashMap<String , String> getMap ()
    // {
    //     HashMap<String , String> hashMap = new HashMap<>();
    //     hashMap.put("etu", "idEtudiant");
    //     hashMap.put("name", "nom");
    //     return hashMap;
    // }
   
    
}
