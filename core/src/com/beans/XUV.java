package com.beans;

public class XUV extends Car
{
	protected String category;

	public XUV(float price, String status, Client c,Date d) {
		super(price, status, c, d);
		// TODO Auto-generated constructor stub
		this.category="XUV";
	}

	public String getCategory() {
		return category;
	}

	public String toString()
	{
		return "car id:"+carId+" Price:"+price+" status:"+status+" date:"+d+" Client:"+c+"";
	}
	
}
