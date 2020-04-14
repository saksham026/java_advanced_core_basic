package first;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class fileReadConsole {

	public static void main(String[] args) {

		
		int x;
		BufferedInputStream fis = null;
		BufferedOutputStream fos = null;
		
		try {
			
			
			fis=new BufferedInputStream(System.in);
			//chaining
			//System.out is for printing
			fos=new BufferedOutputStream(new FileOutputStream(".//resources/console1.txt"));
			
			while((x=fis.read())!=-1)
			{
				if(x!=-1)
				{
					fos.write(x);
					fos.flush();
				}
				
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				
				fis.close();
				fos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
