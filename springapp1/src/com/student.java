package com;

//using contructor
public class student {

	int rollNo;
	String name;
	
	public student()
	{
		
	}
	public student(int rollNo,String name)
	{
		this.rollNo=rollNo;
		this.name=name;
		
	}
	
	public void showDetails()
	{
		System.out.println("id is "+rollNo);
		System.out.println("name is "+name);
		
	}
	
}
//javabeans do not make default constructor while java makes default constructor always
//if we make default constructor in beans then it will be converted to(behaved as) java file
//therefore do not make getter and setter and constructor in same class