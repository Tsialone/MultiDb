package fonction;

import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.management.relation.Relation;

import connection.Myconnection;
import exception.Myexception;
import fonction.Dao;
import fonction.Fonction;

public class Objectdao {
    List<Exception> exceptions = new ArrayList<>();

    public void insert(Object[] objects) {
        Myexception.exceptions = exceptions;
        Class<?> classe = getClass();
        Class<?>[] lgbds = Myconnection.lgbd;
        for (Class<?> lgbd : lgbds) {
            Dao tempdao = null;
            try {
                tempdao = new Dao(classe.getSimpleName() + " connection", lgbd);
                String clasName = classe.getSimpleName().toLowerCase();
                String query = "SELECT * FROM " + clasName;
                tempdao.executeQuery(query);
                List<String> classAtt = new ArrayList<>(getAttribut());
                String insertion = insertion(clasName, classAtt, objects);
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

    public String insertion(String tablename, List<String> att, Object[] val ) throws Exception, SQLException {
        if (att.size() != val.length) {
            throw new Exception(" erreur d'insertion pour " + tablename + " " + att + "!=" + Arrays.asList(val));
        }
        String querry = "INSERT INTO " + tablename + " ( ";
        for (int i = 0; i < att.size(); i++) {
            if (i == (att.size() - 1)) {

                querry += att.get(i) + " ";
            } else {
                querry += att.get(i) + ", ";

            }
        }
        querry += " ) VALUES ( ";
        for (int i = 0; i < val.length; i++) {
            if (i == (val.length - 1)) {

                querry += val[i] + " ";
            } else {
                querry += val[i] + ", ";

            }
        }
        querry += " )";
        // dao.executeQuery("COMMIT");
        return querry;
    }

    public Table getTab() {
        Myexception.exceptions = exceptions;
        Class<?> classe = getClass();
        Class<?>[] lgbds = Myconnection.lgbd;
        for (Class<?> lgbd : lgbds) {
            Dao tempdao = null;
            try {
                tempdao = new Dao(classe.getSimpleName() + " connection", lgbd);
                String clasName = classe.getSimpleName().toLowerCase();
                String query = "SELECT * FROM " + clasName;
                Table temptab = tempdao.getTab(query);
                List<String> classAtt = new ArrayList<>(getAttribut());
                List<String> tabAtt = Fonction.getColumn(temptab);
                List<String> intersection = new ArrayList<>(Fonction.intersection(classAtt, tabAtt));
                if (intersection.size() != 0) {
                    String select = selectList(intersection, clasName);
                    temptab = tempdao.getTab(select);
                    temptab.setName(clasName + " " + lgbd.getName());
                    temptab.setOwner(classe);
                    return temptab;
                } else {
                    throw new Exception("les attributs de la classe " + clasName + "  " + classAtt
                            + " ne correspond pas aux attributs de son table " + tabAtt);
                }
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
        return null;
    }

    public List<String> getAttribut() {
        Class<?> classe = getClass();
        List<String> attributs = new ArrayList<>();
        Field[] attribut = classe.getDeclaredFields();
        for (Field field : attribut) {
            attributs.add(field.getName());
        }
        return attributs;
    }

    public String selectList(List<String> attlist, String className) {
        String query = "SELECT ";
        for (String string : attlist) {
        }
        for (int i = 0; i < attlist.size(); i++) {

            if (i == attlist.size() - 1) {
                query += attlist.get(i) + " ";

            } else {
                query += attlist.get(i) + ", ";

            }
        }
        query += " FROM " + className;
        return query;

    }

    public List<Exception> getExceptions() {
        return exceptions;
    }
}
