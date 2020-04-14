package com.beans;

public class Client {
	
	private static int series=0;
	private int cId;
	private String clientName;
		
	public Client(String clientName) {
		super();
		this.cId = series++;
		this.clientName = clientName;
	}


	public int getcId() {
		return cId;
	}


	public void setcId(int cId) {
		this.cId = cId;
	}


	public String getClientName() {
		return clientName;
	}


	public void setClientName(String clientName) {
		this.clientName = clientName;
	}



	public String toString()
	{
		return "id:"+cId+" name:"+clientName;
	}
	
}
