package fonction;
public class Table  extends Objectdao{
    String name;
    Object[][] valeurs;

    public Table(String name)
    {
        setName(name);
    }

    public void setName(String name) {
        this.name = name;
    }
    

    public void setValeurs(Object[][] valeurs) {
        this.valeurs = valeurs;
    }
    public void afficheTab() {
        Object [][] tab= getValeurs();
        int column = tab[0].length;
        for (int i = 0; i < tab.length; i++) {
            for (int j = 0; j < column; j++) {
                System.out.printf("%-30s", tab[i][j]);
            }
            System.out.println();
        }
    }

    public Object[][] getValeurs() {
        return valeurs;
    }

    public String getName() {
        return name;
    }

}
