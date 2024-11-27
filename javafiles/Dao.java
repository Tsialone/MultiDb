package fonction;

import connection.*;
import exception.*;

import java.lang.reflect.Field;
import java.sql.SQLException;

public class Dao {

    protected String name;
    protected Myconnection database;
    protected String user;

    public Dao(String name, Class<?> bd) throws SQLException, Myexception , Exception {
        setName(name);
        connect(bd);
        // setUser(bd.getUsername());
    }

    public void setBd(Myconnection bd) {

        this.database = bd;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void connect(Class<?> bd) throws SQLException, Myexception , Exception {
        Field jdbcurlField = bd.getDeclaredField("jdbcurl");
        Field usernameField = bd.getDeclaredField("username");
        Field passwordField = bd.getDeclaredField("password");
        jdbcurlField.setAccessible(false);
        usernameField.setAccessible(false);
        passwordField.setAccessible(false);
        String jdbcurl =jdbcurlField.get(null).toString();
        String username =usernameField.get(null).toString();
        String password = passwordField.get(null).toString() ;

        // System.out.println(jdbcurl);
        // System.out.println(username);
        // System.out.println(password);


        if (database != null) {
            throw new Myexception("Une connection est deja en cours " + getUser() + " " + getBd());
        }
        database = new Myconnection(jdbcurl, username, password);
        setBd(database);
    }

    public void disconnect() throws SQLException {
        database.close();
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Myconnection getBd() {
        return database;
    }

    public String getUser() {
        return user;
    }

    public void executeQuery(String query) throws SQLException {
        this.database.execute(query);
        this.database.execute("commit");
    }

    public Table getTab(String query)  throws SQLException {
        Table resp = database.getTab(query);
        resp.setName (name);
        return resp;
    }

    public void afficheTab(Table relation)   throws SQLException , Myexception
     {
        database.afficheTab(relation);
    }
    public String [] getColumn (String query) throws SQLException
    {
        return database.getColumn(query);
    }
}
