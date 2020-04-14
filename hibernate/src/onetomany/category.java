package onetomany;
import java.util.*;

import javax.persistence.*;

@Entity

public class category {

	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int cid;
	
	@Column(name="cname")
	private String cname;
	
	//@OneToMany(cascade=CascadeType.ALL,mappedBy="category") 
	@OneToMany(cascade=CascadeType.ALL,mappedBy="category",fetch=FetchType.EAGER)
	private Set<product> product;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Set<product> getProduct() {
		return product;
	}

	public void setProduct(Set<product> product) {
		this.product = product;
	}
	
		
	
}
