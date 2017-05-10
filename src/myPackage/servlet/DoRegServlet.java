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

import myPackage.Utils.DbAcess;
import myPackage.Utils.SessionAccess;
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class DoRegServlet
 */
@WebServlet(urlPatterns={"/doReg"})
public class DoRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoRegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection conn	=	SessionAccess.getStoredConnection(request);
		
		String firstName	=	(String) request.getParameter("firstName");
		String lastName	=	(String) request.getParameter("lastName");
		String bankName	=	(String) request.getParameter("bankName");
		String accountName	=	(String) request.getParameter("accountName");
		String accountNumber	=	(String) request.getParameter("accountNumber");
		String email	=	(String) request.getParameter("email");
		String phone	=	(String) request.getParameter("phone");
		String userName	=	(String) request.getParameter("userName");
		String password	=	(String) request.getParameter("password");
		String confirmPassword	=	(String) request.getParameter("confirmPassword");
		
		//int phone	=	Integer.parseInt(phoneStr);
		
		UserAccount	newUser	=	new	UserAccount(userName, password, firstName,lastName, bankName, accountName, accountNumber, email, phone);
		String errorString	=	null;
		String successString	=	null;
		
		if( confirmPassword.equals(password)) {
			errorString	=	null;
		} else{
			errorString	=	"Passwords do not match";
		}
		if(errorString == null) {
			try{
				//Insert user details
				DbAcess.insertNewUserDetails(conn, newUser);
				//redirect to sucess page
				successString	=	"Account successfully created! Login to start earning";
				request.setAttribute("successString", successString);
				RequestDispatcher  dispatcher	= request.getServletContext().getRequestDispatcher("/WEB-INF/views/loginView.jsp");
				dispatcher.forward(request, response);
				//response.sendRedirect("/WEB-INF/views/regSuccess.jsp");
			}catch(SQLException e){
				e.printStackTrace();
				errorString	=	"Username already exists";
			}
		}else{
			//Store information to request attribute, before forwarding to views
			request.setAttribute("errorString", errorString);
			request.setAttribute("newUser", newUser);
			
			//redirect to views with errors
			RequestDispatcher dispatcher	=	request.getServletContext().getRequestDispatcher("/WEB-INF/views/regFormView.jsp");
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
