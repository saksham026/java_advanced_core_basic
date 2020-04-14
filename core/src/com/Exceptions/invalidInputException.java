package com.Exceptions;

public class invalidInputException extends Exception{

	 private String msg;

	 public invalidInputException(String msg) {
	 	super();
	 	this.msg = msg;
	 }

	 @Override
	 public String toString() {
	 	return "invalidCredentialException [msg=" + msg + "]";
	 }
	  
	  
	 	
	
	
}
