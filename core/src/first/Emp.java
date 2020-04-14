package first;

import java.io.Serializable;

public class Emp implements Serializable{

	int id;
	transient int sal;
	
	
	
	public Emp(int id, int sal) {
		super();
		this.id = id;
		this.sal = sal;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", sal=" + sal + "]";
	}
	
	
}
