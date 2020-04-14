package com;

public class Employee {

	private int id;
	private String ename;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public void show()
	{
		System.out.println("id "+id);
		System.out.println("name "+ename);
		
	}
}
//when constructor is made do not make getter setter and vice versa
//dependency injection is done by either getter setter or constructor