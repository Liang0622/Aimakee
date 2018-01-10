package com.vic.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.User;
@WebFilter("/loginUserPages/*")
public class UserEptyServlet implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session=((HttpServletRequest)req).getSession();
		User user=(User) session.getAttribute("user");
		if(user!=null) {
			chain.doFilter(req, resp);
		}else {
			((HttpServletResponse)resp).sendRedirect("/Aimakee/user_login.jsp");
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
