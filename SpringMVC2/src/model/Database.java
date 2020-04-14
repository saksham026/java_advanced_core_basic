package model;

import java.sql.*;

public class Database
{
	static Connection con;
	public static Connection dataConnection()
	{
		try
		{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","root");
System.out.println("Database is connected..");
		}catch(Exception e)
		{
			System.out.println("Database error " +e);
		}
		return con;
	}
}
