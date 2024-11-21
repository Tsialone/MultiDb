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
    public Table getTab()  {
        Myexception.exceptions = exceptions;
        Class<?> classe = getClass();
        Class<?>[] lgbds = Myconnection.lgbd;
        for (Class<?> lgbd : lgbds) {
            Dao tempdao = null;
            try {
                tempdao = new Dao(classe.getSimpleName() + " connction", lgbd);
                String clasName = classe.getSimpleName().toLowerCase();
                String query = "SELECT * FROM " + clasName;
                Table temptab = tempdao.getTab(query);
                List<String> classAtt = new ArrayList<>(getAttribut());
                Fonction.toLowerCase(classAtt);
                List<String> tabAtt = Fonction.getColumn(temptab);
                Fonction.toLowerCase(tabAtt);
                // System.out.println(classAtt    + " " + tabAtt);
                List<String> intersection = new ArrayList<>(Fonction.intersection(classAtt, tabAtt));
                if (intersection.size() != 0) {
                    String select = selectList(intersection, clasName);
                    temptab = tempdao.getTab(select);
                    temptab.setName(clasName + " " + lgbd.getName());
                    return  temptab;
                    }
                    else 
                    {
                        throw new Exception("les attributs de la classe " + clasName + "  "  + classAtt + " ne correspond pas aux attributs de son table " + tabAtt);
                    }
                } 
                catch (Exception  e  )
                {
                    if (e instanceof SQLException) {
                        exceptions.add(new Exception(e.getMessage()  + " dans "  + lgbd.getName() ) );
                    }
                    else 
                    {
                        exceptions.add(e);
                    }
                }
                finally {
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
    public String selectList (List<String> attlist , String className)
    {
        String query = "SELECT ";
        for (String string : attlist) {
        }
        for (int i = 0; i < attlist.size(); i++) {
            
            if (i  == attlist.size() -1) {
                query+=attlist.get(i)+" ";
                
            }
            else 
            {
                query+=attlist.get(i)+", ";

            }
        }
        query+= " FROM "+className;
        return query;

    }
    public List<Exception> getExceptions() {
        return exceptions;
    }
}
