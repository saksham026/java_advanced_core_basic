package annotations;

import java.lang.reflect.Method;

public class CustomClass {

	@TestAnnotation(name="businessMethod",no=0)
	public void aMethod()	//applying custom annotation on a method to provide information about method 
	{
		
	}
	
	
	public static void main(String args[])
	{
		CustomClass c1=new CustomClass();
		c1.aMethod();
		Class c =c1.getClass();
		try {
			@SuppressWarnings("unchecked")
			Method m=c.getMethod("aMethod");
			TestAnnotation a=m.getAnnotation(TestAnnotation.class);
			System.out.println(a.name()+a.no());
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//extracting information about annotation through reflection mechanism
		
	}
}
