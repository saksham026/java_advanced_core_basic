package com.Exceptions;

public class invalidCarException extends Exception{

	private String msg;

	public invalidCarException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "invalidCarException [msg=" + msg + "]";
	}
	
	
}
