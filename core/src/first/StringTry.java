package first;

public class StringTry {
	
	public static void main(String args[])
	{
		String s=new String("sa");
		String k="sa";
		String h="sa";
		
		System.out.println(System.identityHashCode(s));
		
		String s1=new String("sa");
		System.out.println(System.identityHashCode(s1));
		
		System.out.println(System.identityHashCode(k));
		
		System.out.println("ss"+System.identityHashCode(h));
			
		StringBuilder a=new StringBuilder("sa");
		System.out.println(a.hashCode());
		
		StringBuilder a1=new StringBuilder("sa");
		System.out.println(a1.hashCode());
		
		System.out.println(a.toString().equals(a1.toString()));
		
		
		
	}

}
