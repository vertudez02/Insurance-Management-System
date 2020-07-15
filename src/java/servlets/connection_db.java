
package servlets;



import java.sql.*;

public class connection_db {
    
    static Connection connect=null;
    
    
    public static Connection Get_Connect(){
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
        }
        catch(ClassNotFoundException | SQLException e)
        {
        }
        
        return connect;
        
    }
}