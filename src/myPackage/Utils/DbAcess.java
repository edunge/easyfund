package myPackage.Utils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import java.sql.Blob;
import java.sql.Connection;

import myPackage.beans.MatchTable;
import myPackage.beans.PhedUser;
import myPackage.beans.UserAccount;

public class DbAcess {

	public static UserAccount findUser(Connection conn, String username, String password) throws SQLException	{
		String query = "SELECT * FROM user WHERE userName = ? and password = ?;";
		PreparedStatement ps	= conn.prepareStatement(query);
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet	rs	=	ps.executeQuery();
		
		if	(rs.next()) {
			String accountNumber	=	rs.getString("accountNumber");
			//String	gender	=	rs.getString("Gender");
			UserAccount	user	=	new	UserAccount();
			user.setUserName(username);
			user.setPassword(password);
			user.setAccountNumber(accountNumber);
		//	user.setGender(gender);
			return user;
		}
		return null;
	}
	
	public	static	UserAccount findUser(Connection conn, String username) throws ClassNotFoundException, SQLException {
		String	query	=	"SELECT userName, password, firstName, lastName, bankName, accountName, accountNumber, email,phone FROM user WHERE userName = ? ;";
		PreparedStatement ps	=	conn.prepareStatement(query);
		ps.setString(1, username);
		
		ResultSet rs	=	ps.executeQuery();
		
		if	 (rs.next()) {
			//Retrieving user details from the database
			String usernameCaps	=	username.substring(0, 1).toUpperCase() + username.substring(1);
			String password  = rs.getString("password");
			String firstName	=	rs.getString("firstName");
			String lastName	=	rs.getString("lastName");
			String bankName	=	rs.getString("bankName");
			String accountName	=	rs.getString("accountName");
			String accountNumber	=	rs.getString("accountNumber");
			String	email	=	rs.getString("email");
			String	phone	=	rs.getString("phone");
			
			UserAccount	user=	new	UserAccount();
			//Setting retrieved information on user's dashboard
			user.setUserName(usernameCaps);
			user.setPassword(password);
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setBankName(bankName);
			user.setAccountName(accountName);
			user.setAccountNumber(accountNumber);
			user.setEmail(email);
			user.setPhone(phone);
			
			return user;
		}
		return null;
	}
	
	public static void 	 insertNewUserDetails(Connection conn, UserAccount userAccount) throws SQLException {
		String query = "INSERT into user(userName, password, firstName, lastName, bankName, accountName, accountNumber, email, phone) VALUES (?,?,?,?,?,?,?,?,?);";
		PreparedStatement ps	=	conn.prepareStatement(query);
		ps.setString(1, userAccount.getUserName());
		ps.setString(2, userAccount.getPassword());
		ps.setString(3, userAccount.getFirstName());
		ps.setString(4, userAccount.getLastName());
		ps.setString(5, userAccount.getBankName());
		ps.setString(6, userAccount.getAccountName());
		ps.setString(7, userAccount.getAccountNumber());
		ps.setString(8, userAccount.getEmail());
		ps.setString(9, userAccount.getPhone());

		
		//int count =
		ps.executeUpdate();
		//if	(count > 0)	{
			
			//Redirect to success page
			//RequestDispatcher dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/regSuccess.jsp");
			//dispatcher.forward(request, response);
		//}
	}
	
	public static void insertPhedUser_10(Connection conn, PhedUser phedUser_10) throws SQLException	{
		String query =	"INSERT into phedUser_10(firstName, lastName) VALUES (?,?);";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ps.setString(1, phedUser_10.getFirstName());
		ps.setString(2, phedUser_10.getLastName());
		
		ps.executeUpdate();
	}
	
	public static void insertPhedUser_20(Connection conn, PhedUser phedUser_20) throws SQLException {
		String query	=	"INSERT INTO phedUser_20(firstName, lastName) VALUES (?,?)";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ps.setString(1, phedUser_20.getFirstName());
		ps.setString(2, phedUser_20.getLastName());
		
		ps.executeUpdate();
		
	}
	
	public static void insertPhedUser_40(Connection conn, PhedUser phedUser_40) throws SQLException {
		String query	=	"INSERT INTO phedUser_20(firstName, lastName) VALUES (?,?)";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ps.setString(1, phedUser_40.getFirstName());
		ps.setString(2, phedUser_40.getLastName());
		
		ps.executeUpdate();
		
	}
	
	public static void insertPhedUser_50(Connection conn, PhedUser phedUser_50) throws SQLException {
		String query	=	"INSERT INTO phedUser_20(firstName, lastName) VALUES (?,?)";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ps.setString(1, phedUser_50.getFirstName());
		ps.setString(2, phedUser_50.getLastName());
		
		ps.executeUpdate();
		
	}
	
	public static UserAccount recipient_10(Connection conn, UserAccount recipient)	throws SQLException	{
		String query	=	" SELECT user.accountName, user.accountNumber, user.phone,"
				+ "user.bankName FROM user,phedUser_10 WHERE phedUser_10.confirm='Y' AND user.firstName=phedUser_10.firstName;";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		
		ResultSet rs	=	ps.executeQuery();
		if	(rs.next())	{
			String	accountName		=	rs.getString("accountName");
			String	accountNumber	=	rs.getString("accountNumber");
			String	phone	=	rs.getString("phone");
			String	bankName	=	rs.getString("bankName");
			
			recipient.setAccountName(accountName);
			recipient.setAccountNumber(accountNumber);
			recipient.setPhone(phone);
			recipient.setBankName(bankName);
			return recipient;
		}
		return null;
	}
	
