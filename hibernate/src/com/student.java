package com;

import java.util.Date;

import javax.persistence.*;

@Entity
//@Table(name="sakshamnew")

public class student {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int rollno;
	
	@Column(name="sname")
	private String sname;
	
	@Temporal(TemporalType.DATE)
	private Date dob;

	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
	

}
