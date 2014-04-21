package com.siteforse.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharactorEncodingFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(config.getInitParameter("encoding"));
		//System.out.println("charset"+config.getInitParameter("encoding")+" "+request.getRemoteAddr());
		chain.doFilter(request, response);
	}
	private FilterConfig config;
	public void init(FilterConfig filterConfig) throws ServletException {
		config = filterConfig;
	}

}
