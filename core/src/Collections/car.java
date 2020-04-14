package Collections;

import java.util.*;
public class car<T,S,W>{
T i;
S st;
W j;

public car(T i, S st,W j) {
this.i=i;
this.st=st;
this.j=j;
	
	}
	

	public String toString() {
		return "car details "+i+" "+st+" "+j;
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		car c1=new car(1,"jk",2);
		car c2=new car(2,"jk",3);
		car c3=new car(3,"jk",4);
		
		ArrayList<car> l1=new ArrayList<car>();
		
		l1.add(c1);
		l1.add(c2);
		l1.add(c3);

		Iterator<car> i=l1.iterator();
		while(i.hasNext())
		{
			car c=i.next();
			System.out.println(""+c);
		}
		car c=l1.get(1);
		//System.out.println(c);
		boolean outcome= l1.remove(c3);
		System.out.println(outcome);
		System.out.println(l1);






	}

}
