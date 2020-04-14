package Collections;
import java.lang.reflect.Field;
import java.util.*;

public class cac2
{

int id;
String name;
int age;

public String toString() {
	return "cac2 [id=" + id + ", name=" + name + ", age=" + age + "]";
}


public cac2(int id, String name, int age) {
	super();
	this.id = id;
	this.name = name;
	this.age = age;
}


public int getId() {
	return id;
}


public String getName() {
	return name;
}


public int getAge() {
	return age;
}



	
	public static void main(String[] args) {
ArrayList<cac2> a1=new ArrayList<cac2>();
a1.add(new cac2(101,"jk",12));
a1.add(new cac2(102,"kl",13));
a1.add(new cac2(103,"lm",14));

Collections.sort(a1,new AgeCompare());
Iterator<cac2> i=a1.iterator();
while(i.hasNext())
{
	cac2 c=i.next();
	System.out.println(""+c);
}		
	}


	}
