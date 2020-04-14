package com.Exceptions;

public class invalidCredentialException extends Exception{
	
 private String msg;

public invalidCredentialException(String msg) {
	super();
	this.msg = msg;
}

@Override
public String toString() {
	return "invalidCredentialException [msg=" + msg + "]";
}
 
 
	

}
