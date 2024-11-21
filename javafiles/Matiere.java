package lmd;

import java.lang.module.Configuration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import fonction.Objectdao;
public class Matiere extends Objectdao {
    private String codematiere;
    private String nom;
    private int credit;
    private Configuration configuration;

    public Matiere(String codematiere, String nom, int credit) {
        setNom(nom);
        setCodematiere(codematiere);
        setCredit(credit);
    }

    public Matiere() {
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public void setCodematiere(String codematiere) {
        this.codematiere = codematiere;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

  public void setConfiguration(Configuration configuration) {
      this.configuration = configuration;
  }

    public String getCodematiere() {
        return codematiere;
    }

    public int getCredit() {
        return credit;
    }

    public String getNom() {
        return nom;
    }

public Configuration getConfiguration() {
    return configuration;
}
}
