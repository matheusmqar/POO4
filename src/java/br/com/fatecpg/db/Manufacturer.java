
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Manufacturer {
    private int id;
    private String name;
    private String email;


    public Manufacturer(int id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

       public static ArrayList<Manufacturer> getList() throws Exception {
        ArrayList<Manufacturer> list = new ArrayList<>();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String pass = "app";
        Connection con = DriverManager.getConnection(url, user, pass);
        Statement stmt = con.createStatement();
        String sql = "SELECT MANUFACTURER_ID, NAME, EMAIL FROM MANUFACTURER";
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()){
            Manufacturer c = new Manufacturer (rs.getInt("MANUFACTURER_ID"), rs.getString("NAME"),rs.getString("EMAIL"));
            list.add(c);
        }
        return list;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
