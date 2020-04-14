package Collections;
import java.util.*;


public class DemoCollection {

	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {

		ArrayList<Comparable> a1= new ArrayList<Comparable>();
		System.out.println("initial size:"+a1.size());
		a1.add("j");
		a1.add("k");
		a1.add(new Integer(10));
		System.out.println("initial size:"+a1.size());
		System.out.println("initial size:"+a1);


	}

}
