package onetoone;

import javax.persistence.*;

import org.hibernate.annotations.Entity;

//@NamedQuery(name="ByRollNo",query="from student where id=?")   //this annotation is for retrieving value 
@NamedNativeQuery(name="byname",query="select * from student where sname=?",resultClass=Student.class)   //this annotation is for retrieving value 
@Entity
@Table(name="Stud")
public class Student {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column(name="sname")
private String sname;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}

}
