
package br.com.fatecpg.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;


public class Order {
    private int num;
    private int quantity;
    private double shippingCost;
    private Date salesDate;
    private Date shippingDate;
    private String freightCompany;

     public static ArrayList<Order> getList(int id) throws Exception {
       ArrayList<Order> list = new ArrayList<>();
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/sample";
        String user = "app";
        String pass = "app";
        Connection con = DriverManager.getConnection(url, user, pass);
        Statement stmt = con.createStatement();
        String sql = "SELECT * FROM PURCHASE_ORDER WHERE CUSTOMER_ID ="+ id;
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()){
            Order o = new Order (rs.getInt("ORDER_NUM"), rs.getInt("QUANTITY"),rs.getDouble("SHIPPING_COST"),rs.getDate("SALES_DATE"), rs.getDate("SHIPPING_DATE"),rs.getString("FREIGHT_COMPANY"));
            list.add(o);
        }
        return list;
    }
    
    public Order(int num, int quantity, double shippingCost, Date salesDate, Date shippingDate, String freightCompany) {
        this.num = num;
        this.quantity = quantity;
        this.shippingCost = shippingCost;
        this.salesDate = salesDate;
        this.shippingDate = shippingDate;
        this.freightCompany = freightCompany;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(double shippingCost) {
        this.shippingCost = shippingCost;
    }

    public Date getSalesDate() {
        return salesDate;
    }

    public void setSalesDate(Date salesDate) {
        this.salesDate = salesDate;
    }

    public Date getShippingDate() {
        return shippingDate;
    }

    public void setShippingDate(Date shippingDate) {
        this.shippingDate = shippingDate;
    }

    public String getFreightCompany() {
        return freightCompany;
    }

    public void setFreightCompany(String freightCompany) {
        this.freightCompany = freightCompany;
    }
    
     
}
