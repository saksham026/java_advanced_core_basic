package com.beans;

public class MUV extends Car
{
	protected String category;

	public MUV(float price, String status, Client c,Date d) {
		super(price, status, c, d);
		// TODO Auto-generated constructor stub
		this.category="MUV";
	}

	public String getCategory() {
		return category;
	
	}
	
	public String toString()
	{
		return "car id:"+carId+" Price:"+price+" status:"+status+" date:"+d+" Client:"+c+"";
	}
	
	
}