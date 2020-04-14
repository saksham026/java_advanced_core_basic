package manytomany;

import java.util.*;

import javax.persistence.*;


@Entity
public class author {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "aid")
	private int aid;
	
	@Column(name="aname")
	private String aname;
	
	@ManyToMany
	@JoinColumn(name="bid")        //child id
	private Set<book> bok;

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public Set<book> getBok() {
		return bok;
	}

	public void setBok(Set<book> bok) {
		this.bok = bok;
	}

	
	
}
