package com.Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

public class constraintFilter implements Filter {


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("filters are pre-processing");
		String name=request.getParameter("uname");
		if(name.contains("@"))
		{
		
		}
		else
		{
		name+="@gmail.com";
		}
		
		request.setAttribute("uname",name);
		chain.doFilter(request, response);
		System.out.println("filters are post-processing");
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
