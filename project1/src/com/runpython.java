package com;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

public class runpython {

	public static void main(String args[])
	{
		String command1 = "python C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64/webcam.py";
		try {
			Process p1 = Runtime.getRuntime().exec(command1);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			System.out.println("value1 is : ");
		}
		String command = "webcam.py";
		try{
			 
			String prg = "import sys\nprint int(sys.argv[1])+int(sys.argv[2])\n";
			//BufferedWriter out = new BufferedWriter(new FileWriter(command));
			//out.write(prg);
			//out.close();
			int number1 = 10;
			int number2 = 32;
			ProcessBuilder pb = new ProcessBuilder("python","C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64/webcam.py");
			Process p = pb.start();
			
			Process p2 = Runtime.getRuntime().exec(command1);
			BufferedReader in = new BufferedReader(new InputStreamReader(p2.getInputStream()));
			String ret = in.readLine();
			System.out.println("value2 is : "+ret);
			}
		catch(Exception e){
			System.out.println("value is : ");
			
		}
	
	System.out.println("cd C:/Program Files (x86)/Microsoft Visual Studio/Shared/Python36_64");
	System.out.println("python webcam.py");
	
}
}
