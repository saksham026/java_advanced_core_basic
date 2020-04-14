package first;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

public class file_to_file2 {

	public static void main(String[] args) {

		File f=new File(".//resources//file2.txt");
		int x;
		Reader fis=null;
		Writer fos=null;
		
		try {
			
			f.createNewFile();
			fis=new FileReader(f);
			fos=new FileWriter(".//resources/datawrite2.txt");
			
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
