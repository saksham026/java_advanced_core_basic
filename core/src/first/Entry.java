package first;

//program of inheritance(single)
//super class
class Emp1
{
	//auto generating employee number
	static int series;
	protected int no;
	protected String name;
	protected float sal;
	
	//static block is executed first (if main in same class)
	static
	{
		series=0;
	}
	
	public Emp1(String name,float sal)
	{
		this.no=++series;
		this.name=name;
		this.sal=sal;
	}
	
	public float calSal()
	{
		return (sal*12);
	}
	
	public float taxCal()
	{
		float tax=0;
		sal=calSal();
		if(sal>1000000)
		{
			tax=(float) (0.2*sal);
		}
		else if(sal>500000)
		{
			tax=(float) (0.1*sal);
		}
		return tax;
	}
}

//sub class
class Manager extends Emp1
{
	protected int inc;
	
	public Manager(String name,float sal,int inc)
	{
		//overriding implicit super() call 
		super(name,sal);
		this.inc=inc;
	}
	
	public float calSal()
	{
		return ((sal+inc)*12);
	}
	
	public float taxCal()
	{
		float tax=0;
		
		float salM=calSal();
		if(salM>100000)
		{
			tax=(float) (0.2*salM);
		}
		else if(salM>500000)
		{
			tax=(float) (0.1*salM);
		}
		return tax;
	}
}

//sub class
class AreaSalesManager extends Emp1
{

	protected int petrolAl;
	protected int foodAl;
	protected int mobileAl;

	public AreaSalesManager(String name,float sal,int petrolAl,int foodAl,int mobileAl)
	{
		super(name,sal);
		this.petrolAl=petrolAl;
		this.foodAl=foodAl;
		this.mobileAl=mobileAl;;
	}
	
	public float calSal()
	{
		return ((sal+petrolAl+foodAl+mobileAl)*12);
	}
	
	public float taxCal()
	{
		float tax=0;
		float salAM=calSal();
		if(salAM>100000)
		{
			tax=(float) (0.2*salAM);
		}
		else if(salAM>500000)
		{
			tax=(float) (0.1*salAM);
		}
		return tax;
	}
}

public class Entry
{

	//return dynamic type
	public static Emp1 getMethod(String designation)
	{
		Emp1 e=null;
		if(designation.equals("employee"))
		{
			e=new Emp1("saksham",100000);
		}
		else if(designation.equals("manager"))
		{
			e=new Manager("saksham",200000,1000);
		}
		else if(designation.equals("area sales manager"))
		{
			e=new AreaSalesManager("saksham",100000,1000,2000,1000);
		}
		
		return e; 
	}
	
	//deciding at run time according to designation
	public static void main(String args[])
	{
		
		Emp1 e=getMethod("employee");
		System.out.println("Employee id is "+e.no+" annual salary is "+e.calSal());
		System.out.println("your annual tax is "+e.taxCal());
		
		e=getMethod("manager");
		System.out.println("Employee(manager) id is "+e.no+" annual salary is "+e.calSal());
		System.out.println("your annual tax is "+e.taxCal());
		
		e=getMethod("area sales manager");
		System.out.println("Employee(area sales manager) id is "+e.no+" annual salary is "+e.calSal());
		System.out.println("your annual tax is "+e.taxCal());
				
	}
	
}
