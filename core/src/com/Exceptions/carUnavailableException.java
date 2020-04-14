package com.Exceptions;

public class carUnavailableException extends Exception{
	
	private String msg;
	

	@Override
	public String toString() {
		return "carUnavailableException [msg=" + msg + "]";
	}


	public carUnavailableException(String msg) {
		super();
		this.msg = msg;
	}
	

}
