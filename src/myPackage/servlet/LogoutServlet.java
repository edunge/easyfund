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
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet(urlPatterns = {  "/logout" })
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		UserAccount	user	=	new	UserAccount();
		
		//Remove username and Password
		user.removeUserName();
		user.removePassword();
		
		//Delete stored cookie
		SessionAccess.deleteUserCookie(response);
		
		//End Session data
		HttpSession	session	=	request.getSession(false);
		session.removeAttribute("user");
		session.invalidate();
		
		//redirect to login Page
		RequestDispatcher dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/loginView.jsp");
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
