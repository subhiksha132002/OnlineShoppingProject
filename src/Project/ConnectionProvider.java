package Project;
import java.sql.*;
public class ConnectionProvider {
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ecommerce", "postgres", "qwertyuiop" );
			return conn;
		}catch(Exception e) {
			
			System.out.print(e);
			return null;
		}
		}
}
