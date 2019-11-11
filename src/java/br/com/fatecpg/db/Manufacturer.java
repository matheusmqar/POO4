
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
    private String city;
    private String state;


    public Manufacturer(int id, String name, String email, String city, String state) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.state = state;
        this.city = city; 
    }

       public static ArrayList<Manufacturer> getList() throws Exception {
       ArrayList<Manufacturer> list = new ArrayList<>();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String pass = "app";
        Connection con = DriverManager.getConnection(url, user, pass);
        Statement stmt = con.createStatement();
        String sql = "SELECT MANUFACTURER_ID, NAME, EMAIL, STATE, CITY FROM MANUFACTURER";
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()){
            Manufacturer c = new Manufacturer (rs.getInt("MANUFACTURER_ID"), rs.getString("NAME"),rs.getString("EMAIL"),rs.getString("STATE"), rs.getString("CITY"));
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
    public String getState() {
        return state;
    }
    
    public void setState(String state) {
        this.state = state;
    }
    
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    
    
}
