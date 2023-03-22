package Service;

import DBConnection.DBConnection;
import Model.Product;
import Model.Productx;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DataService {
    public List<Product> featureProduct(){
        List<Product> productlist = new ArrayList<>();
        String query = "select * from producttable";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            int count = 1;
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product pl = new Product();
                pl.setId(rs.getInt("id"));
                pl.setRcount(rs.getInt("rcount"));
                pl.setRpoint(rs.getInt("rpoint"));
                pl.setPrice(rs.getInt("price"));
                pl.setName(rs.getString("name"));
                pl.setDescription(rs.getString("description"));
                pl.setX(rs.getBoolean("x"));
                pl.setXl(rs.getBoolean("xl"));
                pl.setXxl(rs.getBoolean("xxl"));
                pl.setXxxl(rs.getBoolean("xxxl"));
                if(count < 6){
                    productlist.add(pl);
                    count++;
                }
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return productlist;
    }
    
    public List<Productx> getFeatureProduct(){
        List<Productx> productlist = new ArrayList<>();
        String query = "select * from productinfo inner join displayproduct on productinfo.id = displayproduct.id;";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            int count = 1;
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Productx pl = new Productx();
                //int
                pl.setId(rs.getInt("id"));
                pl.setRcount(rs.getInt("rcount"));
                pl.setRpoint(rs.getInt("rpoint"));
                pl.setPrice(rs.getInt("price"));
                pl.setDiscount(rs.getInt("discount"));
                //string
                pl.setName(rs.getString("name"));
                pl.setDescription(rs.getString("description"));
                pl.setPath(rs.getString("path"));
                pl.setSize(rs.getString("size"));
                pl.setClothid(rs.getString("clothid"));
                //boolean
                pl.setTypenumber(rs.getBoolean("typenumber"));
                
                System.out.println("====================================");
                System.out.println(pl.getId());
                System.out.println(pl.getRcount());
                System.out.println(pl.getRpoint());
                System.out.println(pl.getPrice());
                System.out.println(pl.getDiscount());
                System.out.println(pl.getName());
                System.out.println(pl.getDescription());
                System.out.println(pl.getPath());
                System.out.println(pl.getSize());
                System.out.println(pl.getClothid());
                System.out.println(pl.isTypenumber());
                if(count < 6){
                    productlist.add(pl);
                    count++;
                }
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return productlist;
    }
    public static void main(String[] args) {
        DataService ds = new DataService();
        List<Product> ps = ds.featureProduct();
        Productx p = new Productx();
        p.setName("Kritesh");
        System.out.println(ps.get(0).getName());
        System.out.println(ps.get(0).getId());
        System.out.println(ps.get(0).getRcount());
        System.out.println(ps.get(0).getPrice());
    }
}
/*

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer;

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

select * from productinfo full outer join displayproduct on productinfo.id = displayproduct.id order by productinfo.id;

select * from productinfo 
full outer join displayproduct
on productinfo.id = displayproduct.id;


SELECT *
FROM productinfo
INNER JOIN displayproduct
ON productinfo.id = displayproduct.id;

select * from productinfo inner join displayproduct on productinfo.id = displayproduct.id;


*/