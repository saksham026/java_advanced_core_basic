package bean;

import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
public class EmployeeDao {

	private JdbcTemplate jdbcTemplate;  	//jdbc template is class
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	  
	public int saveEmployee(Employee e){  
	    String query="insert into employeenew values("+e.getId()+",'"+e.getName()+"',"+e.getSalary()+")";  
	    return jdbcTemplate.update(query);  	//update function returns integer value
	}  
	public int updateEmployee(Employee e){  
	    String query="update employeenew set name='"+e.getName()+"',salary="+e.getSalary()+" where id="+e.getId()+" ";  
	    return jdbcTemplate.update(query);  
	}  
	public int deleteEmployee(Employee e){  
	    String query="delete from employeenew where id="+e.getId()+" ";  
	    return jdbcTemplate.update(query);  
	}  
}
