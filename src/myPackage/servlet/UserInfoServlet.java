package myPackage.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPackage.Utils.SessionAccess;
import myPackage.beans.MatchTable;
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class UserInfoServlet
 */
@WebServlet(urlPatterns = {"/dashboard"})
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		
		//Check user's login status
		UserAccount loggedInUser	= SessionAccess.getStoredLoggedInUser(session);
		
		
		//Not logged in???
		if (loggedInUser == null) {
			//Redirect to login page
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		
		//store info in request attribute
		request.setAttribute("user", loggedInUser);
		session.setAttribute("firstname", loggedInUser.getFirstName());
		session.setAttribute("lastname", loggedInUser.getLastName());
		//Logged in???, forward to /WEB-INF/views/userInfoView.jsp
		RequestDispatcher dispatcher	=	this.getServletContext().getRequestDispatcher("/WEB-INF/views/userDashboard.jsp");
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
