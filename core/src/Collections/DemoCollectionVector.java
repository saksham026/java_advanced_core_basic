package Collections;

import java.util.*;

public class DemoCollectionVector {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Vector<Integer> v=new Vector<Integer>(3,2);
System.out.println("initial size:"+v.size());
v.addElement(new Integer(10));
v.addElement(new Integer(20));
v.addElement(new Integer(30));
v.addElement(new Integer(30));

System.out.println(""+v);

System.out.println("size after inserting:"+v.capacity());


	}

}
