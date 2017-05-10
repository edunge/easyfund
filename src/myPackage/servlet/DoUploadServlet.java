package myPackage.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import myPackage.Utils.SessionAccess;
import myPackage.beans.UserAccount;

/**
 * Servlet implementation class DoUploadServlet
 */
@WebServlet(urlPatterns={"/DoUpload"})
@MultipartConfig(maxFileSize = 16177215)
public class DoUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUploadServlet() {
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
		
		String errorString = null;
		String successString	=	null;
		//InputStream of up[loaded file
		InputStream inputStream	=	null;
		UserAccount	loggedInUser	= SessionAccess.getStoredLoggedInUser(session);	
		
		String payer	=	loggedInUser.getFirstName()+ " " + loggedInUser.getLastName();
		//obtain filePart of uploaded file
		Part filePart	=	request.getPart("pop");
		if(filePart != null) {
			errorString	=	"Please select a valid file";
		}
		
		//Obtains input stream of the uploaded file
		inputStream	=	filePart.getInputStream();
		
		
		Connection conn	=	SessionAccess.getStoredConnection(request);
		//String query	=	"INSERT INTO match_table(pop) VALUES(?);";
		String query =	"UPDATE match_table set Pop=?  WHERE payer=?;";
		
		try {
			PreparedStatement ps 	=	conn.prepareStatement(query);
			if	(inputStream	!= null) {
				ps.setBlob(1, inputStream);
				ps.setString(2, payer);
			}
			
			
			int row = ps.executeUpdate();
			if(row>0) {
				successString	=	"Pop sucessfully uploaded";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			errorString	=	e.getMessage();
		}
		
		request.setAttribute("errorString", errorString);
		request.setAttribute("successString", successString);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/transactionView.jsp");
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
