package aff;

import exception.*;
import fonction.*;
import lmd.*;
import connection.*;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.management.relation.Relation;

public class Main {
    public static void main(String[] args) throws Exception, SQLException {

        Table payement = Fonction.searcheClass("Payement");
        payement.afficheTab();
        // System.out.println(Myexception.exceptions);

    }
}