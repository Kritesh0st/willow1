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
    public List<Product> getThreeTypeProduct(String typequery){
        typequery = "feature";
        List<Product> productlist = new ArrayList<>();
        String query = "select*from productinfo";
        String queryForFeature = "select*from productinfo where focused1 = true";
        String queryForPopular = "select*from productinfo where focused2 = true";
        String queryForNewproduct = "select*from productinfo where focused3 = true";
        
        if(typequery.equals("feature")){query = queryForFeature;}
        else if(typequery.equals("popular")){query = queryForPopular;}
        else if(typequery.equals("newproduct")){query = queryForNewproduct;}
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try{
            int count = 1;
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product pr = new Product();
                pr = new Product();
                pr.setId(rs.getInt("id"));
                pr.setName(rs.getString("name"));
                pr.setDescription(rs.getString("description"));
                pr.setImage(rs.getString("image"));
                pr.setBrand(rs.getString("brand"));
                pr.setCategory(rs.getString("category"));
                pr.setPrice(rs.getInt("price"));
                pr.setDiscount(rs.getInt("discount"));
                pr.setDiscountedprice((int) new index().getPercentOf(pr.getDiscount(),pr.getPrice()));
                pr.setTags(rs.getString("tags"));
                pr.setReleasedate(rs.getString("releasedate"));
                
                if(count < 6){productlist.add(pr);count++;}
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
    public List<User> getUserList(){
        List<User> userlist = new ArrayList<>();
        
        String query = "select * from userinfo";
        PreparedStatement ps = new DBConnection().getStatement(query);
        
        try{
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                User st = new User();
                st.setId(rs.getInt("id"));
                st.setName(rs.getString("name"));
                st.setEmail(rs.getString("email"));
                st.setAddress(rs.getString("address"));
                st.setWishlist(rs.getString("wishlist"));
                st.setCart(rs.getString("cart"));
                st.setPhnumber(rs.getString("number"));
                userlist.add(st);
            }
        }
         catch(SQLException e){
            e.printStackTrace();
        }
        return userlist;
    }
    public static void main(String[] args) {
        DataService ds = new DataService();
        List<Product> ps = ds.getThreeTypeProduct("popular");
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