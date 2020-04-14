package Collections;

public class DemoGeneric<T> {
	T ob;

	public T getOb() {
		return ob;
	}
	public DemoGeneric(T ob) {
		super();
		this.ob = ob;
	}


public static void main(String args[])
{
	DemoGeneric<Integer> g=new DemoGeneric<Integer>(10);
	int v=g.getOb();
	System.out.println(""+v);
	
	
}
}