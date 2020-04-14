package com.beans;

public class Account {

	int accNo;
	String accType;
	float accBal;
	
	public Account(int accNo,String accType,float accBal)
	{
		this.accNo=accNo;
		this.accType=accType;
		this.accBal=accBal;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public String getAccType() {
		return accType;
	}

	public void setAccType(String accType) {
		this.accType = accType;
	}

	public float getAccBal() {
		return accBal;
	}

	public void setAccBal(float accBal) {
		this.accBal = accBal;
	}
	
	public String toString()
	{
		return ""+accNo+" "+accType+" "+accBal;
	}

}
