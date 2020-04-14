package com.beans;

abstract public class Car {
	
	protected static int series=0;
	protected int carId;
	protected float price;
	protected String status;
	protected int time;
	protected int distance;
	protected Client c;
	//protected Client c1;
	protected Date d;
	
	public Car(float price, String status, Client c,Date d) {
		super();
		this.carId = series++;
		this.price = price;
		this.status = status;
		this.c = c;
		this.d=d;
	}

	public static int getSeries() {
		return series;
	}

	public abstract String getCategory();
	
	public int getCarId() {
		return carId;
	}



	public void setCarId(int carId) {
		this.carId = carId;
	}



	public float getPrice() {
		return price;
	}



	public void setPrice(float price) {
		this.price = price;
	}


	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public Client getC() {
		return c;
	}



	public void setC(Client c) {
		this.c = c;
	}


	
	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}
	

	public Date getD() {
		return d;
	}

	public void setD(Date d) {
		this.d = d;
	}

	public String toString()
	{
		return "car id:"+carId+" Price:"+price+" status:"+status+" date:"+d+" Client:"+c+"";
	}
	
}
