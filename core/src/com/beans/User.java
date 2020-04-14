package com.beans;

public class User {

	private String userName;
	private String password;
	private String securityQn;
	

	public String getSecurityQn() {
		return securityQn;
	}

	public void setSecurityQn(String securityQn) {
		this.securityQn = securityQn;
	}

	public User(String userName,String password,String securityQn)
	{
		this.userName = userName;
		this.password = password;
		this.securityQn = securityQn;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String toString()
	{
	
		return " "+userName;
	}
	
}
