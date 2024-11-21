package lmd;

import fonction.Objectdao;

public class Options extends Objectdao {
   private    String idoption;

    public Options(String idoption) {
        setIdoption(idoption);
    }
    public Options() {
    }
    public void setIdoption(String idoption) {
        this.idoption = idoption;
    }
    public String getIdoption() {
        return idoption;
    }

}
