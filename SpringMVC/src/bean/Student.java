package bean;
import java.util.*;

public class Student 
{
	private String fname;
	private String lname;
	private LinkedHashMap <String,String> countryoption;
	private String country;
//GIVE ITS VALUE BY JAVA
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Student() {
		// TODO Auto-generated constructor stub
		countryoption= new  LinkedHashMap<>();
		countryoption.put("IND", "INDIA");
		countryoption.put("abc", "abc");
		
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public LinkedHashMap<String, String> getCountryoption() {
		return countryoption;
	}

	public void setCountryoption(LinkedHashMap<String, String> countryoption) {
		this.countryoption = countryoption;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	
}
