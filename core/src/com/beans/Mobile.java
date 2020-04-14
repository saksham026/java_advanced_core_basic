package com.beans;

public class Mobile {
	
	private int mid;
	private String modelName;
	private float modelPrice;
	
	public Mobile(int mid,String modelName,float modelPrice)
	{
		this.mid=mid;
		this.modelName=modelName;
		this.modelPrice=modelPrice;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public float getModelPrice() {
		return modelPrice;
	}

	public void setModelPrice(float modelPrice) {
		this.modelPrice = modelPrice;
	}
	
	public String toString()
	{
		return mid+" "+modelName+" "+modelPrice+" ";
	}
	
}
