package myPackage.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class mySqlConn {
	
 	public	static Connection getMySQLConnection() 
			throws ClassNotFoundException, SQLException{
		String	hostname	=	"localhost";
		String dbname	=	"edunge";
		String	username	=	"edunge";
		String password	=	"Ihu18om@031988";
		return	getMySQLConnection(hostname, dbname, username, password);
	}
	
	public	static	Connection getMySQLConnection (String hostname, String dbname, String username, String password)
			throws ClassNotFoundException, SQLException	{
		//Declaring class Driver for MySQL DB
		//Not required if user uses Java 5 and above
		Class.forName("com.mysql.jdbc.Driver");
		String connectionURL =	"jdbc:mysql://" + hostname + ":3306/" + dbname;
		Connection conn	=	DriverManager.getConnection(connectionURL, username, password);
		return conn;
	}

	
}