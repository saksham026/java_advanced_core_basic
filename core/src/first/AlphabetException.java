package first;

public class AlphabetException {
	
	public static void checkType(char a) throws AlphabetExceptions
	{
		if(a=='a'||a=='e'||a=='i'||a=='o'||a=='u')
		{
			throw new AlphabetExceptions("it is vowel");
		}
		else
		{
			throw new AlphabetExceptions("it is consonant");
		}
	}
	
	public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		
		try
		{
		char a;
		a=args[0].charAt(0);
		checkType(a);
		}
		catch(AlphabetExceptions e)
		{
			e.printStackTrace();
		}
		catch(Exception e)
		{	
			e.printStackTrace();
		}
		
	}
}