package myPackage.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import myPackage.Utils.DbAcess;
import myPackage.Utils.SessionAccess;
import myPackage.beans.UserAccount;

@WebFilter (filterName = "cookieFilter", urlPatterns = {"/*"})
public class CookieFilter implements Filter {

	public CookieFilter() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req	=	(HttpServletRequest) request;
		HttpSession session	=	req.getSession();
		
		UserAccount userInSession	=	SessionAccess.getStoredLoggedInUser(session);
		
		if (userInSession	!=	null) {
			session.setAttribute("COOKIE_CHECKED", "CHECKED");
			chain.doFilter(request, response);
			return;
		}
		
		//connection created in JDBCFilter
		Connection conn	=	SessionAccess.getStoredConnection(request);
		
		//flag check cookie
		String checked	=	(String)session.getAttribute("COOKIE_CHECKE");
		if (checked == null && conn	!= null) {
			String userName	=	SessionAccess.getUserNameInCookie(req);
			try{
				UserAccount user = DbAcess.findUser(conn, userName);
				SessionAccess.storeLoggedInUser(session, user);
			} catch (SQLException e){
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			//Mark checked
			session.setAttribute("COOKIE_CHECKED", "CHECKED");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
