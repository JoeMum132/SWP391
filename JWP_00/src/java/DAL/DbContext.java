package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbContext{
    public Connection getConnection() throws SQLException, ClassNotFoundException {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber +";databaseName=" + dbName
                        +";allowMultiQueries=true";
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
	return DriverManager.getConnection(url, userID, password); 
    }
    
    private final String serverName = "localhost";
    private final String dbName = "SWProject";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "Noshitsherlock[1]";
    
    public static void main(String[] args) {
        try {
            Connection connection = new DbContext().getConnection();
            
            if(connection!=null) {
                   System.out.println("Connect successfully to dtb");
            } else {
                System.out.println("Connect failed");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DbContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
