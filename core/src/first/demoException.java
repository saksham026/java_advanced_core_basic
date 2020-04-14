package first;

public class demoException {

	public static void getNumber(int a)
	{
		try
		{
		if(a<=0)
		{
			throw new InvalidInputException("invalid input");
		}
		}
		catch(InvalidInputException e)
		{
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try
		{
		int a;
		a=Integer.parseInt(args[0]);
		getNumber(a);
		}
		catch(IndexOutOfBoundsException e)
		{
			e.printStackTrace();
			
		}
		catch(NumberFormatException e)
		{
			e.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			System.out.println("perform resource deallocation");
		}
		
		System.out.println("still continue");

	}

		
}


