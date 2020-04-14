package com.beans;

public class Transaction {

	String t_id;
	String t_type;
	Date t_date;
	
	public Transaction(String t_id,String t_type,Date t_date)
	{
		this.t_id=t_id;
		this.t_type=t_type;
		this.t_date=t_date;
		
	}
	
	
	public String getT_id() {
		return t_id;
	}



	public void setT_id(String t_id) {
		this.t_id = t_id;
	}



	public String getT_type() {
		return t_type;
	}



	public void setT_type(String t_type) {
		this.t_type = t_type;
	}



	public Date getT_date() {
		return t_date;
	}



	public void setT_date(Date t_date) {
		this.t_date = t_date;
	}



	public String toString()
	{
		return "last transaction ("+t_id+") is "+"type:"+t_type+" on "+t_date;
	}
	
}
