package first;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public class FileObject {

	public static void main(String[] args) {

		FileOutputStream f = null;
		FileInputStream f1 = null;
		try {
			f1 = new FileInputStream(".//resources//file1.txt");
			f = new FileOutputStream(".//resources//file1.txt");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int x;
		try {
			ObjectOutputStream o =new ObjectOutputStream(f);
			o.writeObject(new Emp(1,2));
			
			ObjectInputStream or1=new ObjectInputStream(f1);
			Emp e;
			try {
				e = (Emp) or1.readObject();
				System.out.println(e);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
