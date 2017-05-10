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
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class DoLoginServlet
 */
@WebServlet(urlPatterns = {"/doLogin"})
public class DoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String userName	=	request.getParameter("userName");
		String password = request.getParameter("password");
		String	rememberMeStr	=	request.getParameter("rememberMe");
		boolean	remember	=	"Y".equals(rememberMeStr);
		
		UserAccount user	=	null;
		boolean hasError	=	false;
		String	errorString	=	null;
		
		if (userName == null || password== null || userName.length() == 0 || password.length() == 0) {
			hasError	=	true;
			errorString	=	"Username or Password required";
		} else {
			Connection conn = SessionAccess.getStoredConnection(request);
			try{
				user = DbAcess.findUser(conn, userName, password);
				if (user == null) {
					hasError	=  true;
					errorString	=	"Username or Password is incorrect";
					}
				} catch (SQLException e) {
					e.printStackTrace();
					hasError	=	true;
					errorString	=	e.getMessage();
			}
		}
		//If username/Password is incorrect forward to /WEB-INF/views/loginView.jsp
		if (hasError) {
			user	=	new	UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			
			//store errors and information in request attribute before forwarding
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			
			//forward to /WEB-INF/views/loginView.jsp
			RequestDispatcher dispatcher	=	this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginView.jsp");
			dispatcher.forward(request, response);
		} 
		else{
			//if no error exists, store informaton in Session and redirect to userInfo page
			HttpSession session 	=	request.getSession();
			SessionAccess.storeuserCookie(response, user);
			
			if (remember) {
				//Remember me, checked???
				SessionAccess.storeuserCookie(response, user);
			}
			else{			
			//Remember me, not checked???
				response.sendRedirect(request.getContextPath() + "/dashboard");
			}
			//redirect to userInfo Page
			response.sendRedirect(request.getContextPath() + "/dashboard");
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
