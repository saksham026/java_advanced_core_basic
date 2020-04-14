package com.listeners;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class sessionListener implements HttpSessionListener {

 
    public void sessionCreated(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	HttpSession session=se.getSession();
    	session.setMaxInactiveInterval(60);
    	
    	System.out.println("session created");
    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
    	
         // TODO Auto-generated method stub
    	HttpSession session=se.getSession();
    	session.invalidate();
    	System.out.println("session destroyed");
    }
	
}
