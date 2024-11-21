package lmd;

import fonction.Objectdao;

public class Semestre  extends Objectdao{
    String idSemestre;
   
   public Semestre (String idSemestre)
   {
    setIdSemestre(idSemestre);
   }
   public Semestre ()
   {

   }
   public void setIdSemestre(String idSemestre) {
       this.idSemestre = idSemestre;
   }
   public String getIdSemestre() {
       return idSemestre;
   }
   
}