	public static UserAccount  recipient_20(Connection conn,  UserAccount recipient)	throws SQLException	{
		String query	=	" SELECT user.accountName, user.accountNumber, user.phone,"
				+ "user.bankName FROM user,phedUser_20 WHERE phedUser_20.confirm='Y' AND user.firstName=phedUser_20.firstName;";
		PreparedStatement	ps	=	conn.prepareStatement(query);
	
		ResultSet rs	=	ps.executeQuery();
		if	(rs.next())	{
			String	accountName		=	rs.getString("accountName");
			String	accountNumber	=	rs.getString("accountNumber");
			String	phone	=	rs.getString("phone");
			String	bankName	=	rs.getString("bankName");
			
			recipient.setAccountName(accountName);
			recipient.setAccountNumber(accountNumber);
			recipient.setPhone(phone);
			recipient.setBankName(bankName);
			return recipient;
		}
		return null;
	}
	
	public static UserAccount recipient_40(Connection conn, UserAccount recipient)	throws SQLException	{
		String query	=	" SELECT user.accountName, user.accountNumber, user.phone,"
				+ "user.bankName FROM user,phedUser_40 WHERE phedUser_40.confirm='Y' AND user.firstName=phedUser_40.firstName;";
		
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ResultSet rs	=	ps.executeQuery();
		if	(rs.next())	{
			String	accountName		=	rs.getString("accountName");
			String	accountNumber	=	rs.getString("accountNumber");
			String	phone	=	rs.getString("phone");
			String	bankName	=	rs.getString("bankName");
			
			recipient.setAccountName(accountName);
			recipient.setAccountNumber(accountNumber);
			recipient.setPhone(phone);
			recipient.setBankName(bankName);
			return recipient;
		}
		return null;
	}
	
	public static UserAccount  recipient_50(Connection conn,  UserAccount recipient)	throws SQLException	{
		String query	=	" SELECT user.accountName, user.accountNumber, user.phone,"
				+ "user.bankName FROM user,phedUser_50 WHERE phedUser_50.confirm='Y' AND user.firstName=phedUser_50.firstName;";
		
		PreparedStatement	ps	=	conn.prepareStatement(query);
		ResultSet rs	=	ps.executeQuery();
		if	(rs.next())	{
			String	accountName		=	rs.getString("accountName");
			String	accountNumber	=	rs.getString("accountNumber");
			String	phone	=	rs.getString("phone");
			String	bankName	=	rs.getString("bankName");
			
			recipient.setAccountName(accountName);
			recipient.setAccountNumber(accountNumber);
			recipient.setPhone(phone);
			recipient.setBankName(bankName);
			return recipient;
		}
		return null;
	}
	
	
	public static List<MatchTable> forRecipient(Connection conn, String recipient) throws SQLException	{
		String	query	=	"SELECT payer, payerPhone, payerEmail, Pop FROM match_table WHERE recipientAccName=?;";
		PreparedStatement	ps	=	conn.prepareStatement(query);
		
		ps.setString(1, recipient);
		
		ResultSet rs	=	ps.executeQuery();
		List	<MatchTable>	 list	=	new	ArrayList<MatchTable>();
		
		while(rs.next())	{
			String	pher	=	rs.getString("payer");
			String	pherPhone	=	rs.getString("payerPhone");
			String	pherEmail	=	rs.getString("payerEmail");

			
			
			
			MatchTable	payerDetails	=	new	MatchTable();
			
			payerDetails.setPayer(pher);  
			payerDetails.setPayerPhone(pherPhone);
			payerDetails.setPayerEmail(pherEmail);
			list.add(payerDetails);
		}
	return  list;
		
	}
	
	public static MatchTable forPayer(Connection conn, String payer) throws SQLException	{
		String query	=	"SELECT recipientAccName, recipientBankName, recipientAccNum, recipientPhone FROM match_table WHERE payer=?;";
		PreparedStatement ps	=	conn.prepareStatement(query);
		

		//UserAccount	user	=	new	UserAccount();
		//String	firstName	=	user.getFirstName();
		//String	lastName	=	user.getLastName();
		
		//payer	=	firstName + lastName;
		ps.setString(1, payer);
		
		ResultSet rs	=	ps.executeQuery();
		
		if(rs.next())	{
			String rAccName	=	rs.getString("recipientAccName");
			String	rBankName	=	rs.getString("recipientBankName");
			String	rAccNumber	=	rs.getString("recipientAccNum");
			String	rPhone	=	rs.getString("recipientPhone");
			
			MatchTable	recipientDetails	=	new MatchTable();
			
			recipientDetails.setRecipientAccName(rAccName);
			recipientDetails.setRecipientBankName(rBankName);
			recipientDetails.setRecipientAccNum(rAccNumber);
			recipientDetails.setRecipientPhone(rPhone);
			
			return recipientDetails;
		}
		return null;
	}
}
