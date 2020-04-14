package model;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    

import bean.Employee;    
    
public class EmployeeDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public int save(Employee p){    
    String sql="insert into semployee(eid,ename) values("+p.getId()+",'"+p.getFname()+"')";    
    return template.update(sql);    
}    
public int update(Employee p){    
    String sql="update semployee set ename='"+p.getFname()+"' where id="+p.getId()+"";    
    return template.update(sql);    
}    
public int delete(int id){    
    String sql="delete from semployee where id="+id+"";    
    return template.update(sql);    
}    

}   