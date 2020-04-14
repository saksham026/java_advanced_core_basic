package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import bean.Employee;

public class EmployeeModel {

	public void saveEmp(Employee e)
	{
		try
		{
			Connection  con=Database.dataConnection();
			String str="insert into employeenew values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(str);
			ps.setInt(1, e.getId());
			ps.setString(2, e.getFname());
			ps.setFloat(3, e.getSalary());
			ps.execute();
		}
		catch(Exception e1)
		{
			System.out.println(e1);
		}
	}

}