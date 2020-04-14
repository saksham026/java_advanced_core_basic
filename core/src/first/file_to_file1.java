package first;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class file_to_file1 {

	public static void main(String[] args) {

		File f=new File(".//resources//file1.txt");
		int x;
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			
			f.createNewFile();
			fis=new FileInputStream(f);
			fos=new FileOutputStream(".//resources/datawrite1.txt");
			
			do
			{
				x=fis.read();
				if(x!=-1)
				{
					fos.write((char)x);
				}
			}while(x!=-1);
			
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
