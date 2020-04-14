package model;

import java.sql.*;
public class Database
{
static Connection con;
public static Connection dataConnection()
{
	try             //com is built-in package and not my com package
	{
		Class.forName("com.mysql.jdbc.Driver");     //3306 is port no of mysql
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","saksham026");
		System.out.println("datbase connected...");
	}catch(Exception e)              //online is name of my schema database
	{
		System.out.println("database not connected");	
	}
	return con;
}
	
}
