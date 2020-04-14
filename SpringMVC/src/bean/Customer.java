package bean;

import javax.validation.constraints.*;

public class Customer {

	@NotNull(message="is required")
	private String fname;
	@Size(min=1,message="last name is required")
	private String lname;
	
	@Size(max=10,min=10,message="must not be greater than 10")
	private String phone;
	
	@NotNull(message="age must be provided")
	@Min(value=18,message="min. age shiuld be 18")
	private String age;
	
	@Pattern(regexp="^[a-zA-Z0-9]{5}",message="only 5 characer or digits")
	private String postalCode;
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
}
