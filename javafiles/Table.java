package fonction;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.*;

import connection.Myconnection;
import exception.Myexception;

public class Table extends Objectdao {
    Class<?> owner;
    String name;
    Attribut attributs[] = new Attribut[0];
    Object[][] valeurs;
    HashMap<Class<?>, Class<?>> mapClass = new HashMap<>();

    public Table(String name) {
        setName(name);
    }

    public void setOwner(Class<?> owner) {
        this.owner = owner;
    }

    public Class<?> getOwner() {
        return owner;
    }

    public void insert(Object[] objects) {
        Myexception.exceptions = exceptions;
        Class<?> classe = getOwner();
        Class<?>[] lgbds = Myconnection.lgbd;
        for (Class<?> lgbd : lgbds) {
            Dao tempdao = null;
            try {
                tempdao = new Dao(classe.getSimpleName() + " connection", lgbd);
                String clasName = classe.getSimpleName().toLowerCase();
                String query = "SELECT * FROM " + clasName;
                tempdao.executeQuery(query);
                Constructor<?> constructor = classe.getConstructor();
                Object instance = constructor.newInstance();
                Objectdao object = (Objectdao) instance;
                List<String> classAtt = new ArrayList<>( object.getAttribut());
                String insertion = insertion(clasName, classAtt, objects);
                System.out.println(insertion);
                tempdao.executeQuery(insertion);
                
            } catch (Exception e) {
                if (e instanceof SQLException) {
                    exceptions.add(new Exception(e.getMessage() + " dans " + lgbd.getName()));
                } else {
                    exceptions.add(e);
                }
            } finally {
                try {
                    tempdao.disconnect();
                } catch (Exception e) {
                }
            }
        }
    }

    public void maping() {
        mapClass.put(BigDecimal.class, Double.class);
        mapClass.put(BigInteger.class, Integer.class);

    }

    public void initilizeAtt() {
        maping();
        Object[][] valeurs = getValeurs();
        for (int i = 0; i < valeurs[0].length; i++) {
            Class<?> type = null;
            if (valeurs.length > 1) {
                type = valeurs[1][i].getClass();
                if (mapClass.get(type) != null) {
                    type = mapClass.get(type);
                }
            }
            pushAttribut(new Attribut(valeurs[0][i].toString(), type));
        }
    }

    public double sum(List<Object> ob) {
        if (ob == null || ob.isEmpty()) {
            return 0;
        }
        Double sum = 0.0;
        for (Object object : ob) {
            sum += Double.parseDouble(object.toString());
        }
        return sum;
    }

    public void pushAttribut(Attribut att) {
        List<Attribut> attributs = new ArrayList<>(Arrays.asList(getAttributs()));
        attributs.add(att);
        setAttributs(attributs.toArray(new Attribut[0]));
    }

    public void setAttributs(Attribut[] attributs) {
        this.attributs = attributs;
    }

    public Attribut[] getAttributs() {
        return attributs;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setValeurs(Object[][] valeurs) {
        this.valeurs = valeurs;
    }

    public void afficheTab() {
        Object[][] tab = getValeurs();
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
