package Jtesting;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class Test1 {
	
	Calculator c=null;
	
	@BeforeClass
	public static void resource()
	{
		System.out.println("created before every test");
		
	}
	
	@Before
	public void create()
	{
		System.out.println("created before every test");
		c=new Calculator();
		
	}

	@Test
	public void testSquare() 
	{
		System.out.println("testing square");
		double res=c.square(5);
		assertEquals(25d,res);
	}
	
	@Test
	public void testCom() 
	{
		System.out.println("testing comparison");
		String res=c.com("sak","sak");
		
		assertNotNull(res);
	}
	
	@After
	public void rem1()
	{
		System.out.println("called after every test");
		c=null;
		
	}
	
	@AfterClass
	public static void rem2()
	{
		System.out.println("called after every test");
		
		
	}

}
