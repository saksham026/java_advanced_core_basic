package manytomany;
import java.util.*;

import javax.persistence.*;

import org.hibernate.Session;

@Entity

public class book {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int bid;
	
	@Column(name="bname")
	private String bname;
	
	@Column(name="bdesc")
	private String bdesc;

	@Column(name="price")
	private float price;
	
	@ManyToMany(cascade=CascadeType.ALL,mappedBy="bok")     //parent id
	private Set<author> auth;

	public book()		//query interface is use to retrieve value from databasehibernate does not understand table but only class()
	{
		
		
	}
	public book(String bname, String bdesc, float price, Set<author> auth) {
		super();
		this.bname = bname;
		this.bdesc = bdesc;
		this.price = price;
		this.auth = auth;
	}
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdesc() {
		return bdesc;
	}
	public void setBdesc(String bdesc) {
		this.bdesc = bdesc;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Set<author> getAuth() {
		return auth;
	}
	public void setAuth(Set<author> auth) {
		this.auth = auth;
	}
}
