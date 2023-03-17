package DBConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class DBConnection{
    Connection con = null;
    public DBConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String dbUrl = "jdbc:mysql://localhost:3306/willow";
            String dbName = "root";
            String dbPassword = "";
            con = DriverManager.getConnection(dbUrl, dbName, dbPassword);
            System.out.println("DB connnected");
        }
        catch (SQLException | ClassNotFoundException e){
            System.out.println("ERROR: "+e);
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        DBConnection dbc = new DBConnection();
    }
    public PreparedStatement getStatement(String query){
        PreparedStatement ps = null;
        try{
            ps = con.prepareStatement(query);
        }
        catch (SQLException e){
            System.out.println("ERROR: "+e);
            e.printStackTrace();
        }
        return ps;
    }
}