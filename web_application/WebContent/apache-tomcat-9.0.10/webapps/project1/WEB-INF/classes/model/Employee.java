package model;

public class Employee {      //java beans this is perfect example of encapsulation it maintains control flow between pages of jsp

	private int id;       //getter and setter function are in java beans
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
	
}
//object is superclass of every class
//data access object