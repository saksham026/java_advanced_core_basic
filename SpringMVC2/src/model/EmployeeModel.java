package model;

import bean.Employee;
import java.sql.*;

public class EmployeeModel
{
	public void saveEmp(Employee e)
	{
		try
		{
			Connection con = Database.dataConnection(); 
			String str = "insert into emp values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(str);
			ps.setInt(1,e.getId());
			ps.setString(2,e.getFname());
			ps.setFloat(3,e.getSalary());
			ps.execute();
		}catch(Exception ee)
		{
			System.out.println("Error " +e);
		}
	}
}
