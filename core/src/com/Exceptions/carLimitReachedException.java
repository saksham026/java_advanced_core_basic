package com.Exceptions;

public class carLimitReachedException extends Exception{
	
	private String msg;

	public carLimitReachedException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "carLimitReachedException [msg=" + msg + "]";
	}
	

}
