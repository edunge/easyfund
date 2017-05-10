package myPackage.filter;

import java.io.IOException;
import java.sql.Connection;
import java.util.Collection;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import myPackage.Utils.SessionAccess;
import myPackage.conn.ConnectionUtils;

@WebFilter (filterName = "jdbcFilter", urlPatterns = {"/*"})

public class JDBCFilter implements Filter {

	public JDBCFilter() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}
	
	private  boolean needJDBC(HttpServletRequest request) {
		System.out.println("JDBC Filter");
		
		//servlet url-pattern: /spath/*
		//=>/spath
		String servletPath	=	request.getServletPath();
		String pathInfo	=	request.getPathInfo();
		String urlPattern	=	servletPath;
		if (pathInfo != null) {
			urlPattern	=	servletPath + "/*";
		}
		//Key: servletName
		//Value: ServletRegistration
		Map<String, ? extends ServletRegistration> servletRegistrations	=	request.getServletContext().getServletRegistrations();
		
		//Collection of all servlet in webApp
		Collection<? extends ServletRegistration> values	= servletRegistrations.values();
		for	(ServletRegistration sr : values ) {
			Collection<String> mappings	=	sr.getMappings();
			if (mappings.contains(urlPattern)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
			HttpServletRequest	req	=	(HttpServletRequest) request;
			
			//Only open connection for the special request need
			if (this.needJDBC(req)) {
				System.out.println("Open Connection for: " + req.getServletPath());
				Connection conn	= null;
				try {
					//create connection
					conn	=	ConnectionUtils.getConnection();
					
					//set auto commit to false
					conn.setAutoCommit(false);
					
					//Store connection in attribute of request
					SessionAccess.storeConnection(request, conn);
					
					//Allow request to go forward
					// Go to the next filter target
					chain.doFilter(request, response);
					
					//commit change
					conn.commit();
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						ConnectionUtils.closeQuietly(conn);
					}
				}
			
			//Do not allow any other request
			//No need to open connection
			else {
				//Allow request to proceed
				chain.doFilter(request, response);
			}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
