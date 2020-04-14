package first;

public class onlyOneObject {

	int a;
	static int count=0;
	
	private onlyOneObject(int a)
	{
		if(count==0)
		{
			this.a=a;
			count++;
		}
		else
		{
			System.out.println("not allowed");	
		}
		
		
	}
	
	void display()
	{
		System.out.println(a);
	}
	
public static void main(String args[])
{
	
	onlyOneObject o=new onlyOneObject(2);
	o.display();
	
	onlyOneObject o1=new onlyOneObject(2);
	//o1.display();
}

}
