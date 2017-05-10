package myPackage.Utils;

import java.sql.Connection;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPackage.beans.MatchTable;
import myPackage.beans.UserAccount;



public class SessionAccess {
	
	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
	public static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";

	//store connection in request attribute.
	//information stored exits only during requests.
	public static void storeConnection(ServletRequest request, Connection conn) {
		request.setAttribute(ATT_NAME_CONNECTION, conn);
	}
	
	//Get the connection object that has been stored in one attribute pf the request
	public static Connection getStoredConnection (ServletRequest request) {
		Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
		return conn;
	}
	
	//Store  user info in session
	public static void storeLoggedInUser(HttpSession session, UserAccount loggedInUser) {
		//${loggedInUser} can be accessed on JSP
		session.setAttribute("loggedInUser", loggedInUser);
	}
	
	//Get user information stored
	public static UserAccount getStoredLoggedInUser(HttpSession session) {
		UserAccount	loggedInUser	=	(UserAccount) session.getAttribute("loggedInUser");
		return loggedInUser;
	}
	
	//store info in cookie
	public static void storeuserCookie(HttpServletResponse response, UserAccount user) {
		System.out.println("Store user cookie");
		Cookie		cookieUserName	=	new	Cookie(ATT_NAME_USER_NAME, user.getUserName());
		
		//store cookie only for 1day (24hrs to secs)
		cookieUserName.setMaxAge(24 * 60 * 60);
		response.addCookie(cookieUserName);
	}
	
	//get store cookie information
	public static String getUserNameInCookie(HttpServletRequest request) {
		Cookie [] cookies	=	request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}
	
	//Delete cookie
	public static void deleteUserCookie (HttpServletResponse response) {
		Cookie cookieUserName	=	new Cookie(ATT_NAME_USER_NAME, null);
		// 0 secs (expires immediately)
		cookieUserName.setMaxAge(0);
		response.addCookie(cookieUserName);
	}
}
