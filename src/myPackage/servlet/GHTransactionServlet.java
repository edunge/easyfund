package myPackage.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

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
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class GHTransaction
 */
@WebServlet(urlPatterns={"/ghTransactions"})
public class GHTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GHTransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session	=	request.getSession();
		Connection conn	=	SessionAccess.getStoredConnection(request);

		String errorString	=	null;
		
		List <MatchTable> matchTableList	=	null;
		
		//MatchTable Payer	=	new	MatchTable(payer, payerPhone, payerEmail);
		//Get loggedInUser Details to retrieve user account name for query to match tab;e database
		UserAccount	loggedInUser	=	SessionAccess.getStoredLoggedInUser(session);
		String	recipientAccName	=	loggedInUser.getAccountName();
		try{
			 matchTableList	=	DbAcess.forRecipient(conn, recipientAccName);
		} catch (SQLException e)	{
			e.printStackTrace();
			errorString	=	e.getMessage();
		}
		request.setAttribute("user", loggedInUser.getUserName());
		request.setAttribute("payer", matchTableList);
		RequestDispatcher dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/ghTransactionView.jsp");
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
