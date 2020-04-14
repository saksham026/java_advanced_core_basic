package first;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.ClassNotFoundException;

public class DemoReflection 
{
    public static void main(String args[])
    {
    	try
    	{
    		Class c=Class.forName("com.beans.User");
    		
    		
    		//for private it is declared fields
    		Field f[]=c.getDeclaredFields();
    		for(int i=0;i<f.length;i++)
    		{
    			System.out.println("Variables are>>"+f[i]);
    		}
    		
    		
    		//these all return names which are public
    		Constructor s[]=c.getConstructors();
    		for(int i=0;i<s.length;i++)
    		{
    			System.out.println("Constructors are>>>"+s[i]);
    		}
    	   Method m[]=c.getMethods();
    	for(int i=0;i<m.length;i++)
		{
			System.out.println("Methods are>>>"+m[i]);
		}
    	}
    	catch(ClassNotFoundException e)
    	{
    		e.printStackTrace();
    	}
    	
    }
}
