package onetoone;

import javax.persistence.*;
import javax.persistence.CascadeType;
import org.hibernate.annotations.*;
import org.hibernate.annotations.Entity;

@Entity
public class Student_Detail {
	
	@Id 
	@GeneratedValue(generator="newGenerator")
	@GenericGenerator(name="newGenerator",strategy="foreign",parameters= {@Parameter(value="student",name="property")})
	private int id;
	
	@Column(name="smobile")
	private String smobile;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id")
	private Student student;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSmobile() {
		return smobile;
	}
	public void setSmobile(String smobile) {
		this.smobile = smobile;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student st) {
		this.student = st;
	}

}
