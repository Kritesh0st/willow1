package Service;

import DBConnection.DBConnection;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;

public class ProductService {

    public void insertUser(Product pr){
        String query = "insert into userinfo(name,email,address,dob,wishlist,cart,mostvisited,password,number,maxspent,primecount) values(?,?,?,?,?,?,?,?,?,?,?)";
        query = "insert into productinfo(name,description,image,brand,category,price,discount,tags,totalcount,releasedate,visibility) values (?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ps.setString(1,pr.getName());
            ps.setString(2,pr.getDescription());
            ps.setString(3,pr.getImage());
            ps.setString(4,pr.getBrand());
            ps.setString(5,pr.getCategory());
            ps.setString(1,pr.getName());
            ps.setString(1,pr.getName());
            ps.setString(1,pr.getName());
            
            
            ps.execute();
        }
        catch(SQLException e){
            e.printStackTrace();
            System.out.println("Insert User Error : "+e);
        }
    }
    public List<Product> getProductList(){
        List<Product> productlist = new ArrayList<>();
        String query = "select * from productinfo";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try{
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product pr = new Product();
                pr.setId(rs.getInt("id"));
                pr.setName(rs.getString("name"));
                pr.setBrand(rs.getString("brand"));
                pr.setPrice(rs.getInt("price"));
                pr.setDiscount(rs.getInt("discount"));
                pr.setTotalcount(rs.getInt("totalcount"));
                pr.setVisibility(rs.getBoolean("visibility"));
                productlist.add(pr);
            }
        }
         catch(SQLException e){
            e.printStackTrace();
             System.out.println("Error: "+e);
        }
        
        return productlist;
    }
    public static void main(String[] args) {
        ProductService ps = new ProductService();
        ps.getProductList();
    }
}
