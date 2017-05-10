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
import myPackage.beans.PhedUser;
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class DoProvideHelpServlet
 */
@WebServlet(urlPatterns={"/DoPH"})
public class DoProvideHelpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoProvideHelpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session 	=	 request.getSession();
		Connection conn	=	SessionAccess.getStoredConnection(request);
		
		
		
		//Get loggedIn USer info
		UserAccount	loggedInUser	= SessionAccess.getStoredLoggedInUser(session);
		
		//Store session attributes for firstname and lastname for use in jsps and servlets
		request.setAttribute("firstname", loggedInUser.getFirstName());
		request.setAttribute("lastname", loggedInUser.getLastName());
				
		String amount	=	(String)request.getParameter("amount");
		
		String success	=	"You have successfully pledged " +  amount  + ", please click the Transaction > Pay To  board to view recipient.";
		
		
		if (amount.equalsIgnoreCase("Select amount"))	{
			String errorString	=	"Please select a valid amount";
			request.setAttribute("errorString", errorString);
			RequestDispatcher	dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/provideHelpView.jsp");
			dispatcher.forward(request, response);
		}else{
			
			//get userInfo and amount pledged		
			String	firstName	= (String)session.getAttribute("firstname");
			String	lastName	=	(String)session.getAttribute("lastname");

			PhedUser	newPhedUser	=	new	PhedUser(firstName, lastName);
			
			
			//update 10k database when user selects 10k
			if (amount.equals("#10,000"))	{
				try{
					DbAcess.insertPhedUser_10(conn, newPhedUser);
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			//update 20k database when user selects 20k
			if (amount.equals("#20,000"))	{
				try{
					DbAcess.insertPhedUser_20(conn, newPhedUser);
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			//update 40k database when user selects 40k
			if (amount.equals("#40,000"))	{
				try{
					DbAcess.insertPhedUser_40(conn, newPhedUser);
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			//update 50k database when user selects 50k
			if (amount.equals("#50,000"))	{
				try{
					DbAcess.insertPhedUser_50(conn, newPhedUser);
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			//Set Attributes to reflect on dashboard with the phed information displayed
			//This means that some attributes will be requested 
			//However this is still prolly tho.
			
			//request.setAttribute(arg0, arg1);
			//Store amount attribute for specific use in transaction servlet
			session.setAttribute("success", success);
			session.setAttribute("amount", amount);
			RequestDispatcher dispatcher	=	request.getServletContext().getRequestDispatcher("/dashboard");
			dispatcher.forward(request, response);
			}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
