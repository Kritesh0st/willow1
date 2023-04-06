package Service;

import DBConnection.DBConnection;
import Model.Product;
import Model.Productx;
import Model.SizeCount;
import Model.User;
import Support.index;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DataService {
    public List<Productx> getThreeTypeProduct(String typequery){
        List<Productx> productlist = new ArrayList<>();
        String query = "select * from displayproduct";
        String queryForFeature = "select * from displayproduct as A inner join productinfo as B on A.clothcode = B.id where A.displayto = 'feature'";
        String queryForPopular = "select * from displayproduct as A inner join productinfo as B on A.clothcode = B.id where A.displayto = 'popular'";
        String queryForNewproduct = "select * from displayproduct as A inner join productinfo as B on A.clothcode = B.id where A.displayto = 'newproduct'";
        if(typequery.equals("feature")){query = queryForFeature;}
        else if(typequery.equals("popular")){query = queryForPopular;}
        else if(typequery.equals("newproduct")){query = queryForPopular;}
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
                pl.setDate(rs.getString("date"));
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
                if(count < 6){productlist.add(pl);count++;}
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return productlist;
    }
    public void insertUser(User usr){
        String query = "insert into userinfo(name,email,address,dob,wishlist,cart,mostvisited,password,number,maxspent,primecount) values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ps.setString(1,usr.getName());
            ps.setString(2,usr.getEmail());
            ps.setString(3,usr.getAddress());
            ps.setString(4,usr.getDob());
            ps.setString(5,usr.getWishlist());
            ps.setString(6,usr.getCart());
            ps.setString(7,usr.getMostvisited());
            ps.setString(8,usr.getPassword());
            ps.setString(9,usr.getPhnumber());
            ps.setInt(10,usr.getMaxspent());
            ps.setInt(11,usr.getPrimecount());
            
            ps.execute();
        }
        catch(SQLException e){
            e.printStackTrace();
            System.out.println("Insert User Error : "+e);
        }
    }
    public User getSingleUserBy(String email, String password){
        User us = null;
        String query = "select * from userinfo where email=? and password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                us = new User();
                us.setId(rs.getInt("id"));
                us.setName(rs.getString("name"));
                us.setEmail(rs.getString("email"));
                us.setPassword(rs.getString("password"));
            }
        }
         catch(SQLException e){
            e.printStackTrace();
        }
        return us;
    }
    public static void main(String[] args) {
        DataService ds = new DataService();
        List<Productx> ps = ds.getThreeTypeProduct("popular");
        
        User u = new User();
        u.setName("Kritesh t2");
        
        ds.insertUser(u);
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
insert into userinfo(name,email,address,dob,wishlist,cart,mostvisited,password,number,maxspent,primecount) values(?,?,?,?,?,?,?,?,?,?,?)

insert into userinfo(name,email,password) values("kritesh","kritesh@email.com","pass1234");

drop table userinfo;
create table userinfo
(
id int(5) primary key auto_increment,
name varchar(50),
email varchar(50),
address varchar(50),
dob varchar(20),
wishlist varchar(255),
cart varchar(255),
mostvisited varchar(255),
password varchar(255),
number varchar(255),
maxspent int(10),
primecount int(10)
);

*/