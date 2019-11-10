/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Roberta
 */
public class Products {
    
    private int id;
    private String codigo;
    private double valor;
    private int hand;
    private double markup;
    private boolean available;
    private String description;

    public Products(int id, String codigo, double valor, int hand, double markup, boolean available, String description) {
        this.id = id;
        this.codigo = codigo;
        this.valor = valor;
        this.hand = hand;
        this.markup = markup;
        this.available = available;
        this.description = description;
    }

    public Products() {
        
    }
    
    public static ArrayList<Products> getList(int id) throws Exception {
       ArrayList<Products> list = new ArrayList<>();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String pass = "app";
        Connection con = DriverManager.getConnection(url, user, pass);
        Statement stmt = con.createStatement();
        String sql = "Select * from PRODUCT where MANUFACTURER_ID =" + id;
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()){
            Products product = new Products (rs.getInt("PRODUCT_ID"),rs.getString("PRODUCT_CODE"), rs.getDouble("PURCHASE_COST"), rs.getInt("QUANTITY_ON_HAND"), rs.getDouble("MARKUP"), rs.getBoolean("AVAILABLE"), rs.getString("DESCRIPTION")   );
            list.add(product);
        }
        return list;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getHand() {
        return hand;
    }

    public void setHand(int hand) {
        this.hand = hand;
    }

    public double getMarkup() {
        return markup;
    }

    public void setMarkup(double markup) {
        this.markup = markup;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
    
    
    
}
