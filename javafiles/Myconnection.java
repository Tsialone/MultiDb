package connection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


import fonction.*;

public class Myconnection {
    private Connection connection;
    private Statement statement;
    public static Class<?> lgbd[] = { Oracle.class, Mysql.class };

    public Myconnection(String jdbcurl, String username, String password) throws SQLException {
        this.connection = DriverManager.getConnection(jdbcurl, username, password);
        this.connection.setAutoCommit(false);
        this.statement = connection.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_UPDATABLE);
    }

    public void execute(String query) throws SQLException {
        connection.createStatement().executeQuery(query);
    }

    public Table getTab(String query) throws SQLException {
        String[] colString = getColumn(query);
        ResultSet resultset = statement.executeQuery(query);
        ResultSetMetaData columndata = resultset.getMetaData();
        int column = columndata.getColumnCount();
        List<Object[]> rows = new ArrayList<>();
        rows.add(colString);
        Table relation  = new Table ("");
        while (resultset.next()) {
            Object[] row = new Object[column];
            for (int j = 1; j <= column; j++) {
                row[j - 1] = resultset.getObject(j);
            }
            rows.add(row);
        }
        Object[][] tab = new Object[rows.size()][column];
        relation.setValeurs (rows.toArray(tab));
        return relation;
    }

    public String[] getColumn(String query) throws SQLException {
        ResultSet resultset = statement.executeQuery(query);
        ResultSetMetaData columndata = resultset.getMetaData();
        int column = columndata.getColumnCount();

        String[] tab = new String[column];
        for (int i = 1; i <= column; i++) {
            tab[i - 1] = columndata.getColumnLabel(i);
        }
        return tab;
    }

    public void afficheTab(Table  relation) {
        Object [][] tab= relation.getValeurs();
        int column = tab[0].length;
        for (int i = 0; i < tab.length; i++) {
            for (int j = 0; j < column; j++) {
                System.out.printf("%-30s", tab[i][j]);
            }
            System.out.println();
        }
    }


    public void close() throws SQLException {
        if (!statement.isClosed()) {
            statement.close();
        }
        if (!connection.isClosed()) {
            connection.close();

        }
    }

    public Statement getStatement() {
        return statement;
    }

}
