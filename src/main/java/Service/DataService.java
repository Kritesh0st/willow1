package Service;

import DBConnection.DBConnection;
import Model.Product;
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
                productlist.add(pl);
            }
//            HttpSession sess = request.getSession();
//            sess.setAttribute("productlist",productlist);
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return productlist;
    }
    public static void main(String[] args) {
        DataService ds = new DataService();
        List<Product> ps = ds.featureProduct();
        Product p = new Product();
        p.setName("Kritesh");
        System.out.println("name: "+p.getName());
        System.out.println(ps.get(0).getName());
    }
}
