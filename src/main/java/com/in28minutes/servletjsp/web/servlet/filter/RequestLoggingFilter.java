package com.in28minutes.servletjsp.web.servlet.filter;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter(urlPatterns = { "/*" })
public class RequestLoggingFilter implements Filter {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		Enumeration<String> headerNames = req.getHeaderNames();

		while (headerNames.hasMoreElements()) {
			String headerName = headerNames.nextElement();
			System.out.print(headerName);
			String headerValue = req.getHeader(headerName);
			System.out.println(":" + headerValue);
		}

		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
