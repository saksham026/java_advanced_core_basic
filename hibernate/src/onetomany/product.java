package onetomany;
import javax.persistence.*;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Cache(usage=CacheConcurrencyStrategy.READ_ONLY)
public class product {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	
	@Column(name="pname")
	private String pname;
	
	@Column(name="pdesc")
	private String pdesc;
	
	@Column(name="price")
	private float price;
	
	//@ManyToOne	//for fetchtype as eager
	@ManyToOne(fetch=FetchType.LAZY)	//fetch type as lazy i.e. not showing dependency values 
	
	@JoinColumn(name="cid")
	private category category;
	
	public product()   //for retreiving data
	{
		
	}
	
	public product(String pname,String pdesc,float price,category category)
	{
		
		super();
		this.pname=pname;
		this.pdesc=pdesc;
		this.price=price;
		this.category=category;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public category getCategory() {
		return category;
	}

	public void setCategory(category category) {
		this.category = category;
	}
	

	
}

