package myPackage.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPackage.Utils.DbAcess;
import myPackage.Utils.SessionAccess;
import myPackage.beans.MatchTable;
import myPackage.beans.PhedUser;
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet(urlPatterns={"/transactions"})
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session =	request.getSession();
		Connection conn		=	SessionAccess.getStoredConnection(request);
		
		MatchTable	recipient	=	null;
		String errorString		=	null;
		
		UserAccount	loggedInUser	=	SessionAccess.getStoredLoggedInUser(session);
		//get user details from the loggedin user data
		String gher 	=	 loggedInUser.getFirstName() +" " + loggedInUser.getLastName();
		
		//Get user name
		String 	username	=	loggedInUser.getUserName();
		try{
			recipient	=	DbAcess.forPayer(conn, gher);
		} catch(SQLException e)	{
			e.printStackTrace();
			errorString	=	e.getMessage();
		}
		
		request.setAttribute("recipient", recipient);
		request.setAttribute("username", username);
		RequestDispatcher	dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/transactionView.jsp");
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
