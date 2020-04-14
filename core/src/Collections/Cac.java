package Collections;
import java.util.*;

public class Cac implements Comparable<Cac>
{
int id;
String name;
int age;

public String toString() {
	return "CaC [id=" + id + ", name=" + name + ", age=" + age + "]";
}


public Cac(int id, String name, int age) {
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


public int compareTo(Cac obj)
{
	Cac st=obj;
	if(age==obj.age)
		return 0;
	else if(age>obj.age)
	    return 1;
	else
		return -1;
}
	
	
	public static void main(String[] args) {
ArrayList<Cac> a1=new ArrayList<Cac>();
a1.add(new Cac(101,"jk",12));
a1.add(new Cac(102,"kl",13));
a1.add(new Cac(103,"lm",14));


Collections.sort(a1);
Iterator<Cac> i=a1.iterator();
while(i.hasNext())
{
	Cac c=i.next();
	System.out.println(""+c);
}
		
		
		
	}

}
