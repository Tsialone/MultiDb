package fonction;

import connection.*;
import lmd.*;
import exception.*;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

import javax.management.relation.Relation;

public class Fonction {
    public static Dao dao;

    public Fonction(Dao dao) {
        setDao(dao);
    }

    public Fonction() {

    }

    public static void disconnect() throws SQLException {
        Fonction.dao.disconnect();
    }

    public static void setDao(Dao dao) {
        Fonction.dao = dao;
    }

    public static void toLowerCase(List<String> list) {

        for (int i = 0; i < list.size(); i++) {
            list.set(i, list.get(i).toLowerCase());
        }
    }

    public static List<String> intersection(List<String> l1, List<String> l2) {
        List<String> A = new ArrayList<>(l1);
        List<String> B = new ArrayList<>(l2);
        Fonction.toLowerCase(A);
        Fonction.toLowerCase(B);
        List<String> intersection = new ArrayList<>(A);
        intersection.retainAll(B);
        intersection = intersection.stream().distinct().toList();
        return intersection;
    }

    public static List<String> getColumn(Table relation) {
        Object[][] tab = relation.getValeurs();
        List<String> resp = new ArrayList<>();
        for (int i = 0; i < tab[0].length; i++) {
            resp.add(tab[0][i].toString());
        }
        return resp;
    }

    public static Table searcheClass(String className) throws Exception {
        try {
            Class<?> class1 = Class.forName("lmd." + className);
            Constructor<?> constructor = class1.getConstructor();
            Object instance = constructor.newInstance();
            Method getTabMethod = class1.getMethod("getTab");
            Object result = getTabMethod.invoke(instance);
            Table table = (Table) result;
            return table;
        } catch (Exception e) {
            Myexception.exceptions.add(e);
        }
        return null;
    }

    public static String tableHtml(String classname) throws Exception {
        Table table = searcheClass(classname);
        String html = "";
        if (table != null) {
            html += "<p>" + Myexception.exceptions + "</p>";
            Object[][] valeurs = table.getValeurs();
            html = "<h2>" + table.getName() + "</h1><table>";
            for (int i = 0; i < valeurs.length; i++) {
                html += "<tr>";
                for (int j = 0; j < valeurs[i].length; j++) {
                    html += "<td>" + valeurs[i][j] + "</td>";
                }
                html += "</tr>";
            }
            html += "</table>";
        }
        return html;
    }

    public static String log() {
        String html = "";
        for (Exception exception : Myexception.exceptions) {
            html += "<p>" + exception + "</p>";
        }
        return html;
    }

}
